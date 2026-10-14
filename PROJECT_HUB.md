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
| `local-pc-executor` | Acer Windows 11 / OpenClaw | Shell, instal·lacions, proves i estat privat | OpenClaw 2026.8.35; inferència encara pendent |
| Mark LV | Acer Windows 11 | Interfície de veu i control local | Instal·lat i interfície oberta; conversa IA no verificada |
| Agents especialistes | Temporals | Auditoria, recerca o implementació acotada | Retornen evidència al coordinador; no creen coordinació paral·lela |

El coordinador cloud no assumeix accés directe al PC. L'executor local no publica credencials, correus, identificadors interns ni estat personal.

## Inventari viu

| Projecte | Prioritat | Estat | Següent pas verificable | Responsable | Evidència / restriccions |
|---|---:|---|---|---|---|
| **JARVIS al PC** | Màxima | Instal·lat i obert; funcionalitat no verificada | Una inferència OpenClaw i una conversa IA; després una acció reversible | `local-pc-executor` + `hub-coordinator` | [Document](Jarvis-vs-Work-Codex.md) · ús local, sense compres |
| **Resum Gmail → WhatsApp** | Alta | Lectura cloud verificada; transport persistent local incomplet | Verificar aparellament, enviament, recepció i push des de l'agent | `local-pc-executor` | [Disseny](docs/jarvis/GMAIL_WHATSAPP.md) · dades i estat només locals |
| **Quest Generative** | Mitjana | Base existent | Una inspecció o canvi petit | `hub-coordinator` | [README](quest-generative/README.md) · quota global no mesurable |
| **AutoPhoto Stories** | Mitjana | No incorporat: font absent | Localitzar la font autoritativa abans de crear res | `hub-coordinator` | `auto-photo-stories/README.md` absent |
| **LimitlessPrinter / RobImp** | Mitjana | Recerca externa | Validar la idea dins el projecte existent | Agent especialista temporal | [Repo propi](https://github.com/PolBarreiro/Limitless_XYZ_3D_Printer) |

## Escala d'estats

`idea → investigat → preparat → instal·lat → obert → verificat → operatiu`

No saltar estats. Una interfície oberta no prova el model, els connectors, l'execució autònoma ni les notificacions.

## Privacitat, llicències i comunicació

- El repositori és públic: cap estat de salut, finances, relacions, correus, credencials ni identificadors interns.
- Cada projecte declara l'abast de la seva llicència; no s'estén automàticament a dependències o subprojectes.
- ChatGPT: només progrés útil, bloqueig nou o intervenció imprescindible.
- WhatsApp: només després de verificar connexió persistent, destinatari i recepció.
