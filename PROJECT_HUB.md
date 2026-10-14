# Project Hub

`PROJECT_HUB_STATE.json` és la font canònica d'estat. Aquest document n'és la vista humana; els documents de projecte expliquen decisions i proves, però no repliquen l'estat operatiu.

## Principis

1. **No reinventar la roda:** cercar, provar i reutilitzar abans de construir.
2. **Ajuntar abans de separar:** compartir infraestructura i agents quan tingui sentit.
3. **Evidència abans d'afirmar:** distingir preparat, instal·lat, obert, verificat i operatiu.
4. **Una sola coordinació:** el rol `hub-coordinator` prioritza; els altres agents executen àmbits concrets.

## Responsabilitats

| Rol | Entorn | Responsabilitat | Evidència actual |
|---|---|---|---|
| `hub-coordinator` | ChatGPT Work | Inventari, prioritats, GitHub, connectors i escalat | Tasca JARVIS activa; PR #1 |
| `local-pc-executor` | Acer Windows 11 / OpenClaw | Shell, instal·lacions, proves i estat privat | Connector Codex, gateway i inferència `OPENCLAW_READY` verificats; tasca autònoma amb eines pendent |
| Mark LV | Acer Windows 11 | Interfície de veu i control local | Instal·lat i interfície oberta; conversa IA no verificada |
| Agents especialistes | Temporals | Auditoria, recerca o implementació acotada | Retornen evidència al coordinador; no creen coordinació paral·lela |

El coordinador cloud no assumeix accés directe al PC. L'executor local retorna només evidència tècnica sanejada al [fil #3](https://github.com/PolBarreiro/META_IDEAS_PBF/issues/3), no modifica la PR en paral·lel i no publica credencials, correus, identificadors interns ni estat personal. El heartbeat local existent de 30 minuts és un executor subordinat; la coordinació Jarvis continua horària.

## Inventari viu

| Projecte | Prioritat | Estat | Següent pas verificable | Responsable | Evidència / restriccions |
|---|---:|---|---|---|---|
| **JARVIS al PC** | Màxima | Ruta OpenClaw→Codex verificada; autonomia amb eines pendent | Una tasca local reversible amb eines i evidència; conversa Mark LV separada | `local-pc-executor` + `hub-coordinator` | [Pont d'evidència #3](https://github.com/PolBarreiro/META_IDEAS_PBF/issues/3) · ús local, sense compres |
| **Resum Gmail → WhatsApp** | Alta | Lectura cloud verificada; transport persistent local incomplet | Verificar aparellament, enviament, recepció i push des de l'agent | `local-pc-executor` | [Disseny](docs/jarvis/GMAIL_WHATSAPP.md) · dades i estat només locals |
| **Quest Generative** | Mitjana | Base existent | Una inspecció o canvi petit | `hub-coordinator` | [README](quest-generative/README.md) · quota global no mesurable |
| **AutoPhoto Stories** | Mitjana | Viabilitat oficial: flux assistit, no biblioteca autònoma | Definir MVP assistit a `PRODUCT.md` | `hub-coordinator` | [Matriu](auto-photo-stories/docs/FEASIBILITY.md) · sense pagament ni desplegament |
| **LimitlessPrinter / RobImp** | Mitjana | Recerca externa | Validar la idea dins el projecte existent | Agent especialista temporal | [Repo propi](https://github.com/PolBarreiro/Limitless_XYZ_3D_Printer) |
| **Pose-Independent Cloud VR / XcloudVR** | Alta | PR de receptor de snapshots oberta; 7 proves passades | Simulació determinista transport/escena en memòria | Executor XcloudVR existent + `hub-coordinator` | [PR #2](https://github.com/PolBarreiro/pose-independent-cloud-vr/pull/2) · codi MIT; docs protegits; sense GPU de pagament |

## Escala d'estats

`idea → investigat → preparat → instal·lat → obert → verificat → operatiu`

No saltar estats. Una interfície oberta no prova el model, els connectors, l'execució autònoma ni les notificacions.

## Privacitat, llicències i comunicació

- El repositori és públic: cap estat de salut, finances, relacions, correus, credencials ni identificadors interns.
- Cada projecte declara l'abast de la seva llicència; no s'estén automàticament a dependències o subprojectes.
- XcloudVR: cap GPU/servei de pagament, cap insistència a NVIDIA sense novetat i cap promesa de release.
- ChatGPT: només progrés útil, bloqueig nou o intervenció imprescindible.
- WhatsApp: només després de verificar connexió persistent, destinatari i recepció.
- GUI local: una aturada amb Escape és vinculant; no reprendre ni esquivar-la sense una nova acció local.
