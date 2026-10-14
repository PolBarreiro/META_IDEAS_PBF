# Safata d'entrada de converses

Registra només novetats no sensibles i accionables que han arribat al context del coordinador. Abans d'afegir un projecte, comprova si encaixa en un d'existent.

## Punt de control

- Últim context processat: **14-10-2026, 14:15 Asia/Bangkok**
- Abast: només converses visibles per a l'execució; no es pressuposa accés a tot l'historial de ChatGPT.

## Elements processats

| Data | Origen | Element | Classificació | Estat / següent pas |
|---|---|---|---|---|
| 14-10-2026 | Sessió PC | Mark LV instal·lat i interfície oberta | JARVIS | Actualitzat com a `instal·lat/obert`; falta prova Gemini i acció reversible |
| 14-10-2026 | Sessió PC | OpenClaw 2026.8.35, perfil `pc-autonomia-stable` | JARVIS / executor local | Falta plugin Codex, gateway i inferència verificada |
| 14-10-2026 | Sessió PC | WhatsApp Desktop pot enviar; enllaç persistent incomplet | Gmail → WhatsApp | Mantenir desactivat fins a QR, push i recepció verificats |
| 14-10-2026 | Conversa | Wearable d'IA i captura 360° | Tasca JARVIS P-004 | Integrat al backlog i [brief](docs/jarvis/WEARABLE_360.md) |
| 14-10-2026 | Conversa | Robot que s'autoconstrueix el carril i puja construint estructures verticals | LimitlessPrinter / RobImp | **Ajuntat**, no creat com a projecte separat; següent: contrastar amb el mecanisme RobImp i estructures modulars |
| 14-10-2026 | Conversa | Selecció de materials segons aplicació i cicle de vida | Recerca de materials | Mantenir com a línia de recerca vinculada a construcció vertical; no assumir alumini com a guanyador sense càlcul |

## Regla d'ingesta

En cada execució:

1. Llegir només novetats visibles des del punt de control.
2. Comparar-les amb aquest fitxer, `PROJECT_HUB_STATE.json` i els roadmaps.
3. Fusionar-les amb un projecte existent quan comparteixin objectiu o infraestructura.
4. Afegir origen/data, estat, responsable i un sol següent pas verificable.
5. No copiar converses privades, correus, credencials ni identificadors interns.
