# AutoPhoto Stories — Validation protocol

## Purpose

Test whether the private synthetic demo is understandable, useful and worth advancing before publishing code or connecting real accounts. This protocol does not prove demand or revenue.

## Scope

### Round 1 — usability smoke test

Run **3–5 consenting sessions**. Use only the private demo and dataset `synthetic-day-001`.

Success allows a larger commercial test; it does not authorize Android development, account connections or outreach.

### Round 2 — commercial signal

Only after Round 1 passes, test with at least 10 qualified participants who prepare Stories or photo carousels at least twice per month. No charge is collected and the hypothetical price is not an offer.

## Minimum consent

Explain before starting:

> This is a local prototype using synthetic media only. Do not import personal content or connect an account. Nothing will be published and no personal data should be recorded.

Participation is optional and may stop at any time.

## Prohibited data

Do not collect real photos, video, audio, names, faces, locations, EXIF, contacts, email, device/account identifiers, external URIs, credentials, secrets, personal free text or hashes derived from real content.

## Round 1 session — 5–10 minutes

1. Start with a clean session and confirm the synthetic dataset.
2. Select 5–7 items.
3. Generate the deterministic narrative proposal.
4. Reorder one item, exclude one item and review the fictional caption.
5. Prepare and download the local manifest.
6. Verify the manifest says `exported` and `published: false`.
7. Complete the short survey.
8. Purge the session and temporary export.

The demo must not open Google Photos, Instagram, a share sheet or any external connector.

## Anonymous result row

One row per session:

`session_no | completed_without_help | last_step | time_bucket | assistance_count | reorder_n | exclude_n | export_result | export_integrity | ease_1_5 | usefulness_1_5 | repeat_intent | pay_intent | publication_confusion | error_category | short_nonpersonal_observation`

Do not store timestamps, names, media, captions, file paths, accounts or persistent identifiers.

## Round 1 decision

### GO to commercial-signal test

All mandatory conditions pass:

- at least 3 participants complete without help;
- every successful export passes integrity checks;
- median time is 5 minutes or less;
- median ease and usefulness are at least 4/5;
- at least 2 participants would repeat the use or consider paying;
- zero publication confusion;
- zero personal data, external network use or publication.

### ITERATE once

Privacy and export integrity pass, but exactly one usability or interest threshold fails. Fix the observed problem and repeat one bounded round.

### STOP or PIVOT

Stop immediately for any data leak, unexpected network request, excessive permission, external file access, secret, uncertain asset licence, failed purge or `published` state. Also stop or pivot after the permitted iteration if fewer than 2 participants finish without help or show interest.

Safety thresholds cannot be offset by commercial interest.

## Round 2 commercial hypothesis

Initial segment: travellers or casual creators who publish at least twice monthly, spend 20 minutes or more selecting and ordering photos, and value local processing.

Test a hypothetical **€4.99 one-time price**. Ask about recent behaviour, time spent, main pain, expected future use, preferred price/model and missing assurances.

Suggested signal:

- **GO:** at least 40% select €4.99 or more, at least 60% expect to use it, and at least 6/10 confirm the time/pain threshold.
- **PIVOT:** 20–39% select €4.99 or more, or the pain is real but a lower/free model dominates.
- **STOP:** below 20% price acceptance, below 40% expected use, or fewer than 4/10 meet the pain threshold.

Stated intent is not a sale. Real demand requires later evidence of repeated use or authorized payment.

## Retention and purge

Retain only aggregate results, synthetic IDs, dataset seed/version, synthetic hashes and pass/fail. Temporary drafts and manifests are deleted after each session; verify the session is clean before the next participant.
