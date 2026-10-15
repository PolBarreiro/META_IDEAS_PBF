# Quest Link compatibility — gap validation

Date: 2026-10-15. Status: **inspect before build**.

## Existing official baseline

Meta Horizon Link already provides:

- a cable setup flow that returns a Compatible or Incompatible result;
- a built-in USB speed test;
- a documented 2 Gbps target for colour passthrough;
- Windows and GPU requirements;
- compatibility warnings inside the PC app.

Primary references:

- [Use Link for App Development](https://developers.meta.com/vr/documentation/unity/unity-link/)
- [Hardware and software requirements](https://developers.meta.com/vr/documentation/unity/unity-development-requirements/)
- [Passthrough over Link](https://developers.meta.com/vr/documentation/native/android/mobile-passthrough-over-link/)

Therefore a generic CPU/GPU/cable checker would duplicate existing functionality and has weak defensibility.

## Differentiated hypothesis

The only promising gap is an **explainable, local report** that combines existing official checks with actionable diagnosis across CPU, GPU, RAM, USB path, driver/runtime state and, for Air Link, network conditions.

The report must not claim official certification, upload telemetry, recommend purchases by default or replace Meta's own tests.

## Zero-cost validation

Before writing code:

1. Define 10 synthetic PC configurations, including unsupported, borderline and misleading cases.
2. For each case, write the expected official result and the additional explanation a user would need.
3. Compare every proposed field against what Meta Horizon Link already exposes.
4. Remove fields that merely reproduce the official test.
5. Only with explicit outreach authorization, test the static report with 5 consenting PCVR users; collect categorical results only.

## Decision gate

**GO to a read-only prototype** only if all conditions pass:

- at least 3 of 5 users have an unresolved diagnostic question after the official flow;
- the proposed report gives a distinct, actionable explanation in those cases;
- at least 2 would pay €9–15 or would have avoided a support request or mistaken purchase;
- no administrator access, telemetry, account login or hardware purchase is required;
- implementation can use original code and a commercially suitable licence.

**PIVOT** to a support checklist or retailer/OEM white-label report if the gap exists but end users will not pay.

**STOP** if Meta's official tools already answer the tested questions, fewer than 2 users show value, the compatibility data cannot be maintained reliably, or the report would require unsupported/private APIs.

No code, outreach, affiliate links or purchases are authorized by this document.
