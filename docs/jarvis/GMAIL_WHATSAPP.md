# JARVIS — resum diari Gmail → WhatsApp

## Estat

**Preparat documentalment; desactivat.** La lectura Gmail del connector cloud s'ha verificat el 14-10-2026. A l'entorn local, WhatsApp Desktop, la conversa exacta i un enviament manual s'han comprovat; això **no** verifica l'enllaç persistent de l'agent, recepció, push ni lectura Gmail local.

## Reutilització prevista

1. **Lectura Gmail local:** Gmail API oficial amb OAuth i abast mínim `gmail.readonly`.
2. **Canvis nous:** conservar localment el darrer `historyId` i usar `users.history.list`; si l'historial caduca, resincronització limitada.
3. **Enviament:** reutilitzar el controlador existent de Mark LV només després de validar-lo des de l'agent.
4. **Execució diària:** Windows Task Scheduler amb `StartWhenAvailable`.

## Flux

1. Llegir només missatges nous des de l'última revisió completada.
2. Excloure Spam, Trash, promocions i correus clarament comercials.
3. Classificar com a important només si hi ha acció, termini, seguretat/compte, finances, viatge, salut, administració o una persona que espera resposta.
4. Crear un únic resum breu en català: remitent, assumpte, acció i termini.
5. Si no hi ha res important, preparar exactament `Gmail revisat`.
6. Verificar la conversa exacta abans d'enviar.
7. Actualitzar l'estat privat només després de confirmació d'enviament.

## Estat privat local

Desar fora del repositori: darrer `historyId`, darrera revisió correcta, hashes de missatges ja resumits, darrer enviament i versió d'esquema. No publicar contingut, tokens, identificadors del grup ni captures.

## Condicions abans d'activar

- [x] Mark LV instal·lat i interfície oberta.
- [x] Lectura Gmail cloud verificada (no equival a OAuth local).
- [x] WhatsApp Desktop amb la sessió correcta.
- [x] Conversa exacta resolta i prova manual visual.
- [ ] OAuth Gmail local de només lectura verificat.
- [ ] Controlador persistent importable i provat des de l'agent.
- [ ] Aparellament/QR persistent verificat.
- [ ] Enviament, recepció i push verificats de punta a punta.
- [ ] Tasca diària registrada després de superar les proves.

## Fallada segura

- No usar tecleig a cegues.
- No dir `Gmail revisat` si la lectura falla.
- No avançar el marcador de Gmail si l'enviament no es confirma.
- No respondre, esborrar, arxivar ni modificar correus.
- No substituir WhatsApp per un altre canal sense instrucció explícita.

## Següent pas

Verificar aparellament persistent/QR i un cicle d'enviament-recepció des de l'agent; després verificar lectura Gmail local i implementar l'adaptador.
