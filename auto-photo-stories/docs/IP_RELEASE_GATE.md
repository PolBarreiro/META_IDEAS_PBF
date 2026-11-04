# AutoPhoto Stories — IP and release gate

Status: **NO-GO for public code release**. Private synthetic validation may continue.

## Current treatment

- Keep code and synthetic assets private and proprietary until authorship and provenance are complete.
- Treat already-public documentation under its existing repository terms; do not assume those terms are suitable for software.
- Do not publish enabling technical detail if patent protection may be desired.
- Do not accept external contributions without written rights sufficient for the intended distribution.

## Required release inventory

A candidate commit may be considered only when all gates pass:

- `IP_INVENTORY` covers every file with author, origin and rights holder;
- the project licence clearly separates code, documentation and assets;
- every contributor has granted distribution rights and, if needed, relicensing rights;
- `ASSET_MANIFEST` covers every asset with digest, origin, terms and approval; zero unknown entries;
- dependency lockfiles, SBOM and third-party notices are complete;
- licence compatibility, secrets, personal data and EXIF scans pass;
- the 15-check technical preflight still passes with `published: false`;
- commercial name clearance is completed before launch;
- any patent review happens before further enabling public disclosure;
- the rights holder approves the exact release commit.

Unknown provenance or rights is a failure, not an exception.

## Future licensing options

Choose only after validation:

1. **Proprietary code + EULA** for a closed commercial app.
2. **AGPL-3.0-or-later + commercial licence** only if all code and contributor rights permit dual licensing.

Do not default to MIT or Apache if preserving commercial exclusivity is important. Do not use a Creative Commons licence for software code.
