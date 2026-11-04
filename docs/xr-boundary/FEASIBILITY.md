# XR boundary safety cues — feasibility gate

Status: inspection only. This note is a sanitized product decision, not a safety claim.

## Consolidated concept

Treat the related ideas as one family:

- a supplementary floor-gradient cue;
- a selective portal-like passthrough cue;
- automatic view rotation is excluded because it adds comfort and control risk.

The experiment must complement Meta's system boundary, never replace or suppress it.

## Verified platform overlap and constraints

- Meta already renders a translucent boundary wall and floor marker and can fade passthrough in near the edge.
- Meta's safety guidance says Scene and Passthrough are not substitutes for the system boundary.
- Normal Passthrough is composited by the runtime; the application does not receive raw camera imagery.
- Several legacy Guardian functions for exact intersection and visibility are deprecated or non-functional under current OpenXR.
- Current APIs can expose play-area dimensions, points or transforms. A request to suppress boundary visibility may be rejected by the runtime and is outside this experiment.

Primary references:

- [Meta: Integrate Boundary](https://developers.meta.com/vr/documentation/unity/unity-ovrboundary/)
- [Meta: Passthrough safety](https://developers.meta.com/vr/design/mr-health-passthrough/)
- [Meta: Guardian Blueprints](https://developers.meta.com/vr/documentation/unreal/unreal-blueprints-guardian-blueprints/)
- [Meta: Boundaryless best practices](https://developers.meta.com/vr/design/boundaryless-best-practices/)
- [OpenXR: xrRequestBoundaryVisibilityMETA](https://registry.khronos.org/OpenXR/specs/1.1/man/html/xrRequestBoundaryVisibilityMETA.html)
- [OpenXR: xrGetReferenceSpaceBoundsRect](https://registry.khronos.org/OpenXR/specs/1.0/man/html/xrGetReferenceSpaceBoundsRect.html)

## Decision

**NO-GO:** replacement boundary, boundary suppression, automatic view rotation, or claims of improved safety.

**VALIDATE ONLY:** an app-level supplementary cue rendered inside the known play area while the system boundary remains active.

## Zero-cost validation

Prepare a static synthetic storyboard:

- A — Meta default;
- B — Meta default plus a subtle floor gradient;
- C — Meta default plus a directional portal-like cue.

No headset control, camera access, network call or external contact is required for the first artifact.

## Gate

Proceed to a non-functional prototype only after authorized testing with 5–10 consenting XR users and all of these hold:

- at least 60% prefer one supplementary cue;
- the cue is noticed earlier than the default in the storyboard;
- nobody interprets it as replacing the system boundary;
- it does not obstruct the central or lower field of view;
- no increased discomfort is reported.

Stop if a participant relies on it for safety, the system boundary would need suppression, differentiation disappears, or discomfort increases.

## Score

Weighted portfolio score: **46/100**.

- evidence confidence: 3.5/5;
- buyer/revenue/Pol advantage: 2.5/5;
- validation/conversion/readiness: 1.25/5;
- feasibility, licence and IP control: 2.25/5.
