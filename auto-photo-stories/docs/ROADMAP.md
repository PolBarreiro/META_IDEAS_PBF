# Roadmap — AutoPhoto Stories

## Ritme

Una sola unitat petita i revisable per execució. Sense desenvolupament sostingut mentre el consum global compartit no es pugui mesurar ni limitar de manera fiable.

## Fase 0 — Incorporació i viabilitat

- [x] Confirmar que la font esperada no existeix als repositoris GitHub accessibles.
- [x] Crear portada i roadmap mínims, sense codi ni serveis.
- [ ] Contrastar capacitats i límits amb documentació oficial de Google Photos APIs, Instagram Graph API i Android.
- [ ] Registrar decisions i alternatives de reutilització.

**Dependència:** comptes, permisos i condicions de plataforma; no activar cap connector d'escriptura durant la recerca.

## Fase 1 — Producte i arquitectura

- [ ] `docs/PRODUCT.md`: visió, objectius i experiència d'usuari.
- [ ] `docs/ARCHITECTURE.md`: components i flux de dades.
- [ ] `docs/AUTOMATION.md`: selecció, esborrany, programació i notificacions.
- [ ] `docs/SECURITY_PRIVACY.md`: permisos, credencials, fotos i retenció.
- [ ] `docs/DECISIONS.md`: registre curt de decisions.
- [ ] `docs/PLAY_STORE.md`: requisits de publicació Android.

## Fases posteriors

Només després de validar viabilitat i permisos:

1. Prototip local amb dades sintètiques.
2. Integració de només lectura.
3. Selecció narrativa revisable.
4. Publicació en mode esborrany.
5. App Android i checklist de Play Store.

## Aprenentatge — 14-10-2026

No s'ha localitzat una font prèvia d'AutoPhoto Stories als repositoris accessibles; es crea una base documental mínima per evitar inventar codi abans de comprovar APIs i restriccions.

## Següent pas únic

Crear `docs/FEASIBILITY.md` amb una matriu de capacitats, fonts oficials, permisos, límits, cost i alternativa manual.
