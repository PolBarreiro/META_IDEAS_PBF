# Arquitectura — AutoPhoto Stories

## Abast

Arquitectura del MVP Android local-first definit a [PRODUCT.md](PRODUCT.md). No inclou backend cloud, publicació automàtica, reconeixement de persones ni serveis de pagament.

## Components

| Component | Responsabilitat | Dades | Confiança |
|---|---|---|---|
| Selector oficial | Android Photo Picker o Google Photos Picker | URI/mitjà seleccionat explícitament | Extern, mínim privilegi |
| Importador local | Copiar o llegir temporalment els elements autoritzats | Bytes, metadades bàsiques | Local |
| Analitzador | Nitidesa, llum, similitud, orientació i temps | Característiques derivades | Local, determinista al MVP |
| Compositor narratiu | Proposar ordre i varietat | Identificadors locals i puntuacions | Local |
| Editor de revisió | Excloure, substituir, moure i editar text | Esborrany de la història | Local, control humà |
| Exportador | Produir imatges/vídeo i text | Fitxers finals | Local |
| Full de compartició | Entregar l'exportació a una app escollida | Fitxers exportats | Extern, iniciat per l'usuari |
| Estat privat | Deduplicació i recuperació | Hashes, estat d'esborrany, timestamps | Local, no versionat |

## Flux de dades

1. L'usuari obre una sessió de creació.
2. El selector oficial retorna només els elements triats.
3. L'importador valida tipus, mida i disponibilitat.
4. L'analitzador calcula senyals locals; no envia fotos a xarxa.
5. El compositor crea una proposta explicable.
6. L'editor exigeix revisió humana.
7. L'exportador escriu a un directori controlat per l'app.
8. El full de compartició s'obre només per acció de l'usuari.
9. L'estat privat marca exportació; mai assumeix publicació confirmada.

## Model de dades mínim

### `MediaCandidate`

- `localId`: identificador aleatori intern
- `sourceUri`: referència temporal o persistent, mai al repositori
- `capturedAt`: opcional
- `width`, `height`, `mediaType`
- `qualitySignals`: valors locals normalitzats
- `contentHash`: només per deduplicació local

### `StoryDraft`

- `draftId`
- `format`: story, carrusel o reel
- llista ordenada de `localId`
- text editable
- estat: `selected | proposed | reviewed | exported`

No existeix l'estat `published` al MVP perquè el sistema no verifica una publicació social.

## Fronteres de confiança

### Repositori públic

Pot contenir arquitectura, esquemes, dades sintètiques i proves. No pot contenir fotos, URIs, noms, textos personals, tokens ni hashes reals.

### Dispositiu local

Conté fotos seleccionades, esborranys i estat de deduplicació. S'ha de poder esborrar des de l'app.

### Selectors i apps externes

Són dependències no controlades. Una URI pot caducar o perdre permís; l'app ho tracta com a error recuperable.

### Futur connector Instagram

Queda darrere d'una interfície separada i desactivada. Només es podrà implementar després de verificar compte professional, permisos, polítiques i confirmació d'enviament.

## Interfaces internes

- `MediaSelector.select(): SelectedMedia[]`
- `MediaAnalyzer.analyze(media): Signals`
- `StoryComposer.propose(candidates, format): StoryDraft`
- `StoryEditor.review(draft): StoryDraft`
- `StoryExporter.export(draft): ExportResult`

Les interfícies permeten substituir el selector o l'analitzador sense canviar l'experiència ni compartir dades amb un backend.

## Fallades

- URI caducada: demanar reselecció, sense ampliar permisos.
- Mitjà invàlid o massa gran: excloure i explicar.
- Processament interromput: conservar l'esborrany, no marcar exportat.
- Exportació parcial: netejar fitxers incomplets.
- Compartició cancel·lada: conservar l'exportació, no afirmar publicació.
- Sense xarxa: el MVP continua funcionant amb contingut local seleccionat.

## Seguretat i privacitat

- Sense permís global de galeria quan el picker oficial sigui disponible.
- Sense telemetria de fotos al MVP.
- Sense reconeixement facial o inferència d'identitat.
- Processament en memòria o fitxers privats de l'app.
- Noms de fitxer generats; no exposar metadades personals a l'exportació sense revisió.
- Esborrat de temporals després d'exportar o cancel·lar.

## Prova arquitectònica següent

Preparar dades sintètiques i contractes Kotlin purs per a `MediaCandidate` i `StoryDraft`, sense projecte Android ni dependències, només després de completar automatització, decisions i privacitat.
