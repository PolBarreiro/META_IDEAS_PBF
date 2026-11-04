# Viabilitat oficial — AutoPhoto Stories

Data de revisió: 14-10-2026. Abast: documentació oficial i col·leccions oficials; cap connector d'escriptura, prova amb dades personals, servei de pagament o desplegament.

## Conclusió

El producte és viable com a flux **assistit i revisable**, però no com a selecció cloud completament autònoma de tota la biblioteca de Google Fotos:

- Google Photos Picker API exigeix que l'usuari triï explícitament el contingut.
- Google Photos Library API només accedeix i gestiona contingut creat per la mateixa aplicació.
- No s'ha trobat una API oficial que permeti enumerar automàticament tota la biblioteca personal ni recuperar de manera general records, collages o animacions creats per Google Fotos.
- La publicació API d'Instagram requereix un compte professional i permisos específics; no s'ha verificat encara el tipus de compte ni l'aprovació de l'app.
- L'Android Photo Picker és la via reutilitzable i de menor privilegi per seleccionar fotos locals o d'un proveïdor cloud compatible.

## Matriu

| Capacitat | Via oficial | Viabilitat | Permís / intervenció | Límit clau | Alternativa segura |
|---|---|---|---|---|---|
| Seleccionar fotos existents de Google Fotos | Google Photos Picker API | Sí, assistida | OAuth + selecció explícita en cada sessió | No dona accés autònom a tota la biblioteca | Demanar una selecció periòdica curta |
| Enumerar i puntuar tota la biblioteca | Google Photos APIs | No amb les APIs documentades | — | Picker és controlat per l'usuari; Library API només veu contingut de l'app | Android Photo Picker o carpeta exportada voluntàriament |
| Accedir a records, animacions i collages de Google | Cap endpoint oficial identificat | No verificat | — | No assumir que són consultables com a “creacions” | Tractar-los com a fitxers normals només si l'usuari els selecciona |
| Pujar resultats a Google Fotos | Library API | Sí | OAuth | Només contingut creat per l'app | Desar localment i oferir compartir |
| Selecció Android amb mínim privilegi | Android Photo Picker | Sí | Accés només als elements seleccionats | Flux interactiu; grants persistents limitats | `ACTION_OPEN_DOCUMENT` en dispositius antics |
| Publicar imatge, carrusel o Reel | Instagram API | Condicional | Compte professional + permís de publicació | No funciona amb comptes personals; tokens i revisió de l'app | Generar paquet i obrir revisió/compartició manual |
| Publicar Stories | Instagram API | Condicional més restrictiva | Compte professional; segons la via, Business | Verificar compatibilitat exacta abans de dissenyar | Exportar Story i publicar manualment |
| Programació i deduplicació | Backend/local scheduler | Sí, després dels connectors | Estat privat i aprovació prèvia | No avançar estat si la publicació falla | Cua local revisable |

## Arquitectura recomanada ara

1. **Android Photo Picker / Google Photos Picker** per obtenir consentiment explícit.
2. Processament local amb metadades mínimes i, inicialment, dades sintètiques.
3. Generador de proposta narrativa, mai publicació directa per defecte.
4. Pantalla de revisió humana.
5. Adaptador Instagram només després de verificar compte professional, permisos i límits.
6. Estat privat local per deduplicació; cap foto, token o identificador al repositori.

## Cost i quotes

No s'ha executat cap crida ni contractat cap servei. Les fonts exigeixen revisar polítiques i quotes del projecte, però aquesta revisió no demostra cost zero ni permet imposar el percentatge global de consum de ChatGPT/Codex. Per tant, el següent treball continua limitat a documentació i prototips locals petits.

## Fonts oficials

- [Google Photos APIs overview](https://developers.google.com/photos/overview/about)
- [Google Photos Picker API guide](https://developers.google.com/photos/picker/guides/get-started-picker)
- [Google Photos Library API guide](https://developers.google.com/photos/library/guides/get-started-library)
- [Android Photo Picker](https://developer.android.com/training/data-storage/shared/photo-picker)
- [Instagram Platform resources — Meta](https://developers.meta.com/resources/)
- [Instagram API official Meta collection](https://www.postman.com/meta/instagram/documentation/6yqw8pt/instagram-api)

## Decisió provisional

Construir primer un flux assistit, local i revisable. No prometre selecció autònoma completa de Google Fotos ni publicació automàtica fins que els permisos reals i el tipus de compte d'Instagram estiguin verificats.
