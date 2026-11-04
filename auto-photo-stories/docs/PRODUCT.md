# Producte — AutoPhoto Stories

## Visió

Ajudar una persona que viatja o viu moments especials a convertir una selecció consentida de fotos en una història visual curta, coherent i fàcil de compartir, sense barrejar biblioteques ni publicar res sense revisió.

## Problema

Seleccionar manualment les millors fotos, donar-los ordre narratiu, preparar formats socials i evitar repeticions requereix temps. Les APIs oficials no permeten que una app examini autònomament tota la biblioteca personal de Google Fotos, de manera que el producte ha de començar amb selecció explícita i control humà.

## MVP assistit

1. L'usuari inicia una història.
2. Selecciona 10–50 fotos o vídeos amb Android Photo Picker o Google Photos Picker.
3. L'app treballa només amb els elements seleccionats.
4. Proposa una seqüència curta amb inici, varietat, moment central i tancament.
5. Mostra una previsualització editable: reordenar, excloure i canviar text.
6. Exporta els fitxers i el peu de foto.
7. La primera versió comparteix manualment; Instagram API queda per a una fase posterior verificada.

## Experiència d'usuari

### Flux principal

- **Crear:** nom opcional i format (Story, carrusel o Reel curt).
- **Seleccionar:** selector oficial del sistema; cap permís global de galeria.
- **Proposar:** miniatures ordenades amb motiu breu per a cada elecció.
- **Revisar:** eliminar, substituir, moure i editar text.
- **Exportar:** desar localment o obrir el full de compartició.
- **Recordar:** marcar localment hashes dels elements exportats per reduir repeticions.

### Fallada segura

- Si la selecció o el processament falla, no es perd la selecció ja confirmada.
- Si l'exportació falla, no es marca la història com a publicada.
- Cap publicació automàtica ni missatge d'èxit sense confirmació.
- Cap foto, token, peu de foto o identificador de compte al repositori.

## Barreja narrativa

La proposta intenta combinar, quan existeixin dins la selecció:

- una o dues fotos amb persones;
- un paisatge o context;
- un detall o moment curiós;
- un canvi de ritme;
- un tancament clar.

El MVP no necessita reconeixement d'identitat. Pot usar senyals locals simples —orientació, nitidesa, llum, duplicats visuals i ordre temporal— i permetre correcció manual.

## Criteris d'èxit del MVP

- Completar el flux amb dades sintètiques i sense xarxa.
- Seleccionar contingut amb el picker oficial i permisos mínims.
- Generar una proposta determinista i explicable.
- Reordenar o excloure elements abans d'exportar.
- Exportar sense publicar automàticament.
- No repetir un element ja exportat quan l'estat local ho indiqui.
- Superar una revisió de privacitat abans de connectar comptes socials.

## Fora d'abast inicial

- Escanejar tota la biblioteca de Google Fotos.
- Recuperar automàticament records, collages o animacions de Google.
- Identificar persones o inferir relacions.
- Publicar sense previsualització i confirmació.
- Programació cloud contínua.
- Serveis de pagament, entrenament de models o emmagatzematge remot.
- Prometre compatibilitat amb comptes personals d'Instagram.

## Evolució posterior condicionada

Només després de validar el MVP local:

1. Connector de selecció Google Photos.
2. Generació local de carrusel o vídeo.
3. Compte professional d'Instagram i permisos de publicació verificats.
4. Mode programat amb cua revisable i estat privat.
5. App Android preparada per a Play Store.

## Decisió

El producte inicial és **assistit, local-first i revisable**. L'automatització completa és una evolució condicionada pels permisos reals de plataforma, no una promesa del MVP.
