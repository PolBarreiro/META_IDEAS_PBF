# JARVIS — resum diari Gmail → WhatsApp

## Estat

**Preparat documentalment; desactivat.** No s'ha verificat cap connexió de WhatsApp ni la identitat exacta del grup `Clara GPT`. No s'ha enviat cap missatge.

## Reutilització prevista

1. **Lectura Gmail:** Gmail API oficial amb OAuth i abast mínim `gmail.readonly`.
2. **Canvis nous:** conservar localment el darrer `historyId` i usar `users.history.list`; si Gmail retorna 404 per historial caducat, fer una resincronització limitada.
3. **Enviament:** reutilitzar `actions/send_message.py` de Mark LV només després de validar el controlador de WhatsApp i el grup.
4. **Execució diària:** Windows Task Scheduler, amb `StartWhenAvailable` perquè s'executi quan el portàtil torni a estar disponible.

## Flux

1. Llegir només missatges nous des de l'última revisió completada.
2. Excloure Spam, Trash, promocions i correus clarament comercials.
3. Classificar com a important només si hi ha acció, termini, seguretat/compte, finances, viatge/reserva, salut, administració o una persona real que espera resposta.
4. Crear un únic resum breu en català: remitent, assumpte, acció i termini.
5. Si no hi ha res important, preparar exactament `Gmail revisat`.
6. Abans d'enviar, resoldre el grup per nom i verificar que la conversa oberta mostra exactament `Clara GPT`.
7. Considerar èxit només si el controlador confirma l'enviament. Actualitzar l'estat després de l'èxit; si falla, conservar els missatges pendents per evitar pèrdues.

## Estat privat local

Guardar fora del repositori, per exemple a:

`%LOCALAPPDATA%\PolJarvis\private\gmail-whatsapp-state.json`

Camps mínims:

- `last_history_id`
- `last_successful_check_at`
- hashes dels missatges ja resumits
- `last_whatsapp_send_at`
- versió de l'esquema

No guardar al repositori contingut dels correus, tokens OAuth, identificadors interns del grup ni captures.

## Condicions obligatòries abans d'activar

- [ ] Mark LV instal·lat i verificat al PC de Pol.
- [ ] OAuth Gmail de només lectura verificat per a `polbarreirofont@gmail.com`.
- [ ] WhatsApp Desktop iniciat amb la sessió correcta.
- [ ] Controlador `plugins/_whatsapp_core.py` present i provat; al commit fixat el codi l'importa, però no apareix al repositori consultat.
- [ ] Grup `Clara GPT` resolt de manera inequívoca.
- [ ] Prova manual amb un text innocu i confirmació visual.
- [ ] Tasca diària registrada només després de superar les proves.

## Política de fallada segura

- No usar la ruta de tecleig «a cegues» de Mark LV per a aquest flux.
- No dir `Gmail revisat` si la lectura ha fallat.
- No avançar el marcador de Gmail si WhatsApp no confirma l'enviament.
- No respondre, esborrar, arxivar ni modificar cap correu.
- No substituir WhatsApp per un altre canal sense instrucció explícita de Pol.

## Següent pas

Quan hi hagi accés al PC: executar l'auditoria de JARVIS, comprovar si el controlador verificat de WhatsApp existeix realment a la instal·lació i fer una prova manual del grup abans d'escriure l'adaptador diari.
