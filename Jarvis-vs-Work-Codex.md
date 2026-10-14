# Projecte Jarvis — computer use i cloud control

## Decisió vigent: instal·lació al PC

14 d’octubre de 2026: Pol descarta el servidor al núvol pel cost i decideix instal·lar Jarvis al seu PC. Aquesta decisió substitueix l’objectiu de desplegament al núvol indicat a les seccions històriques següents. Equip de referència: Acer Nitro V15, Windows 11. Preparar instal·lació local reutilitzant un projecte existent; el PC ha d’estar encès i connectat perquè l’assistent treballi amb API. Allotjament propi no implica gratuïtat de les API. L’automatització JARVIS és el coordinador principal; els altres projectes estan represos. Mark LV està instal·lat al PC i la interfície s’ha obert, però la conversa Gemini i l’autonomia funcional encara no s’han verificat.


## Prioritat del projecte

**Prioritat número 1 de Pol**, establerta el 14 d’octubre de 2026. Jarvis passa per davant dels altres projectes en la planificació del treball. La resta de projectes estan represos i el coordinador pot avançar passos independents quan JARVIS tingui un bloqueig local. Es manté una sola coordinació principal i no s’autoritzen noves despeses.

Primer resultat perseguit: instal·lar i verificar una base existent al Windows 11 de Pol. Després, integrar computer use, connectors, eines de codi i coordinació, evitant duplicacions.

## Definició acordada amb Pol
El nostre projecte es diu **Jarvis**. La decisió vigent és instal·lar l’assistent al PC de Pol; el portàtil haurà d’estar encès i connectat mentre treballi. S’hi integraran control d’ordinador, connectors, eines de codi i coordinació de projectes.

Referència general aportada per Pol: **“I build Jarvis in real life”**. És una frase recordada i una inspiració del projecte, no un títol exacte verificat ni una atribució d’autoria. Vídeo de referència: https://youtu.be/Acw0NtkyNtM.

FatihMakes / Mark LV és la base local escollida: https://github.com/FatihMakes/Mark-LV. Agent Zero continua com a alternativa/complement: https://github.com/agent0ai/agent-zero. Mark LV està instal·lat i obert; encara falta verificar la conversa Gemini. OpenClaw 2026.8.35 ja té connector Codex oficial, gateway saludable i una inferència real `OPENCLAW_READY` sense fallback; això verifica la ruta del model, no encara una tasca autònoma amb eines.

## Comparativa: Work + Codex versus Jarvis propi
Data: 14 d’octubre de 2026. Nota de decisió de Pol; revisió documental, sense proves d’execució.

## Objectiu
Un assistent híbrid: coordinació i connectors cloud quan calgui, més execució local al PC encès, amb selecció d’eines i models segons la tasca. Reutilitzar solucions existents abans de construir; integrar abans de fragmentar.

## Avantatges i inconvenients
| Opció | Avantatges | Inconvenients |
|---|---|---|
| ChatGPT Work + Codex | Eines de codi i execució, connectors i producció de fitxers integrats; menys infraestructura pròpia. Work documenta tasques compatibles al núvol i programació. | Capacitats subjectes a pla, permisos i eines de cada sessió. No és un servidor propi permanent. No s’ha confirmat selecció automàtica Sol/Astra/Luna segons dificultat. |
| FatihMakes Mark LV (55) | El repositori documenta veu en temps real, pantalla, control d’aplicacions, memòria, plugins i control remot des del mòbil. | Pensat principalment per a un ordinador en funcionament; núvol requeriria validar allotjament i adaptació. Cal instal·lar i mantenir dependències i gestionar API. |
| Agent Zero | El repositori documenta desplegament Docker local o en servidor, navegador i escriptori Linux propis. Més control sobre infraestructura i configuració. | Cal mantenir servidor, connexions, models i dades. Selecció automàtica per dificultat i integració amb els models exactes de Work pendents de verificar. |
| Microsoft JARVIS / HuggingGPT | Selecciona models especialistes de Hugging Face segons les tasques planificades. | Projecte de recerca; no equival a un assistent personal complet ni a selecció entre Sol/Astra/Luna. |

## Distincions importants
- Un Jarvis és una capa d’orquestració i eines; la seva qualitat també depèn dels models que utilitza. No s’ha establert un guanyador global de potència.
- Mark LV documenta alternatives Gemini quan un model falla, esgota quota o no està disponible. Això no demostra selecció segons dificultat.
- Tasques programades de Work no impliquen un procés permanent lliure d’actuar indefinidament.
- En la sessió on es va elaborar aquesta nota hi havia codi, shell, navegador i connectors disponibles; el control natiu d’aplicacions estava desactivat.
- Codi descarregable no implica cost total zero: verificar quotes API, allotjament i llicències. No s’ha calculat un pressupost.
- El vídeo compartit https://youtu.be/Acw0NtkyNtM no s’ha pogut identificar amb certesa; FatihMakes és un candidat, no una atribució confirmada.

## Decisió tècnica vigent
Usar **Mark LV com a base inicial local** per veu, pantalla i control natiu de Windows. Reservar **Agent Zero com a capa complementària posterior** per autonomia i multiagent dins Docker, connectada al host només amb permisos explícits. Evitar duplicar memòria i projectes entre sistemes.

S'ha preparat una instal·lació reproduïble a `scripts/jarvis/Prepare-Jarvis.ps1` i la guia `docs/jarvis/WINDOWS_INSTALL.md`. Mark LV està instal·lat sota `%USERPROFILE%\.local\share\jarvis\Mark-LV` i la interfície s'ha obert. Això acredita els estats **instal·lat** i **obert**, no encara **verificat** ni **operatiu**.

## Pendents
1. Completar una tasca local petita i reversible amb eines; publicar-ne només l'evidència sanejada al [fil #3](https://github.com/PolBarreiro/META_IDEAS_PBF/issues/3).
2. Verificar la conversa Gemini de Mark LV de manera separada.
3. Comprovar persistència i recuperació després de reinici o reconnexió.
4. Comparar una mateixa tasca real entre components sense contractar serveis ni assumir despeses.

## Fonts primàries consultades
- Work: https://learn.chatgpt.com/docs/get-started-with-work
- FatihMakes: https://github.com/FatihMakes/Mark-LV
- Agent Zero: https://github.com/agent0ai/agent-zero
- Microsoft JARVIS: https://github.com/microsoft/JARVIS

## Instrucció d’execució autònoma de Pol

«Crear automàticament i sense preguntar-me un Jarvis en un servidor virtual. Si necessites qualsevol cosa, em pots contactar per WhatsApp o per l’aplicació de ChatGPT.»

Aplicació: avançar sense preguntes rutinàries, reutilitzar una base existent, executar proves autoritzades i registrar evidències. Contactar Pol només davant d’un bloqueig real o una intervenció obligatòria. El coordinador cloud no té accés directe al PC; l’executor local n’assumeix les proves. WhatsApp Desktop ha enviat una prova, però l’enllaç persistent, el push mòbil i la recepció per l’agent encara no estan verificats.


## Progrés — 14 d'octubre de 2026
- Base escollida: Mark LV; Agent Zero queda com a integració de fase 2.
- Preparats script d'auditoria/instal·lació/verificació i guia Windows 11 en una branca revisable.
- Verificades les dependències upstream, Python 3.11–3.13, llicència CC BY-NC 4.0 i emmagatzematge local de la clau Gemini.
- Mark LV: instal·lat i interfície oberta; conversa Gemini pendent.
- OpenClaw 2026.8.35: connector Codex oficial habilitat, gateway saludable, inici amb la sessió Windows i inferència `OPENCLAW_READY` verificada sense fallback.
- La prova autònoma amb eines continua en curs; no es considera superada fins que el [fil #3](https://github.com/PolBarreiro/META_IDEAS_PBF/issues/3) aporti evidència nova.
- El heartbeat local existent de 30 minuts és un executor subordinat; Jarvis manté l'única coordinació amb ritme horari.
- Distinció vigent: el coordinador cloud no controla directament el PC; l’executor local aporta proves. L'aturada de GUI amb Escape es respecta i no es pot esquivar.


## Requisit: resum diari Gmail → WhatsApp
Cal revisar diàriament els missatges nous importants de Gmail i enviar un únic resum breu al grup de WhatsApp `Clara GPT`; si no n'hi ha, enviar només `Gmail revisat`. El flux no pot respondre ni modificar correus, repetir missatges, publicar estat privat ni anunciar èxit si alguna consulta o enviament falla.

Disseny i condicions d'activació: `docs/jarvis/GMAIL_WHATSAPP.md`. Gmail és llegible i l’enviament de WhatsApp Desktop s’ha provat; el flux continua **desactivat** fins que es verifiquin l’enllaç persistent, el push mòbil, la recepció per l’agent i el destinatari en cada execució.
