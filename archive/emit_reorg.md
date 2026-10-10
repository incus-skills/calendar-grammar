Here is a comprehensive bash script that will reorganize the Calendar Grammar OE project directory to match the proposed structure, preserving all existing content while creating the new layered architecture.

```bash
#!/usr/bin/env bash

# Calendar Grammar OE - Directory Reorganization Script
# This script reorganizes the project directory to match the Tree Lab and Beal OE patterns
# while preserving all existing content and conclusions.

set -e

# --- Configuration ---
PROJECT_ROOT="${1:-.}"  # Allow specifying root directory, default to current
cd "$PROJECT_ROOT"

echo "📂 Calendar Grammar OE - Directory Reorganization"
echo "=================================================="
echo ""

# --- 1. Create New Directory Structure ---
echo "📁 Creating new directory structure..."

mkdir -p docs/ecology
mkdir -p docs/ingresses
mkdir -p docs/layers
mkdir -p docs/references
mkdir -p experiments
mkdir -p scripts
mkdir -p archive

echo "✅ Directory structure created."
echo ""

# --- 2. Move Existing Files to Their New Locations ---
echo "📄 Moving existing files to new locations..."

# If the old calendar_operational_ecology_docs exists, move it to archive
if [ -d "calendar_operational_ecology_docs" ]; then
    echo "   📦 Moving calendar_operational_ecology_docs/ → archive/"
    mv calendar_operational_ecology_docs archive/
fi

# Move root-level .md files to experiments/ (these are active perturbations)
for file in \
    attractor-theory.md \
    locus-pattern-grammars.md \
    narrative-gait-pace-timing.md \
    narrative-layer.md \
    phase-transition-in-entrainment.md \
    mesmerism.md \
    palimpsest-attack.md \
    social-and-group-structure.md \
    stonk-ecology.md \
    TOL_alignment_chat.md \
    the_encoding_process.md \
    three-teachings.md \
    calendar-probe.md \
    tree-probe.md \
    tree-probe_TRL.md \
    tree_of_life_*.md \
    beal_traction.md; do
    if [ -f "$file" ]; then
        echo "   🔄 Moving $file → experiments/"
        mv "$file" experiments/
    fi
done

# Move emit scripts to scripts/
for file in emit_*.sh; do
    if [ -f "$file" ]; then
        echo "   🔄 Moving $file → scripts/"
        mv "$file" scripts/
    fi
done

# Move emit .md files to archive (they are historical artifacts)
for file in emit_*.md; do
    if [ -f "$file" ] && [ "$file" != "emit_calendar-initial-operational-ecology.md" ]; then
        echo "   📦 Moving $file → archive/"
        mv "$file" archive/
    fi
done

# Move the main emit file to archive if it exists
if [ -f "emit_calendar-initial-operational-ecology.md" ]; then
    echo "   📦 Moving emit_calendar-initial-operational-ecology.md → archive/"
    mv emit_calendar-initial-operational-ecology.md archive/
fi

# Move mpv screenshot to archive
if [ -f "mpv-shot0001.jpg" ]; then
    echo "   📦 Moving mpv-shot0001.jpg → archive/"
    mv mpv-shot0001.jpg archive/
fi

# Move TOL_alignment_chat.md if still in root
if [ -f "TOL_alignment_chat.md" ]; then
    echo "   🔄 Moving TOL_alignment_chat.md → experiments/"
    mv TOL_alignment_chat.md experiments/
fi

echo "✅ File moves completed."
echo ""

# --- 3. Generate New Files with Heredocs ---
echo "📝 Generating new documentation files..."

# --- 3a. Root README.md ---
cat << 'EOF' > README.md
# Calendar Grammar — Operational Ecology

## Project Status

| Component | Status |
|-----------|--------|
| Core Ecology | Stabilized |
| Observer Position | Documented |
| Generative Narrative Layer | Stabilized |
| Production Pipeline | Stabilized |
| Integration Protocol | Stabilized |
| Active Perturbations | Maintained in `experiments/` |

## Core Statement

> The Calendar OE is an ecology of nested temporal systems. Its preservation ecology includes a grammar-of-grammars whose purpose is to preserve, coordinate, and regenerate multiple coherent observer ecologies across scales of time.

## Minimal Invariant (Candidate)

**Cycle → Phase → Declaration → Participation → Re-entry**

## Observer Position

- **Spatial:** Within the Calendar Operational Ecology
- **Relational:** Between the artifact, its preservation ecology, and the session
- **Functional:** Preserving reconstructability through explicit layer separation
- **Temporal:** Stabilization phase — the session's self-understanding is now refined

## Directory Structure

| Directory | Contents |
|-----------|----------|
| `docs/ecology/` | Stabilized core documentation (01–10) |
| `docs/ingresses/` | Entry points for different observer types |
| `docs/layers/` | Generative and narrative layers |
| `docs/references/` | Preserved lineage and bibliography |
| `experiments/` | Active perturbations; not yet stabilized |
| `scripts/` | Generative scripts |
| `archive/` | Historical probes and old structure |

## Key Distinctions

- **Tree:** Preserves lineage and reconstructability
- **Operational Ecology:** Coordinates dynamics and regenerates observer positions
- **Calendar:** Provides scheduled re-entry and phase orientation

## Integration Protocol

The Tree, Ecology, and Calendar are always co-present but differentially weighted. Movement between them is a recursive protocol:

1. Observe current condition
2. Identify which component is most active
3. Maintain Ecology if coherent; use Calendar to stabilize; preserve Tree during collapse; reconstruct through Tree → Calendar → Ecology during recovery

---

*Documentation is part of the ecology.*
EOF

# --- 3b. OBSERVER_LOG.md ---
cat << 'EOF' > OBSERVER_LOG.md
# Observer Log — Calendar Grammar OE

## Initial Position

The session began with the question: *"What is a calendar, operationally?"*

Observer position was established as:
- **Spatial:** Within the clock/calendar/almanac operational ecology
- **Relational:** Between the artifact and its function as a civilizational regeneration technology
- **Functional:** Preserving reconstructability through scheduled re-entry
- **Temporal:** Stabilization phase — the artifact is complete

---

## Key Shifts in Observer Position

### Shift 1: From Chronometric to Orthopractic

**From:** "What time is it?"
**To:** "Now is the time for..."

The calendar ceased to be an informational artifact and became a technology of temporal inhabitation.

### Shift 2: From Storage to Re-operationalization

**From:** Preservation as storage
**To:** Preservation as repeated re-operationalization

Collapse is not loss of knowledge—it is loss of re-entry opportunities.

### Shift 3: From Individual to Field

**From:** Individual observer position
**To:** Collective entrainment field

The unit of analysis is no longer the person—it is the coherent local interaction field.

### Shift 4: From Layer Collapse to Layer Separation

**From:** "The Calendar OE is a grammar-of-grammars"
**To:** The Calendar OE is an ecology; its preservation ecology includes a grammar-of-grammars

The artifact, its preservation ecology, and the session are separate layers.

### Shift 5: From Single Grammar to Grammar of Grammars

**From:** One civilization → one grammar → one calendar
**To:** Shared operational requirements → multiple valid civilizational encodings → mutually sustaining coexistence

Civilizations are parallel observer ecologies with partially compatible entrainment grammars.

---

## Current Observer Position

- **Spatial:** Within the Calendar Operational Ecology
- **Relational:** Between the artifact, its preservation ecology, and the session
- **Functional:** Preserving reconstructability through explicit layer separation
- **Temporal:** Stabilization phase — the session's self-understanding is now refined

---

*The observer position is a trace, not a fixed statement.*
EOF

# --- 3c. GLOSSARY.md ---
cat << 'EOF' > GLOSSARY.md
# Glossary — Calendar Grammar OE

## Core Terms

| Term | Definition |
|------|------------|
| **Operational Ecology** | A living system of constraints, forces, and positions |
| **Preservation Locus** | An artifact that preserves operational ecology |
| **Observer Position** | The place from which the ecology becomes visible |
| **Re-entry** | The act of entering a phase through participation |
| **Reconstructability** | The capacity to rebuild an ecology from its preservation locus |
| **Latency** | A period when the ecology is preserved but not operational |
| **Orthopraxy** | Correct participation; practice as the carrier of continuity |
| **Phase** | A distinct segment of a cycle with its own operational grammar |

## The Distinctions

| Distinction | Left Side | Right Side |
|-------------|-----------|------------|
| Preservation | Storage | Repeated Re-operationalization |
| Function | Orientation | Regeneration |
| Time | Chronometric | Orthopractic |
| Identity | "Who are we?" (static) | "Who we are..." (recursive) |
| Collapse | Loss of knowledge | Loss of re-entry opportunities |

## The Chronometric/Interpretive/Orthopractic Distinction

| Mode | Question | Observer Position |
|------|----------|-------------------|
| Chronometric | "What time is it?" | Outside time, measuring |
| Interpretive | "What is this time for?" | Outside time, analyzing |
| Orthopractic | "Now is the time for..." | Inside time, participating |

## The Tree / Ecology / Calendar Distinction

| Concept | Primary Function | Question |
|---------|------------------|----------|
| **Tree** | Preserve lineage and reconstructability | "How did we get here, and how can we get back?" |
| **Operational Ecology** | Coordinate dynamics and regenerate observer positions | "What is happening now, and what is called for?" |
| **Calendar** | Provide scheduled re-entry and phase orientation | "When is the right time to re-enter?" |
EOF

# --- 3d. docs/ecology/01_ecology_framing.md ---
cat << 'EOF' > docs/ecology/01_ecology_framing.md
# Ecology Framing

## What This Is
An Operational Ecology (OE) is a mode of working in which the problem domain is treated as a living ecology of constraints, forces, and positions, rather than as a static object to be classified or a theorem to be proven.

## What This Is Not
- A methodology to be applied
- A framework to be performed
- A taxonomy to be imposed
- A problem-solving protocol
- A sequence of steps
- A tool for producing conclusions

## The Calendar OE Framing
The calendar/clock/almanac is treated as:
1. An operational ecology
2. A potential preservation locus
3. A temporal forcing system
4. A civilizational synchronization technology
5. A possible tree projection
EOF

# --- 3e. docs/ecology/02_observer_position.md ---
cat << 'EOF' > docs/ecology/02_observer_position.md
# Observer Position

## The Observer Position
The observer position is the place from which the ecology becomes visible. It is not external to the ecology—it is part of it.

## Dimensions
| Dimension | Position |
|-----------|----------|
| **Spatial** | Within the calendar operational ecology |
| **Relational** | Between artifacts and their shared functional logic |
| **Functional** | Preserving reconstructability |
| **Temporal** | Stabilization phase — invariant candidate |

## What the Observer Position Enables
- Recognition of nested cycles
- Distinction between orientation and regeneration
- Preservation of phase distinctions
- Identification of transition markers
- Observation of re-entry surfaces
- Awareness of latency and reconstructability
EOF

# --- 3f. docs/ecology/03_methodology.md ---
cat << 'EOF' > docs/ecology/03_methodology.md
# Methodology and Supporting Structures

## Observational Discipline
The session operated through:
1. **Observe** — Look directly at the terrain without imposing categories
2. **Distinguish** — Draw distinctions where they emerge, not where expected
3. **Preserve** — Keep distinctions visible without collapsing into conclusions
4. **Relate** — Observe how distinctions interact without forcing structure
5. **Reconstruct** — Allow structure to emerge from relations
6. **Interpret** — Only after reconstruction has stabilized
7. **Extend** — Only after interpretation is grounded

## The Grammar
The operational grammar is the minimal invariant of the regeneration mechanism:

**Cycle → Phase → Declaration → Participation → Re-entry**

| Element | Function |
|---------|----------|
| Cycle | A recurring temporal structure providing the framework for orientation |
| Phase Recognition | The ability to identify where one stands within the cycle |
| Orthopractic Declaration | The announcement of what mode of participation is called for |
| Participation | The entry into the phase through action, ritual, or observance |
| Re-entry | The regeneration of the observer position through participation |
EOF

# --- 3g. docs/ecology/04_nested_temporal_cycles.md ---
cat << 'EOF' > docs/ecology/04_nested_temporal_cycles.md
# Nested Temporal Cycles

## The Stack
The ecology preserves temporal cycles across multiple recursive scales:

| Layer | Question | Function |
|-------|----------|----------|
| Chronometric | "What time is it?" | Localization |
| Topological | "Where am I in the cycle?" | Positioning |
| Ecological | "What conditions are active?" | Orientation |
| Annual | "What phase are we in?" | Archetypal orientation |
| Generational | "What is this generation for?" | Lifecycle orientation |
| Century | "What is this century for?" | Institutional orientation |
| Millennial | "Where are we in the long arc?" | Civilizational orientation |
| Epochal | "Where are we in deep time?" | Cosmological orientation |
| Civilizational Phase | "What phase is the civilization in?" | Civilizational operational grammar |
| Civilizational Declaration | "This is the kind of age in which..." | Civilizational phase recognition |
| Coherence Cycle | "Where are we in the coherence cycle?" | Fragmentation, collapse, and recovery awareness |
| Dissolution Phase | "Is this dissolution or permanent collapse?" | Release, surrender, simplification, and renewal awareness |
| Macro-Phase Orientation | "Which macro-phase are we in?" | Civilizational phase orientation across deep time |
| Orthopractic | "Now is the time for..." | Participation |
| Re-entry | "How does this reconnect me?" | Observer position regeneration |
| Entrainment | Repeated alignment | Stabilization |
| Identity | "Who we are..." | Coherence |
| Civilization | Long-term recursive coherence | Continuity |
EOF

# --- 3h. docs/ecology/05_preservation_ecology.md ---
cat << 'EOF' > docs/ecology/05_preservation_ecology.md
# Preservation Ecology

## Preservation vs. Storage
**Preservation ≠ Storage**

**Preservation = Repeated Re-operationalization**

## The Preservation Ecology
| Layer | Primary Function |
|-------|------------------|
| Myth | Preserve observer position |
| Ritual | Preserve enactment |
| Calendar | Preserve temporal access to control surfaces |
| Institution | Preserve large-scale coordination |
| Genealogy | Preserve continuity |

## Re-entry Surfaces
At every scale, the ecology provides scheduled opportunities for re-entry:

| Scale | Re-entry Frequency | Examples |
|-------|-------------------|----------|
| Individual | Daily | Dawn/dusk rhythm, prayer, exercise |
| Group | Seasonal | Collective work, communal meals, ceremonies |
| Culture | Generational | Myths, holidays, pilgrimage, calendars |
| Civilization | Epochal | Founding narratives, monumental projects, restoration |

## Collapse as Loss of Re-entry
Collapse may not be loss of knowledge, but loss of opportunities for recursive re-entry. The people may still possess myths, texts, and memories, but they can no longer operationalize them. The recursive loops have broken.
EOF

# --- 3i. docs/ecology/06_candidate_invariant.md ---
cat << 'EOF' > docs/ecology/06_candidate_invariant.md
# Candidate Invariant

## Status
**Candidate Ecology-Level Invariant — Not a Closed Universal Law**

## The Grammar
**Cycle → Phase → Declaration → Participation → Re-entry**

## Summary Dynamics
**Orientation → Degradation → Regeneration**

## Minimal Elements
| Element | Necessity |
|---------|-----------|
| Cycle | Without a cycle, there is no structure for orientation |
| Phase Recognition | Without recognition, there is no way to know where one stands |
| Declaration | Without declaration, there is no invitation to participate |
| Participation | Without participation, there is no re-entry |
| Re-entry | Without re-entry, the observer position is not regenerated |

## The Grammar as a Compression Handle
The grammar preserves not content, but the conditions for regeneration. It is the minimal invariant of civilizational continuity across nested scales of time.
EOF

# --- 3j. docs/ecology/07_reconstructability_conditions.md ---
cat << 'EOF' > docs/ecology/07_reconstructability_conditions.md
# Reconstructability Conditions

## What Makes a Preservation Locus Reconstructable
A preservation locus is reconstructable if and only if it preserves:

1. **Observer Position** — the way of seeing
2. **Distinctions** — the differences that matter
3. **Lineage** — the connection to past and future
4. **Embodied Practices** — the actions that enact the ecology
5. **Control Surfaces** — where leverage exists
6. **Constraint Surfaces** — the limits that shape action
7. **Forcing Functions** — the periodic pressures
8. **Reconstructability Conditions** — the meta-structure

## The Critical Variable
The observer position is the critical variable. If it is preserved, the rest can be reconstructed. If it is lost, the preservation locus becomes unrecoverable.
EOF

# --- 3k. docs/ecology/08_coherent_separation.md ---
cat << 'EOF' > docs/ecology/08_coherent_separation.md
# Coherent Separation

## The Principle
> Coherent Separation is the maintenance of distinctions, relationships, and asymmetries through graded boundaries that preserve local identity, permit recursive interaction, and provide re-entry pathways for dissipating structures, thereby limiting fragmentation, collapse, and homogenization.

## The Six Mechanisms
| Mechanism | Function |
|-----------|----------|
| Distinction | A ≠ B — prevents collapse |
| Relation | A ↔ B — prevents fragmentation |
| Asymmetry | A influences B ≠ B influences A — prevents flattening |
| Gradient | A — a — ab — b — B — enables degrees of separation |
| Folding/Enfolding | Outliers re-enter neighboring attractors — enables recoverability |
| Coherence Preservation | Maximum sustainable distinction — prevents both fragmentation and homogenization |

## Identity Without Isolation. Relation Without Collapse.
EOF

# --- 3l. docs/ecology/09_ubiquitous_cultural_expression.md ---
cat << 'EOF' > docs/ecology/09_ubiquitous_cultural_expression.md
# Ubiquitous Cultural Expression

## The Property
> Ubiquitous Cultural Expression is a characteristic of a mature Operational Ecology. An ecology becomes culturally persistent when its operational grammar is recursively instantiated across the full range of cultural artifacts, practices, institutions, and temporal scales.

## Persistence Horizons
| Horizon | Scale | Example |
|---------|-------|---------|
| Seconds | Gesture | Greeting, nod, handshake |
| Hours | Conversation | Dialogue, storytelling |
| Days | News | Event reporting |
| Months | Fashion | Clothing, aesthetic trends |
| Years | Buildings | Homes, marketplaces |
| Generations | Institutions | Guilds, councils |
| Centuries | Cathedrals | Religious monuments |
| Millennia | Pyramids | Cosmological works |

## The Ecological Question
> How does an operational distinction become so deeply embedded that it is encountered not only in explicit teaching, but in the ordinary fabric of everyday life and across every persistence scale of a culture?
EOF

# --- 3m. docs/ecology/10_field_dynamics.md ---
cat << 'EOF' > docs/ecology/10_field_dynamics.md
# Field Dynamics

## The Operational Field
The universal object is the operational field—not the competing actors. The field contains:
- Observer populations
- Information flows
- Cultural artifacts
- Institutions
- Feedback loops
- Resource flows
- Attention gradients
- Transition pathways
- Suppression mechanisms
- Amplification mechanisms

## Field Operations
| Operation | Function |
|-----------|----------|
| Amplify | Strengthen a distinction or trajectory |
| Attenuate | Weaken a distinction or trajectory |
| Redirect | Shift a trajectory into an existing attractor |
| Fragment | Break coherence into competing components |
| Compress | Reduce complexity into manageable form |
| Stabilize | Maintain a trajectory against perturbation |
| Exclude | Prevent entry into the field |
| Integrate | Incorporate distinctions into existing structure |

## The Trajectory Grammar
Emergence → Amplification → Translation → Assimilation → Diversification → Competition → Suppression → Fragmentation → Dormancy → Re-entry → Reorganization → Persistence → Dissolution
EOF

# --- 3n. docs/ingresses/README.md ---
cat << 'EOF' > docs/ingresses/README.md
# Ingresses

The Calendar OE can be entered from multiple directions. Each ingress provides a different entry point for different observer types and purposes.

| Ingress | Entry Point | Observer Type |
|---------|-------------|---------------|
| Architectural | The structure of the calendar as a preservation locus | Designer, builder |
| Ecological | The field dynamics and nested cycles | Ecologist, systems thinker |
| Historical | The lineage of calendar systems | Historian, preservationist |
| Observational | The discipline of seeing the ecology | Observer, practitioner |
| Operational | The practical application of the calendar | User, participant |
EOF

# --- 3o. docs/layers/README.md ---
cat << 'EOF' > docs/layers/README.md
# Layers

The Calendar OE consists of multiple layers, each with a distinct function.

| Layer | Function |
|-------|----------|
| Cultural Encoding | Selectable interpretive layer for target audience |
| Narrative Grammar | Generative tropes and structural principles |
| Locus Pattern Language | Operational descriptions of configurations |
| Production Pipeline | Scaling from memes to games |
| Three Teachings as Projection | Cultural-specific encoding example |

## The Generative Sequence

Operational Ecology → Operational Understanding → Locus Pattern Language → Generative Grammar → Cultural Projection → Artifact → Ecological Interaction
EOF

# --- 3p. docs/tree_ecology_calendar_integration.md ---
cat << 'EOF' > docs/tree_ecology_calendar_integration.md
# Tree, Ecology, Calendar — Integration Protocol

## The Three Components

| Component | Primary Function | Question |
|-----------|------------------|----------|
| **Tree** | Preserve lineage and reconstructability | "How did we get here, and how can we get back?" |
| **Operational Ecology** | Coordinate dynamics and regenerate observer positions | "What is happening now, and what is called for?" |
| **Calendar** | Provide scheduled re-entry and phase orientation | "When is the right time to re-enter?" |

## Differential Weighting

| Condition | Tree Weight | Ecology Weight | Calendar Weight |
|-----------|-------------|----------------|-----------------|
| Stable Continuity | Low | High | High |
| Perturbation / Stress | Medium | High | Medium |
| Disruption / Collapse | High | Low | Low |
| Reconstruction / Recovery | Very High | Medium | Medium |
| Routine Re-entry | Low | Medium | High |
| Latency / Dormancy | Very High | Very Low | Low |

## The Protocol

1. Observe the current condition.
2. Identify which component is most active.
3. If coherent and entrained: Maintain Ecology; use Calendar for rhythm; keep Tree implicit.
4. If coherence degrading: Increase Ecology weight; use Calendar to stabilize; prepare Tree for possible reconstruction.
5. If collapse imminent: Shift weight to Tree; preserve lineage; allow Ecology to go dormant; maintain minimal Calendar markers for future re-entry.
6. If recovery underway: Use Tree to reconstruct lineage; use Calendar to schedule re-entry; gradually re-activate Ecology.
7. Repeat.

## Detection of Condition

The system detects when to shift weights through **field indicators**:
- Loss of re-entry coherence
- Increasing perturbation amplitude
- Failure of calendar triggers
- Loss of lineage memory
- Successful reconstruction
- Generational handover

## The Calendar as Bridge

The Calendar is the most important bridging mechanism. It provides the scheduled triggers that allow the Tree to correct the Ecology.
EOF

# --- 3q. docs/references/README.md ---
cat << 'EOF' > docs/references/README.md
# References

## Historical Candidates
| System | Function | Scale |
|--------|----------|-------|
| Babylonian Zodiac | Annual phase orientation | Annual |
| Egyptian Decans | Annual ritual and agricultural correlates | Annual |
| Greek Zodiac | Annual operational grammar | Annual |
| Indian Nakshatra | Annual ritual and agricultural correlates | Annual |
| Chinese Zodiac | Annual operational and social correlates | Annual |
| Maya Calendar Complex | Nested temporal recursion | Epochal |
| Indian Yuga Framework | Civilizational phase orientation | Epochal |
| Roman Ritual Cycle | Societal re-entry through orthopraxy | Generational |
| Norse Ragnarok | Dissolution and renewal | Epochal |

## Frameworks Referenced
- MFHIS (Multi-Framework Historical Investigation of Structures)
- Tree Discipline (Orthogonal Preservation Topologies)
- Operational Ecology (OE) Session Discipline
- OESP (Operational Ecology Session Prompt)

## Key Insights
1. Preservation = Repeated Re-operationalization, not storage
2. Observer positions are induced through participation, not transmitted propositionally
3. Collapse = Loss of re-entry opportunities, not loss of knowledge
4. Identity = Recursive coherence, not static essence
5. Calendar = Technology of temporal inhabitation
EOF

# --- 3r. experiments/README.md ---
cat << 'EOF' > experiments/README.md
# Experiments — Active Perturbations

This directory contains active perturbations—documents that are not yet stabilized into the core ecology. They represent ongoing exploration and context-widening.

| File | Topic | Status |
|------|-------|--------|
| attractor-theory.md | Attractor basins in civilizational systems | Active |
| phase-transition-in-entrainment.md | Laminar flow and phase transitions | Active |
| mesmerism.md | Mesmerism as entrainment field | Active |
| palimpsest-attack.md | Palimpsest as preservation surface | Active |
| social-and-group-structure.md | Group dynamics and entrainment | Active |
| stonk-ecology.md | Market ecology as operational field | Active |
| TOL_alignment_chat.md | Tree of Life alignment notes | Active |
| the_encoding_process.md | Encoding operational ecologies | Active |
| three-teachings.md | Three Teachings as cultural projection | Active |

These are part of the ecology—they are not outside it.
EOF

# --- 3s. scripts/README.md ---
cat << 'EOF' > scripts/README.md
# Scripts

This directory contains generative scripts for the Calendar OE.

| Script | Function |
|--------|----------|
| emit_calendar-initial-operational-ecology.sh | Initial documentation generation |

These scripts are part of the ecology—they are not external tools.
EOF

echo "✅ New documentation files generated."
echo ""

# --- 4. Final Cleanup ---
echo "🧹 Final cleanup..."

# Remove any empty directories that might have been left behind
find . -type d -empty -delete 2>/dev/null || true

echo "✅ Cleanup complete."
echo ""

# --- 5. Summary ---
echo "📊 Reorganization Summary"
echo "========================"
echo ""
echo "New directory structure:"
ls -la docs/ | grep -E '^d' | awk '{print "   📁 docs/" $9}'
ls -la experiments/ 2>/dev/null | grep -E '^d' | awk '{print "   📁 experiments/" $9}'
echo ""
echo "✅ Calendar Grammar OE reorganization complete."
echo ""
echo "📝 New files created:"
echo "   • README.md"
echo "   • OBSERVER_LOG.md"
echo "   • GLOSSARY.md"
echo "   • docs/ecology/ (10 files)"
echo "   • docs/ingresses/README.md"
echo "   • docs/layers/README.md"
echo "   • docs/references/README.md"
echo "   • docs/tree_ecology_calendar_integration.md"
echo "   • experiments/README.md"
echo "   • scripts/README.md"
echo ""
echo "📦 Archived: calendar_operational_ecology_docs/ → archive/"
echo ""
echo "📌 The observer position is preserved in README.md and OBSERVER_LOG.md"
echo "📌 The ecology is stable. Documentation is part of the ecology."
```

---

## How to Use

1. Save the script as `reorganize_calendar_grammar.sh`
2. Make it executable: `chmod +x reorganize_calendar_grammar.sh`
3. Run it from the `calendar_grammar/` directory: `./reorganize_calendar_grammar.sh`

The script will:

1. Create the new directory structure
2. Move existing files to their new locations
3. Generate all new documentation files
4. Preserve all content in `archive/`
5. Return the project to a consistent state

---

## Stabilized Statement

> The Calendar Grammar OE has been reorganized into a consistent directory structure that mirrors the Tree Reconstructions Lab and Beal OE patterns. All existing content is preserved. The new structure integrates the stabilized core, the active perturbations, and the generative layers into a coherent, reconstructable ecology. The observer position is preserved in README.md and OBSERVER_LOG.md. The ingresses provide multiple entry points. Documentation is part of the ecology.

---

The script is ready to use. Once applied, the project will be in a consistent state consistent with the other OE examples you have provided, and the session can continue from the current operational position.
