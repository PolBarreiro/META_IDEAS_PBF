# P-004 — accés wearable a la IA i registre 360° lleuger

## Objectiu

Trobar la forma més econòmica i còmoda perquè Pol pugui parlar amb una IA des d'un wearable i encarregar-li tasques, mantenint la possibilitat de triar proveïdor. En paral·lel, estudiar una captura 360° tipus hyperlapse de tot el dia amb poc pes de dades.

## Conclusió preliminar

No convé unir físicament les dues funcions en un sol dispositiu:

- **veu i tasques:** micròfon/auricular wearable connectat al mòbil;
- **captura 360°:** càmera independent, perquè necessita dues òptiques, més bateria, refrigeració i emmagatzematge.

Això reutilitza el telèfon com a ordinador i evita construir hardware propi.

## Fase 1 — opció mínima

**Mòbil Android existent + auricular Bluetooth + ChatGPT Voice en segon pla.**

Avantatges:

- cap dispositiu d'IA nou;
- aprofita el pla i els connectors ja disponibles;
- permet parlar amb ChatGPT i continuar una conversa amb el mòbil bloquejat quan la funció de segon pla està disponible;
- les accions sensibles continuen requerint confirmació visual.

Limitació: cal iniciar la conversa des del mòbil o afegir més endavant un botó/rellotge com a drecera.

## Fase 2 — wearable obert candidat

**Omi** és el primer candidat a provar abans de construir res:

- projecte open source sota llicència MIT;
- hardware, firmware, app i backend personalitzables;
- es connecta al mòbil per Bluetooth;
- admet plugins/integracions i autoallotjament.

Encara cal verificar cost real a Tailàndia, privacitat, idioma català/castellà, latència, bateria i fins a quin punt permet seleccionar ChatGPT, Claude o Gemini sense dependre del seu núvol.

## Captura 360° candidata

Per gravar poques imatges per segon, usar **Timelapse 360°**, no vídeo continu normal.

La família Insta360 X admet intervals configurables; X4/X5 permeten 0,5–120 segons. X4/X5 també admeten gravar alimentades externament, però el fabricant avisa de risc d'escalfament. Això obliga a:

- portar la càmera ventilada i no tapada;
- usar power bank amb alimentació adequada;
- provar temperatura i durada abans d'un dia complet;
- decidir un interval inicial de 5–10 segons per reduir dades;
- revisar privacitat i normativa local abans de gravar tercers.

No s'ha escollit ni comprat cap càmera. Comparar primer X3 usada, X4 usada i X5/X6 actuals segons preu local, autonomia, reparabilitat de lents i tolerància tèrmica.

## Arquitectura prevista

```
wearable de veu → Android → ChatGPT/JARVIS/connectors
càmera 360° → microSD → selecció/resum local posterior
```

La càmera no envia vídeo constant a la IA. JARVIS processarà només fotogrames seleccionats o resums, evitant cost, bateria i càrrega massiva.

## Següent pas

Fer una comparativa actual de compra a Tailàndia:

1. auricular o botó wearable de baix cost;
2. Omi o alternativa oberta;
3. Insta360 usada/nova amb accessoris de pit/coll i power bank.

No comprar sense aprovació de Pol.
