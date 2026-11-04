# JARVIS al PC — preparació Windows 11

## Decisió tècnica

- **Base inicial:** [Mark LV](https://github.com/FatihMakes/Mark-LV).
- **Executor local en validació:** OpenClaw 2026.8.35, perfil `pc-autonomia-stable`.
- **Opció posterior:** [Agent Zero](https://github.com/agent0ai/agent-zero), sense substituir l'executor actual abans d'una decisió arquitectònica.
- **Versió fixada de Mark LV:** `c3e795af71bff38bb406c62a2e7a63869cdc8eb2`.
- **Cost:** cap compra; no s'ha verificat cap quota gratuïta.

## Estat verificat

Per evidència local del 14-10-2026, Mark LV està instal·lat a `%USERPROFILE%\.local\share\jarvis\Mark-LV` i la interfície s'ha obert. La conversa IA, micròfon, visió, accions i persistència encara no estan verificades. El coordinador cloud no té accés directe al PC.

OpenClaw té OAuth OpenAI disponible, però això no prova una inferència ni autoritza copiar credencials. El plugin Codex, el gateway i una inferència correcta continuen pendents.

## Script de la branca

`scripts/jarvis/Prepare-Jarvis.ps1` conserva modes Audit, Install i Verify. El seu directori per defecte és `%LOCALAPPDATA%\PolJarvis`, diferent de la instal·lació real: **no s'ha de reinstal·lar ni moure res**. Primer cal auditar commit i dependències a la ruta existent. No consta que aquest script s'hagi executat al PC.

## Escala de verificació

- **Instal·lat:** fitxers i entorn presents — acreditat localment.
- **Obert:** interfície iniciada — acreditat localment.
- **Verificat:** micròfon/altaveus, conversa IA, visió, una acció reversible, navegador i aprovacions sensibles funcionen.
- **Operatiu/autònom:** recuperació després de reinici, reconnexió, memòria i executor persistent provats.

## Seguretat i llicències

- Mark LV desa la clau Gemini en text pla; no pujar-la ni copiar-la.
- Mark LV és CC BY-NC 4.0; la llicència arrel del hub no substitueix els termes de la dependència.
- No activar automatització persistent de WhatsApp, control remot públic ni autoarrencada fins a superar proves locals.
- No exposar el dashboard a Internet; començar a localhost o LAN privada.

## Següent pas local

1. Auditar commit i dependències de la instal·lació existent.
2. Reparar plugin Codex/gateway d'OpenClaw i registrar una inferència reeixida.
3. Verificar conversa IA de Mark LV.
4. Fer una acció reversible amb confirmació.
