# Projecte Jarvis — computer use i cloud control

## Definició acordada amb Pol
El nostre projecte es diu **Jarvis**. La idea és instal·lar un assistent Jarvis en un cloud perquè pugui treballar sense dependre que el portàtil estigui encès, i integrar-hi control d’ordinador, connectors, eines de codi i coordinació de projectes.

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

## Recomanació provisional
Aprofitar Work + Codex com a base. Estudiar Agent Zero si falta un servidor propi continu o més control d’infraestructura. Considerar FatihMakes per a veu i control de l’ordinador. Evitar duplicar memòria i projectes entre sistemes: integrar només les peces que aportin valor.

## Pendents
1. Verificar selecció de models segons dificultat, proveïdors compatibles i costos.
2. Comparar una mateixa tasca real: recerca, modificació de codi, execució i verificació.
3. Comprovar persistència, recuperació d’errors i funcionament amb el portàtil apagat.
4. Decidir després si convé integrar una peça externa; aquesta nota no autoritza desplegaments ni despeses.

## Fonts primàries consultades
- Work: https://learn.chatgpt.com/docs/get-started-with-work
- FatihMakes: https://github.com/FatihMakes/Mark-LV
- Agent Zero: https://github.com/agent0ai/agent-zero
- Microsoft JARVIS: https://github.com/microsoft/JARVIS
