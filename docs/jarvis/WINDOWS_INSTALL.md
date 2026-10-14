# JARVIS al PC — preparació Windows 11

## Decisió tècnica

- **Base inicial:** [Mark LV](https://github.com/FatihMakes/Mark-LV), perquè ja ofereix veu, pantalla, control natiu de Windows, memòria, plugins i control remot.
- **Motor complementari posterior:** [Agent Zero](https://github.com/agent0ai/agent-zero), per a tasques autònomes, projectes i agents dins Docker. No és la primera capa de control del Windows host.
- **Versió fixada de Mark LV:** `c3e795af71bff38bb406c62a2e7a63869cdc8eb2` (27-09-2026).
- **Cost:** cap compra. Mark LV necessita una clau Gemini; cal usar només una quota gratuïta o ja autoritzada. No s'ha verificat cap quota.

## Per què no instal·lem encara Agent Zero

Agent Zero és una bona capa d'orquestració, però la seva màquina principal és un contenidor Linux. Per accedir al PC host necessita l'A0 CLI Connector i permisos explícits. Afegir-lo abans de provar Mark LV complicaria la primera validació i duplicaria memòria, eines i secrets.

## Script preparat

`scripts/jarvis/Prepare-Jarvis.ps1` té tres modes:

```powershell
# 1. Només comprova Windows, Git i Python; no instal·la res
powershell -ExecutionPolicy Bypass -File .\scripts\jarvis\Prepare-Jarvis.ps1 -Mode Audit

# 2. Clona la versió fixada, crea un venv i instal·la dependències
powershell -ExecutionPolicy Bypass -File .\scripts\jarvis\Prepare-Jarvis.ps1 -Mode Install

# 3. Verifica commit, dependències i compilació
powershell -ExecutionPolicy Bypass -File .\scripts\jarvis\Prepare-Jarvis.ps1 -Mode Verify
```

El directori per defecte és `%LOCALAPPDATA%\PolJarvis`. La clau API no es demana ni s'escriu al script.

## Criteri de verificació real

No considerar JARVIS instal·lat fins que, al PC de Pol:

1. Mark LV obri la interfície amb `.venv\Scripts\python.exe main.py`.
2. El micròfon i els altaveus funcionin.
3. La visió de pantalla descrigui una finestra real.
4. Una ordre reversible obri i tanqui una aplicació.
5. Una tasca de navegador es completi.
6. Es confirmi que les accions sensibles demanen aprovació.
7. El reinici del PC conservi configuració i memòria.

## Seguretat i límits

- Mark LV desa la clau Gemini en text pla a `config/api_keys.json`; el compte Windows ha d'estar protegit i el fitxer no s'ha de pujar mai.
- La llicència de Mark LV és CC BY-NC 4.0: ús personal/no comercial.
- No activar autoarrencada, WhatsApp, control remot ni Agent Zero fins que la prova local bàsica sigui correcta.
- No exposar el dashboard a Internet; començar només a `localhost` o LAN privada.

## Bloqueig actual

Aquest entorn no té accés al Windows 11 d'en Pol. Per tant, el script i la decisió estan preparats, però no s'ha executat ni verificat la instal·lació real.
