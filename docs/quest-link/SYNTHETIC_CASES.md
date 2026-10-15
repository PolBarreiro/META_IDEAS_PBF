# Quest Link — synthetic compatibility cases

Date: 2026-10-15. Purpose: compare the proposed explainable report with Meta Horizon Link before any code is written.

These are synthetic cases, not measured user machines. “Candidate gap” means worth testing; it is not proof of demand or accuracy.

| # | Synthetic condition | Existing official signal | Proposed report value | Result |
|---:|---|---|---|---|
| 1 | macOS machine | Link requires Windows 10 or later | None beyond linking to the official requirement | Duplicate — remove |
| 2 | Windows PC, compatible GPU, USB connection below required bandwidth | Built-in USB Test returns connection quality/bandwidth | None unless the report can identify the failing port or hub | Mostly duplicate |
| 3 | Colour passthrough attempted below 2 Gbps | Official documentation and USB Test cover the 2 Gbps requirement | Explain why standard Link might work while colour passthrough does not | Small candidate gap |
| 4 | Headset not detected despite otherwise valid hardware | Official troubleshooting/investigation exists, but the symptom may have multiple causes | Ordered local checklist with device, service and cable state | Candidate gap |
| 5 | New high-end GPU incorrectly flagged incompatible | Meta has documented whitelist/recognition false negatives | Distinguish “not recognised” from “insufficient”, with dated evidence | Strong candidate gap |
| 6 | Laptop uses integrated GPU while a supported discrete GPU exists | Compatibility banner alone may not identify adapter selection | Show active versus available GPU without changing settings | Candidate gap |
| 7 | Air Link uses a weak or unsuitable network topology | Official guidance covers connection requirements and troubleshooting | One local, explainable view of PC Ethernet, Wi-Fi band and route | Candidate gap; verify APIs/privacy |
| 8 | Supported hardware with stale GPU driver/runtime | Official requirements say software must be current, but root cause may remain ambiguous | Report version state and link to official update steps | Candidate gap |
| 9 | Cable/adapter intermittently changes negotiated bandwidth | Built-in USB Test is point-in-time | Repeatable local samples without telemetry, clearly labelled non-certifying | Candidate gap; avoid false certainty |
| 10 | Hardware and cable pass, but the wrong OpenXR runtime is active | Official developer setup explains how to set Meta Horizon Link as active | Read-only runtime check and exact official remediation | Strong candidate gap |

## Review outcome

- **1 case** is a clear duplicate and should be removed.
- **1 case** is mostly covered by the official USB test.
- **8 cases** contain a possible explanatory gap, but only cases 5 and 10 currently have strong documentary support.
- No case justifies code yet: the next gate is a static report test with 5 consenting PCVR users after outreach is explicitly authorized.

## Static report fields worth testing

Only present fields that are locally readable without administrator access:

- operating system family/version;
- active and available GPU names plus driver version;
- RAM category;
- Meta Horizon Link installed/running state;
- active OpenXR runtime;
- current USB negotiated speed when exposed safely;
- Air Link topology summary without SSID, IP address or device identifiers;
- official test result entered manually by the tester;
- explanation, confidence and dated source.

Never upload telemetry, collect serial numbers, change settings, claim Meta certification or recommend a purchase automatically.

## Primary evidence

- [Use Link for App Development](https://developers.meta.com/vr/documentation/unreal/unreal-link/)
- [Hardware and software requirements](https://developers.meta.com/vr/documentation/unity/unity-development-requirements/)
- [Use Passthrough over Link](https://developers.meta.com/vr/documentation/unity/unity-passthrough-use-over-link/)
- [Documented GPU false-positive investigation](https://developers.meta.com/vr/support/investigations/2063108911067599/)
