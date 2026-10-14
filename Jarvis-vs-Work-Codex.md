# Projecte Jarvis — computer use i cloud control

## Decisió vigent: instal·lació al PC

14 d’octubre de 2026: Pol descarta el servidor al núvol pel cost i decideix instal·lar Jarvis al seu PC. Aquesta decisió substitueix l’objectiu de desplegament al núvol indicat a les seccions històriques següents. Equip de referència: Acer Nitro V15, Windows 11. Preparar instal·lació local reutilitzant un projecte existent; el PC ha d’estar encès i connectat perquè l’assistent treballi amb API. Allotjament propi no implica gratuïtat de les API. L’automatització central s’ha actualitzat a «Jarvis al PC», mantenint la cadència de quatre hores i la pausa dels altres projectes. No hi ha instal·lació ni accés al PC verificats encara.


## Prioritat del projecte

**Prioritat número 1 de Pol**, establerta el 14 d’octubre de 2026. Jarvis passa per davant dels altres projectes en la planificació del treball. Tots els altres projectes queden EN PAUSA per instrucció de Pol. L’automatització central ha estat actualitzada per treballar exclusivament en Jarvis; les altres quatre automatitzacions trobades ja estaven desactivades. Es conserva la cadència existent de quatre hores. No s’autoritzen noves despeses.

Primer resultat perseguit: instal·lar i verificar una base existent al Windows 11 de Pol. Després, integrar computer use, connectors, eines de codi i coordinació, evitant duplicacions.

## Definició acordada amb Pol
El nostre projecte es diu **Jarvis**. La decisió vigent és instal·lar l’assistent al PC de Pol; el portàtil haurà d’estar encès i connectat mentre treballi. S’hi integraran control d’ordinador, connectors, eines de codi i coordinació de projectes.

Referència general aportada per Pol: **“I build Jarvis in real life”**. És una frase recordada i una inspiració del projecte, no un títol exacte verificat ni una atribució d’autoria. Vídeo de referència: https://youtu.be/Acw0NtkyNtM.

FatihMakes / Mark LV és el candidat Jarvis trobat en la recerca: https://github.com/FatihMakes/Mark-LV. Agent Zero és una alternativa de base per al desplegament al núvol: https://github.com/agent0ai/agent-zero. Encara no s’ha escollit ni instal·lat cap plataforma.

## Comparativa: Work + Codex versus Jarvis propi
Data: 14 d’octubre de 2026. Nota de decisió de Pol; revisió documental, sense proves d’execució.

## Objectiu
Un assistent que coordini projectes, executi tasques amb eines i connectors, funcioni al núvol sense dependre del portàtil i seleccioni models segons la necessitat. Reutilitzar solucions existents abans de construir; integrar abans de fragmentar.

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

S'ha preparat una instal·lació reproduïble a `scripts/jarvis/Prepare-Jarvis.ps1` i la guia `docs/jarvis/WINDOWS_INSTALL.md`. Mark LV queda fixat al commit `c3e795af71bff38bb406c62a2e7a63869cdc8eb2`. Encara no està instal·lat ni verificat al PC real.

## Pendents
1. Verificar selecció de models segons dificultat, proveïdors compatibles i costos.
2. Comparar una mateixa tasca real: recerca, modificació de codi, execució i verificació.
3. Comprovar persistència, recuperació d’errors i funcionament amb el portàtil apagat.
4. Executar el desplegament autoritzat quan hi hagi recursos i accessos reals; no contractar serveis ni assumir despeses sense pressupost.

## Fonts primàries consultades
- Work: https://learn.chatgpt.com/docs/get-started-with-work
- FatihMakes: https://github.com/FatihMakes/Mark-LV
- Agent Zero: https://github.com/agent0ai/agent-zero
- Microsoft JARVIS: https://github.com/microsoft/JARVIS

## Instrucció d’execució autònoma de Pol

«Crear automàticament i sense preguntar-me un Jarvis en un servidor virtual. Si necessites qualsevol cosa, em pots contactar per WhatsApp o per l’aplicació de ChatGPT.»

Aplicació: avançar sense preguntes rutinàries, reutilitzar una base existent, preparar i executar el desplegament amb recursos accessibles i autoritzats, comprovar resultats i registrar progrés. Contactar Pol només davant d’un bloqueig real o una intervenció obligatòria. Canal disponible configurat: notificació de ChatGPT. WhatsApp queda com a preferència alternativa pendent d’una connexió real i destinatari verificat. Estat: instrucció programada; Jarvis encara no està desplegat.


## Progrés — 14 d'octubre de 2026
- Base escollida: Mark LV; Agent Zero queda com a integració de fase 2.
- Preparats script d'auditoria/instal·lació/verificació i guia Windows 11 en una branca revisable.
- Verificades les dependències upstream, Python 3.11–3.13, llicència CC BY-NC 4.0 i emmagatzematge local de la clau Gemini.
- Bloqueig concret: manca accés al PC Windows 11 de Pol; no s'ha executat ni validat cap instal·lació.


## Requisit: resum diari Gmail → WhatsApp
Cal revisar diàriament els missatges nous importants de Gmail i enviar un únic resum breu al grup de WhatsApp `Clara GPT`; si no n'hi ha, enviar només `Gmail revisat`. El flux no pot respondre ni modificar correus, repetir missatges, publicar estat privat ni anunciar èxit si alguna consulta o enviament falla.

Disseny i condicions d'activació: `docs/jarvis/GMAIL_WHATSAPP.md`. Estat: **desactivat** fins que al PC es verifiquin OAuth Gmail de només lectura, el controlador segur de WhatsApp i la identitat exacta del grup.
