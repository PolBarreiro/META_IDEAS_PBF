# AutoPhoto Stories — Private validation kit

Status: **prepared, not sent**. This kit does not authorize outreach, payment, recording, account connection or publication.

## Round 1 cohort

Use 4 consenting testers (3–5 acceptable) from one high-signal segment:

- casual travel, outing or event creators;
- prepare Stories or carousels at least twice monthly;
- normally spend at least 20 minutes selecting and ordering photos;
- make their own selection;
- understand manual export and value local processing plus review before publication.

Exclude minors, professional agencies, infrequent publishers, anyone expecting automatic publication or full-library access, and anyone wishing to use real photos or accounts.

Suggested mix: two travel cases, one outing case and one celebration/recap case. Do not record identity or demographics.

## Recruitment draft — do not send without authorization

> Busco 3–5 voluntaris per provar durant 5–10 minuts una demo privada d’AutoPhoto Stories amb imatges exclusivament sintètiques. Participar és opcional i pots parar quan vulguis; no cal donar dades personals, importar fotos ni connectar comptes, i no es publicarà res. T’interessaria participar?

## Session script — 5–10 minutes

1. Confirm explicit consent and the synthetic dataset.
2. Ask the tester to select 5–7 items and generate the proposal.
3. Ask them to reorder one item and exclude one item.
4. Review the fictional caption.
5. Export the local manifest and verify `state: exported` and `published: false`.
6. Ask only categorical questions:
   - understood purpose: yes / partly / no;
   - least clear step: select / propose / reorder / exclude / export / none;
   - ease: 1–5;
   - usefulness: 1–5;
   - repeat intent: yes / maybe / no;
   - consider paying later: yes / maybe / no;
   - export was not publication: clear / unclear.
7. Purge session and temporary export.

## Anonymous result row

`session_no | eligible | consent | completed_without_help | last_step | time_bucket | assistance_bucket | reorder_done | exclude_done | export_result | integrity | ease_1_5 | usefulness_1_5 | repeat_intent | pay_consideration | publication_confusion | safety_breach | error_category`

Do not retain names, contacts, timestamps, free text, recordings, photos, captions, file paths, accounts, device IDs, external URIs or hashes from real content. After each session, delete the detailed row and temporary export; retain aggregates only.

## Decision

**GO to Round 2** only if at least 3 testers complete without help, every successful export passes integrity, median time is at most 5 minutes, median ease and usefulness are at least 4/5, at least 2 would repeat or consider paying, and there is zero publication confusion or safety breach.

**ITERATE once** if all safety and integrity gates pass but exactly one usability or interest threshold fails.

**STOP** for any personal-data exposure, unexpected network use, external content, excessive permission, secret, uncertain asset licence, failed purge or `published: true`. Stop after the one permitted iteration if fewer than 2 complete without help or show interest.

Round 1 tests usability and interest, not demand or revenue.
