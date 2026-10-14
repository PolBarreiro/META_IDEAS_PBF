# Project Hub

## Principis globals

1. **NO REINVENTAR LA RODA:** cercar, provar i reutilitzar abans de construir.
2. **AJUNTAR ABANS DE SEPARAR:** compartir infraestructura, agents i dades quan tingui sentit.
3. **EVIDÈNCIA ABANS D'AFIRMAR:** distingir preparat, instal·lat, obert, verificat i operatiu.
4. **UNA SOLA COORDINACIÓ:** JARVIS manté prioritats i estat; els agents especialistes són executors temporals, no coordinadors duplicats.

## Responsabilitats

| Agent/rol | Entorn | Responsabilitat | Estat i evidència |
|---|---|---|---|
| JARVIS coordinador | ChatGPT/Work | Prioritat, inventari, GitHub, connectors i escalat a Pol | Actiu; manté aquesta branca i PR #1 |
| Executor local | Acer Windows 11 / OpenClaw `pc-autonomia-stable` | Instal·lacions, shell, proves al PC i estat privat | OpenClaw 2026.8.35 present; OAuth OpenAI disponible; plugin Codex, gateway i inferència encara pendents |
| Mark LV | Acer Windows 11 | Interfície de veu i control local | Instal·lat i interfície oberta; conversa Gemini encara no verificada |
| Agents especialistes | Temporals | Auditoria, recerca, programació o revisió concreta | Es creen només quan aporten paral·lelisme; retornen resultats al coordinador |

El coordinador cloud no assumeix accés directe al PC. L'executor local no publica credencials, correus, identificadors interns de WhatsApp ni estat privat.

## Inventari viu

| Projecte | Estat | Responsable principal | Següent pas | Evidència |
|---|---|---|---|---|
| **JARVIS al PC** | Instal·lació local comprovada; autonomia no verificada | Executor local + coordinador JARVIS | Verificar una inferència OpenClaw i una conversa Gemini; després provar una acció reversible | [Document JARVIS](Jarvis-vs-Work-Codex.md), [guia Windows](docs/jarvis/WINDOWS_INSTALL.md) |
| **Gmail → WhatsApp** | Gmail llegible; transport persistent incomplet | Executor local | Completar enllaç persistent i verificar push/recepció abans d'activar | [Disseny](docs/jarvis/GMAIL_WHATSAPP.md) |
| **Tasques personals JARVIS** | Backlog prioritzat | Coordinador JARVIS | Executar segons dependències, risc i cost | [Backlog](docs/jarvis/TASK_BACKLOG.md) |
| **AutoPhoto Stories** | Bloquejat: carpeta/documentació no presents | Coordinador JARVIS | Recuperar la font autoritativa abans de crear estructura | `auto-photo-stories/README.md` absent |
| **Quest Generative** | Base existent; desenvolupament sostingut limitat | Coordinador JARVIS | Inspecció i passos petits perquè no hi ha mesurador fiable del 25% | [README](quest-generative/README.md) |
| **LimitlessPrinter / RobImp** | Recerca geomètrica iniciada fora d'aquest repo | Agent d'enginyeria temporal | Validar dimensions i vídeo original; integrar la idea de construcció vertical abans de separar-la | [Repo propi](https://github.com/PolBarreiro/Limitless_XYZ_3D_Printer) |
| **Control de mosquits** | Seguiment diferit | Coordinador JARVIS | No actuar abans del 03-11-2026 09:00 Asia/Bangkok | Estat persistent a `PROJECT_HUB_STATE.json` |

## Escala d'estats

`idea → investigat → preparat → instal·lat → obert → verificat → operatiu`

No saltar estats. Una interfície oberta no prova que el model, els connectors, l'execució autònoma o les notificacions funcionin.

## Comunicació

- Notificació ChatGPT: només progrés útil, bloqueig nou o intervenció imprescindible.
- WhatsApp: només quan la connexió persistent i el destinatari estiguin verificats.
- Repositori: només estat no sensible, decisions, evidències i següents passos.
