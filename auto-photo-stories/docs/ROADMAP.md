# Roadmap — AutoPhoto Stories

## Ritme

Una sola unitat petita i revisable per execució. Sense serveis de pagament ni desenvolupament sostingut sense un límit de consum fiable.

## Fase 0 — Viabilitat

- [x] Crear la base documental.
- [x] Contrastar Google Photos, Instagram i Android amb documentació oficial.
- [x] Registrar límits i alternatives a [FEASIBILITY.md](FEASIBILITY.md).

**Resultat:** viable com a flux assistit i local-first; no és viable prometre selecció autònoma de tota la biblioteca de Google Fotos.

## Fase 1 — Producte i arquitectura

- [x] [PRODUCT.md](PRODUCT.md): selecció consentida, proposta narrativa i revisió.
- [x] [ARCHITECTURE.md](ARCHITECTURE.md): components, confiança i flux local-first.
- [x] [VALIDATION_PROTOCOL.md](VALIDATION_PROTOCOL.md): sessions, mètriques, consentiment i llindars.
- [ ] `AUTOMATION.md`: fluxos assistits, deduplicació i activació futura.
- [ ] `SECURITY_PRIVACY.md`: permisos, fotos i retenció.
- [ ] `DECISIONS.md`: decisions tècniques.
- [ ] `PLAY_STORE.md`: publicació Android.

## Fase 2 — Validació

- [x] Demo privada amb 8 actius sintètics: seleccionar → proposar → revisar → exportar.
- [ ] Primera ronda: 3–5 sessions consentides amb el protocol.
- [ ] Una sola iteració, només si seguretat i integritat passen.
- [ ] Segona ronda comercial amb 10 participants qualificats, només si la primera passa.

## Fases posteriors

Només després de superar la validació:

1. Declarar llicència pròpia abans de publicar codi.
2. Prototip Android local.
3. Android Photo Picker o Google Photos Picker amb selecció explícita.
4. Exportació manual.
5. Connector social només després de verificar compte i permisos.
6. Checklist de Google Play.

## Límits apresos — 14-10-2026

- Picker API exigeix selecció explícita; Library API només gestiona contingut creat per l’app.
- Android Photo Picker és la reutilització de menor privilegi.
- Instagram API requereix condicions i permisos no verificats.
- Records, collages i animacions de Google Fotos no tenen accés general documentat.
- La demo no prova demanda, ús repetit ni pagament.

## Següent pas únic

Executar 3–5 sessions consentides amb la demo sintètica i registrar únicament resultats agregats segons [VALIDATION_PROTOCOL.md](VALIDATION_PROTOCOL.md). No contactar persones ni compartir accés sense autorització aplicable.
