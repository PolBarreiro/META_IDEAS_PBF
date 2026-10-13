# AutoPhoto Stories — Google Photos → Instagram

> Estat: proposta / especificació inicial (13-10-2026). Cap automatització de publicació desplegada.

## Objectiu
Crear un assistent que, cada nit (fus horari configurable; inicialment Asia/Bangkok), revisi les fotos del dia anterior a Google Fotos, seleccioni fins a 20 imatges representatives i prepari/publici contingut a Instagram. Ha de funcionar preferentment al núvol, sense PC encès, i acabar disposant d'una app Android publicable a Google Play.

## Principis
- Reutilitzar eines existents abans de programar components nous.
- Prioritzar l'experiència visual de Google Fotos: records, collages, animacions i creacions suggerides. Investigar si es poden detectar i **desar** automàticament; no assumir que totes les creacions són accessibles o exportables.
- Selecció narrativa, no només qualitat: algunes fotos amb Pol, altres amb amics/persones, paisatges, activitats, detalls i creacions; evitar 20 selfies, duplicats, desenfocades, captures, documents i contingut sensible.
- Les 20 són un màxim orientatiu: publicar menys si no hi ha prou bones candidates.
- No barrejar biblioteques d'altres persones. No publicar imatges íntimes, privades o de tercers en situacions delicades.
- Primera etapa amb revisió i aprovació de la selecció; activació de publicació sense aprovació només després de proves i consentiment explícit.

## Flux previst
1. Navegador remot autenticat per l'usuari a Google Fotos; filtrar dia anterior.
2. Identificar originals i, quan sigui viable, records/collages/animacions disponibles; desar/exportar còpies sense modificar originals.
3. Filtre local econòmic: resolució, borrositat, similitud, duplicats.
4. IA multimodal sobre les candidates restants: qualitat estètica, presència de Pol (amb configuració/consentiment), varietat i història del dia.
5. Presentar una previsualització amb 20 o menys seleccionades i permetre corregir-la.
6. Preparar carrusels o múltiples publicacions: respectar els límits reals de fotos/vídeos per publicació d'Instagram, a verificar abans d'implementar.
7. Publicar a Instagram via navegador si és viable i conforme a les condicions del servei; avaluar API oficial com a alternativa més robusta.
8. Registrar resultats i errors sense desar contrasenyes, cookies o fotos al repositori.

## Bloquejos i seguretat
- No esquivar CAPTCHA, verificacions ni controls anti-bot; pausar i sol·licitar intervenció.
- Prioritzar notificacions a l'app ChatGPT quan la plataforma ho permeti. No assumir que un procés extern pot generar notificacions ChatGPT arbitràries; investigar un canal suportat i, si no existeix, proposar una alternativa abans de desplegar.
- Guardar sessions i credencials en un gestor de secrets, amb permisos mínims; esborrar còpies temporals.
- No pagar serveis ni crear recursos cloud amb cost sense autorització.
- Gestionar canvis d'interfície i errors amb reintents limitats, registres i estat visible.

## Arquitectura candidata (subjecta a prova)
- Automatització del navegador: Playwright, en entorn cloud segur.
- Filtrat d'imatges: eines locals de qualitat/deduplicació.
- Rànquing narratiu: model multimodal substituïble, amb pressupost per execució.
- Orquestració: planificador diari + cua de treballs + base de dades mínima.
- App Android futura: configuració, selecció, aprovacions, historial i diagnòstic.
- Explorar Circleboom, eines de selecció i projectes Playwright abans de reimplementar funcions.

## Fases
0. Validar accessos, capacitats reals de Google Fotos i Instagram, límits, costos i requisits de publicació.
1. Prototip **sense publicació**: llistar fotos i creacions del dia anterior i generar un informe.
2. Selecció de fins a 20 fotos amb diversitat i previsualització.
3. Prova de publicació controlada, només amb aprovació.
4. Execució nocturna robusta, recuperació d'errors i notificacions.
5. App Android, proves de privadesa i requisits Google Play; publicació després d'aprovació.

## Política de consum compartit
- El percentatge disponible de ChatGPT/Work/Codex **no es pot mesurar ni imposar aquí** mitjançant l'API pública de costos d'OpenAI.
- L'API de consum/costos d'OpenAI serveix per a **consum de l'API**, no per demostrar el saldo global de crèdits de la subscripció.
- Sense telemetria fiable i límit aplicable: **no fer desenvolupament sostingut automàtic ni executar serveis de pagament**.
- Seguiment diari de baix cost: revisar estat i proposar **un sol pas petit i revisable**, sense commits automàtics ni crides a models de pagament.
- Si es disposa en el futur d'un mesurador fiable i d'un límit tècnic, definir pressupost global compartit entre projectes abans d'habilitar execució autònoma.

## Proper pas
Investigar i documentar quines creacions de Google Fotos es poden desar/exportar realment des del navegador i quins límits té la publicació web d'Instagram. Fer-ho amb una prova manual petita abans de construir infraestructura.

## Estat
- [x] README inicial
- [ ] Viabilitat Google Fotos
- [ ] Viabilitat Instagram
- [ ] Prototip
- [ ] Selector
- [ ] Publicació
- [ ] App Android / Play Store
