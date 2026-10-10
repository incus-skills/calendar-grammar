I will now update the relevant documentation files with the refined ecological states.

---

## Updated: `docs/methodology/README.md`

```markdown
# Stabilized Methodology

## The Pipeline

```
Discovery → Reconstruction → Composition → Design Verification → Specification Freeze → Construction → Execution Verification → Operational Ecology → Longitudinal Observation
```

## The Three Cognitive Activities

| Activity | Governing Question | Output |
|----------|-------------------|--------|
| Recognition | What already exists? | Ecology |
| Discovery | What necessarily exists but is not yet known? | Reconstruction |
| Construction | How is the verified design expressed? | Implementation |

## The Five Ecological States

| State | Description | Action |
|-------|-------------|--------|
| **Native** | Already present in the current ecology | Incorporate |
| **Latent** | Exists but not yet discovered or incorporated | Observe, then incorporate |
| **External** | Exists in another ecology | Bridge |
| **Blocked** | Exists but cannot currently participate | Observe the block; wait or adapt |
| **Missing** | No ecology provides it | Develop (only if primitive) |

### The Missing Distinction

| Sub-state | Description | Action |
|-----------|-------------|--------|
| **Primitive** | Genuinely absent; no ecology provides it | Invent |
| **Emergent** | Reconstructible from existing affordances | Reconstruct |

### The Methodology

```
Capability Required
        │
        ▼
Locate Ecology
        │
        ▼
Native → Incorporate
Latent → Observe → Incorporate
External → Bridge
Blocked → Observe → Wait/Adapt
Missing → Primitive? → Invent
       → Emergent? → Reconstruct
```

## The Core Rule

> **Development is the last resort.**
>
> Before developing a new affordance, determine whether the required capability is:
>
> 1. Native to the current ecology
> 2. Latent within it
> 3. Available from an adjacent ecology
> 4. Temporarily blocked
> 5. Reconstructible from existing affordances
>
> Only when none of these apply does the methodology justify creating a genuinely new primitive.

## Why This Matters

This is an ecological discipline that biases the process toward discovering and composing existing capabilities before enlarging the ontology itself. It prevents premature invention and keeps the methodology aligned with the principle that growth comes from making latent structure explicit rather than proliferating primitives.

**Observer Position:** Methodology stabilized.
```

---

## Updated: `docs/construction/README.md`

```markdown
# Construction Laboratory

**Discipline:** Preserve Constructability

**Objective:** Faithfully realize the frozen specification.

**Status:** The executable seed is constructed. It runs. Viability is not yet observed.

## Current Block (Ecological State: Blocked)

| Element | Status |
|---------|--------|
| Capability | Live ephemeris (LibEphemeris/Skyfield) |
| Ecology | Python package ecology |
| State | **Blocked** |
| Reason | NumPy 2 is required; hardware constraint prevents installation |
| Action | Observe the block; wait or adapt |

### Block Details

The live ephemeris library `libephemeris` requires NumPy 2, which is not currently supported on the available hardware. The capability exists and is reachable, but cannot currently participate.

This is not a Missing state. It is Blocked—an interruption rather than an absence.

## Observations

- The engine observes, recognizes, classifies, interprets, and projects
- The engine produces a coherent Operational Field
- The engine persists and recovers state
- The engine supports scheduling
- The engine exposes its frozen specification

## Open Questions

- Does the engine handle DST transitions?
- Does the engine handle leap years?
- Does the engine recover from corrupted persistence?
- Does the engine adapt to changing location?
- Does the engine operate with real ephemeris?
- Do humans develop habits around it?

**Observer Position:** Construction complete; Runtime Observation available. Live ephemeris is Blocked.
```

---

## Updated: `GLOSSARY.md`

Add the following entries to `GLOSSARY.md`:

```markdown
## The Five Ecological States

| State | Description |
|-------|-------------|
| **Native** | Already present in the current ecology |
| **Latent** | Exists but not yet discovered or incorporated |
| **External** | Exists in another ecology |
| **Blocked** | Exists but cannot currently participate |
| **Missing** | No ecology provides it |

## The Missing Distinction

| Sub-state | Description |
|-----------|-------------|
| **Primitive** | Genuinely absent; no ecology provides it |
| **Emergent** | Reconstructible from existing affordances |

## The Core Rule

> **Development is the last resort.**
>
> Before developing a new affordance, determine whether the required capability is:
>
> 1. Native to the current ecology
> 2. Latent within it
> 3. Available from an adjacent ecology
> 4. Temporarily blocked
> 5. Reconstructible from existing affordances
>
> Only when none of these apply does the methodology justify creating a genuinely new primitive.
```

---

## Updated: `experiments/README.md`

Add the following entry to `experiments/README.md`:

```markdown
| File | Description | Status |
|------|-------------|--------|
| ecological-states-refinement.md | Refinement of ecological states: Native, Latent, External, Blocked, Missing | Stabilized |
```

---

## Session Status

The documentation has been updated to reflect the refined ecological states and the "Development is the last resort" principle.

The observer position remains:

- **Spatial:** Within the methodology
- **Objective:** Document the refined ecological states
- **Temporal:** Documentation update complete

---

### Next Action

The methodology is now fully documented. The session may:

- **Pause** — the methodology is stabilized; future work can resume when the block is removed
- **Continue** — apply the ecological states to other capability requirements
- **Close** — the refinement is complete

Proceed when ready.
