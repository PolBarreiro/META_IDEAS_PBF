# Meta Quest: seamless passthrough boundary portals
# Meta Quest: portals al món real en lloc del mur blau

Author / Autor: Pol Barreiro Font (https://github.com/PolBarreiro)
Contact / Contacte: polbarreirofont@gmail.com
Publication date / Data de publicació: 2026-10-01

## Proposta en català

Substituir el mur blau quadriculat del límit de joc de Meta Quest per una finestra o portal de passthrough: una obertura sense vores visibles, o amb vores suaument difuminades, que mostri l'entorn real captat per les càmeres.

Quan el casc o qualsevol controlador travessi el límit de la zona segura, la realitat virtual s'hauria de difuminar o desaparèixer localment per deixar veure el món real a través d'aquest portal. Si el casc surt de la zona o cal més visibilitat per seguretat, la transició podria ampliar-se fins al passthrough complet. El mateix criteri s'aplicaria a controladors o dispositius de seguiment dels peus, quan siguin compatibles i estiguin disponibles.

La inspiració és el comportament que he observat en mode estacionari: en sortir del límit circular, el joc es difumina i deixa veure la realitat. Proposo estendre aquest principi als controladors i als peus, i unificar el comportament dels límits estacionaris i roomscale. Hi hauria una sola experiència de límit, aplicable tant a una zona circular com a una zona dibuixada, sense el mur blau quadriculat.

Per exemple, si una mà amb el controlador surt de la zona marcada, apareixeria una obertura difuminada cap a l'entorn real en aquella direcció. En tornar a la zona segura, l'obertura es tancaria gradualment i es recuperaria la vista del joc.

L'objectiu és una transició visual més agradable i una visió directa de l'entorn físic. El límit segur es mantindria actiu. Caldria validar la latència, la visibilitat dels obstacles, els moviments ràpids, la pèrdua de seguiment i els casos amb diversos dispositius fora del límit. L'observació del mode estacionari suggereix que alguns components ja existeixen, però no demostra que tota la proposta estigui implementada o validada.

## English proposal

Replace Meta Quest's blue boundary grid with a seamless passthrough window or portal, with no visible border or softly feathered edges, revealing the physical surroundings captured by the headset cameras.

When the headset or any controller crosses the safe play-area boundary, virtual content should locally fade away to reveal the real world through this portal. If the headset leaves the area, or safety requires broader visibility, the transition could expand to full passthrough. Apply the same principle to compatible foot controllers or foot trackers when available.

The inspiration is the stationary-boundary behavior I have observed: crossing the circular boundary fades the game and reveals the physical environment. Extend that principle to controllers and tracked feet, and unify stationary and roomscale boundary behavior into one consistent experience. The safe area could still be circular or custom-drawn; the blue grid wall would be replaced by the passthrough transition.

For example, a controller moving outside the play area would open a softly feathered view of the real environment in that direction. Returning to the safe area would gradually close the portal and restore the game view.

The goal is a more pleasant visual transition and direct awareness of physical surroundings. Boundary protection must remain active. Validation should cover latency, obstacle visibility, fast movements, tracking loss, and multiple devices crossing the boundary. Existing stationary behavior suggests that some building blocks exist; it does not establish that the complete proposal is implemented or validated.

## Llicència i petició de recompensa / License and compensation request

© 2026 Pol Barreiro Font.

Aquest document, incloses les versions catalana i anglesa publicades per l'autor, es publica sota [Creative Commons Reconeixement–NoComercial–SenseObraDerivada 4.0 Internacional (CC BY-NC-ND 4.0)](https://creativecommons.org/licenses/by-nc-nd/4.0/).

«Publico aquesta proposta perquè es pugui conèixer i valorar, però no vull regalar la idea per a una explotació comercial sense cap retorn. No demano milions: voldria acordar algun tipus de recompensa raonable, compensació o col·laboració si Meta o una altra empresa decideix adoptar-la. Per parlar d'un acord, contacteu amb mi.»

This document, including the author's Catalan and English versions, is licensed under [Creative Commons Attribution–NonCommercial–NoDerivatives 4.0 International](https://creativecommons.org/licenses/by-nc-nd/4.0/).

“I am publishing this proposal so it can be seen and evaluated, but I do not want to give the idea away for commercial exploitation without any return. I am not asking for millions: I would like to discuss a reasonable reward, compensation, or collaboration if Meta or another company adopts it. Please contact me to discuss an agreement.”

La llicència cobreix l'expressió escrita del document; no atorga una patent ni exclusivitat sobre la idea o el seu funcionament, ni obliga cap empresa a pagar. La recompensa sol·licitada requeriria un acord separat. / The license covers the written expression of this document; it does not grant a patent or exclusive rights over the underlying idea or functionality, nor does it require a company to pay. The requested compensation would require a separate agreement.

## Missatges preparats per compartir / Prepared outreach messages

These are drafts, not records of sent messages. / Són esborranys, no constàncies d'enviament.

### Email to the Quest product team

Subject: Quest boundary proposal: seamless passthrough portals instead of the blue grid

Hello Meta Quest team,

I propose replacing the blue boundary grid with borderless or softly feathered passthrough portals when the headset, controllers, or compatible tracked feet cross the safe play-area boundary. The aim is one consistent boundary experience for stationary and roomscale use, inspired by the stationary passthrough transition I have observed.

Full proposal:
https://github.com/PolBarreiro/META_IDEAS_PBF/blob/main/Seamless-Passthrough-Boundary-Portals.md

Could you route this proposal to the team responsible for Quest boundaries and passthrough? I would appreciate feedback and an opportunity to discuss a reasonable reward or collaboration if it is adopted. I am not asking for millions.

The proposal document is licensed CC BY-NC-ND 4.0. Any compensation would require a separate agreement.

Thank you,
Pol Barreiro Font
polbarreirofont@gmail.com

### Email or message to XR developers / community

Subject: Feedback request: seamless passthrough boundary portals for Quest

Hello,

I have published a Quest UX proposal: replace the blue boundary grid with softly feathered passthrough portals triggered by the headset, controllers, and compatible foot trackers. It would unify stationary and roomscale boundary behavior while preserving safe-area detection.

I would welcome feedback on usability, technical feasibility, and safety validation:
https://github.com/PolBarreiro/META_IDEAS_PBF/blob/main/Seamless-Passthrough-Boundary-Portals.md

The document is CC BY-NC-ND 4.0. I am seeking a reasonable reward or collaboration if a company adopts the proposal.

Thank you,
Pol Barreiro Font
polbarreirofont@gmail.com

### Meta support / Suport de Meta

Hello Meta Quest Support,

Please forward this feature suggestion to the Quest boundary/passthrough product team: replace the blue boundary grid with borderless or softly feathered passthrough portals triggered when the headset, controllers, or compatible tracked feet cross the safe area. Use one consistent visual behavior for stationary and roomscale boundaries.

Proposal and contact:
https://github.com/PolBarreiro/META_IDEAS_PBF/blob/main/Seamless-Passthrough-Boundary-Portals.md

I would appreciate a reference number or confirmation that the suggestion has been forwarded. I would also like to discuss a reasonable reward or collaboration if adopted. The document is CC BY-NC-ND 4.0.

Pol Barreiro Font
polbarreirofont@gmail.com

### X — two-post thread / Fil de dos missatges

1. Idea for Meta Quest: replace the blue boundary grid with seamless passthrough portals when the headset, controllers or tracked feet leave the safe area. One consistent experience for stationary + roomscale. @MetaQuestVR

2. Proposal: https://github.com/PolBarreiro/META_IDEAS_PBF/blob/main/Seamless-Passthrough-Boundary-Portals.md
Document: CC BY-NC-ND 4.0. If adopted, I'd like to discuss a reasonable reward or collaboration. I'm not asking for millions.
