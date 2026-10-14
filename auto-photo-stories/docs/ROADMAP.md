# Roadmap — AutoPhoto Stories

## Ritme

Una sola unitat petita i revisable per execució. Sense desenvolupament sostingut mentre el consum global compartit no es pugui mesurar ni limitar de manera fiable.

## Fase 0 — Incorporació i viabilitat

- [x] Confirmar que la font esperada no existeix als repositoris GitHub accessibles.
- [x] Crear portada i roadmap mínims, sense codi ni serveis.
- [x] Contrastar capacitats i límits amb documentació oficial de Google Photos APIs, Instagram API i Android.
- [x] Registrar una decisió provisional i alternatives de reutilització a [FEASIBILITY.md](FEASIBILITY.md).

**Resultat:** viable com a flux assistit; les APIs oficials no permeten una selecció cloud autònoma de tota la biblioteca personal de Google Fotos.

## Fase 1 — Producte i arquitectura

- [ ] `docs/PRODUCT.md`: definir el producte inicial com a selecció consentida + proposta narrativa + revisió.
- [ ] `docs/ARCHITECTURE.md`: components i flux de dades.
- [ ] `docs/AUTOMATION.md`: selecció, esborrany, programació i notificacions.
- [ ] `docs/SECURITY_PRIVACY.md`: permisos, credencials, fotos i retenció.
- [ ] `docs/DECISIONS.md`: registre curt de decisions.
- [ ] `docs/PLAY_STORE.md`: requisits de publicació Android.

## Fases posteriors

Només després de validar comptes i permisos:

1. Prototip local amb dades sintètiques.
2. Selecció explícita amb Android Photo Picker o Google Photos Picker.
3. Selecció narrativa revisable.
4. Exportació manual; adaptador Instagram només si el compte professional i permisos es verifiquen.
5. App Android i checklist de Play Store.

## Aprenentatge — 14-10-2026

- No existia una font prèvia accessible; es va crear una base documental mínima.
- Picker API requereix selecció explícita; Library API només gestiona contingut creat per l'app.
- Android Photo Picker és la reutilització de menor privilegi.
- Instagram API publica per a comptes professionals; no s'ha verificat encara el compte ni l'aprovació necessària.
- Records, collages i animacions de Google Fotos no tenen un accés general documentat; no se'n promet automatització.

## Següent pas únic

Crear `docs/PRODUCT.md` amb un MVP explícitament assistit, criteris d'èxit i allò que queda fora d'abast.
