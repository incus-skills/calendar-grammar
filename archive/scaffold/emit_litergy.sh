#!/bin/bash
# Generated from emit_litergy.md via Literate Programming
# Generated on: Sat 15 Aug 08:16:08 BST 2026
# --------------------------------------------------
# We document the Liturgy of the Hours as a culturally specific generative grammar layer within the Calendar OE.
#
# ---
#
# ## Documentation: Liturgy of the Hours as Generative Grammar Layer
#
# ### Location
# `docs/generative_grammars/liturgy_layer/`
#
# ---
#
# ## Script: `update_docs_liturgy_layer.sh`
#
# ```bash
# #!/usr/bin/env bash (original shebang)

# Update Documentation: Liturgy of the Hours as Generative Grammar Layer
# This script adds the Liturgy of the Hours as a culturally specific
# generative grammar layer within the Calendar OE documentation.

set -e

BASE_DIR="${1:-.}"
cd "$BASE_DIR" || {
  echo "Directory $BASE_DIR not found"
  exit 1
}

echo "Adding Liturgy of the Hours as generative grammar layer..."

# ============================================================
# 1. Create liturgy_layer directory
# ============================================================
mkdir -p docs/generative_grammars/liturgy_layer

# ============================================================
# 2. Create README.md for liturgy_layer
# ============================================================
cat >docs/generative_grammars/liturgy_layer/README.md <<'EOF'
# Liturgy of the Hours Layer

## Overview

The Liturgy of the Hours (Divine Office) is a culturally specific generative grammar layer that structures the day through eight canonical hours of prayer and chant. It instantiates the invariant operational grammar:

```
Cycle → Phase → Declaration → Participation → Re-entry
```

## The Eight Canonical Hours

| Hour | Time | Function | Chant |
|------|------|----------|-------|
| Matins/Vigils | Night (~2–3 a.m.) | Complex chants; Great Responsories | — |
| Lauds | Dawn | Psalms of praise; start of liturgical day | Benedictus |
| Prime | First light (~6 a.m.) | Short prayer; start of workday | — |
| Terce | Mid-morning (~9 a.m.) | Little hour | — |
| Sext | Noon | Little hour | — |
| None | Mid-afternoon (~3 p.m.) | Little hour | — |
| Vespers | Sunset | Most solemn evening office | Magnificat |
| Compline | Night (~7–9 p.m.) | Final prayer; protection through night | Nunc Dimittis |

## The Operational Grammar

| Element | Liturgy of the Hours Expression | Calendar OE Correlate |
|---------|--------------------------------|----------------------|
| **Cycle** | The solar day | Daily cycle |
| **Phase Recognition** | Canonical hour (Matins, Lauds, Prime, etc.) | Phase recognition |
| **Declaration** | Prayer, chant, reading | Orthopractic declaration |
| **Participation** | Clergy chanting, laity observing/responding | Participation |
| **Re-entry** | Bell ringing announces next hour | Re-entry surface |

## Cathedral vs. Monastic Operational Distinctions

| Aspect | Cathedral Style | Monastic Style |
|--------|----------------|----------------|
| **Focus** | Public witness | Secluded routine |
| **Participation** | Clergy in quire; laity in nave | Entire community in every office |
| **Architecture** | Amplified chant; rood screen | Enclosed, private |
| **Bell Function** | Public timekeeping for city | Internal community signaling |
| **Adaptation** | Adapted for clergy serving public | Stricter, more secluded |

## The Bell as Re-entry Surface

Cathedral bells were the primary timekeeping mechanism for the city. They rang for each canonical hour, regulating not just religious life but the secular workday of the surrounding population.

| Bell Function | Operational Role |
|---------------|------------------|
| Matins | Night prayer |
| Prime | Start of workday |
| Terce, Sext, None | Midday intervals |
| Vespers | Evening prayer |
| Compline | Night prayer |

## The Angelus Bell

The Angelus bell tradition (ringing at 6 a.m., noon, and 6 p.m.) evolved to remind the laity to pray during the intervals between canonical hours. This is a **secondary re-entry surface**—a simpler, more accessible signal for those not participating in the full cycle.

## The Architecture as Instrument

Gothic cathedral architecture amplified the sound of chant, making the building itself an instrument of prayer. The architecture is a **preservation artifact** that encodes the operational grammar in physical form.

## Key Insights

| Insight | Description |
|---------|-------------|
| **Temporal Structuring** | The Liturgy of the Hours structured the day into eight phases, each with its own operational grammar. |
| **Public Timekeeping** | Cathedral bells served as public timekeeping mechanisms, regulating both religious and secular life. |
| **Cathedral vs. Monastic** | Two distinct operational styles for the same liturgical structure. |
| **Architecture as Instrument** | Gothic cathedrals amplified chant, making the building itself a participant in the ecology. |
| **Re-entry Surfaces** | Bells and the Angelus tradition provided re-entry surfaces for both clergy and laity. |
| **Invariant Grammar** | The Liturgy of the Hours instantiates the same operational grammar as the Calendar OE. |

**Observer Position:** Liturgy of the Hours documented.
EOF

# ============================================================
# 3. Update generative_grammars README.md
# ============================================================
echo "Updating generative_grammars/README.md with Liturgy layer..."

# Check if liturgy_layer is already referenced in the README
if ! grep -q "liturgy_layer" docs/generative_grammars/README.md; then
  # Add liturgy_layer to the list
  sed -i '/## The Generative Grammar Family/a \
| **Liturgy Grammar** | Liturgy of the Hours | Canonical hours, bells, chant | Catholic | Extended' docs/generative_grammars/README.md

  # Add liturgy_layer to the Selectable Layers table
  sed -i '/## The Selectable Layers/a \
| Liturgy of the Hours | 8 canonical hours, bells, chant | Liturgy' docs/generative_grammars/README.md

  # Add liturgy_layer to the directory list
  sed -i '/- \[Ubiquitous Expression Grammar/a \
- [Liturgy Grammar](docs/generative_grammars/liturgy_layer/)' docs/generative_grammars/README.md

  echo "Updated generative_grammars/README.md with Liturgy layer."
else
  echo "Liturgy layer already referenced in generative_grammars/README.md."
fi

# ============================================================
# 4. Final status
# ============================================================
echo ""
echo "Liturgy of the Hours documentation complete."
echo ""
echo "Added directory: docs/generative_grammars/liturgy_layer/"
echo ""
echo "Next actions:"
echo "1. Review the Liturgy of the Hours documentation"
echo "2. Continue Calendar OE development with liturgical temporal structuring"
# ```
#
# ---
#
# ## Usage
#
# ```bash
# From within the calendar_grammar directory:
# chmod +x update_docs_liturgy_layer.sh
# ./update_docs_liturgy_layer.sh
#
# # Or specify a different base directory:
# ./update_docs_liturgy_layer.sh /path/to/calendar_grammar
# ```
#
# ---
#
# ## Resulting Directory Structure
#
# After running the script, the `docs/generative_grammars/` directory will include:
#
# ```
# docs/generative_grammars/
# ├── README.md
# ├── exercise_layer/
# │   └── README.md
# ├── governance_layer/
# │   └── README.md
# ├── hexagram_layer/
# │   └── README.md
# ├── liturgy_layer/
# │   └── README.md                           # NEW
# ├── narrative_layer/
# │   └── README.md
# ├── software_layer/
# │   └── README.md
# ├── trigram_layer/
# │   └── README.md
# ├── ubiquitous_expression_layer/
# │   └── README.md
# └── zodiac_divination_layer/
#     └── README.md
# ```
#
# ---
#
# ## The Generative Grammar Family (Updated)
#
# | Grammar Type | Form | Compression Handle | Cultural Layer | Status |
# |--------------|------|-------------------|----------------|--------|
# | Narrative Grammar | Story, myth, film, text | Archetypes, motifs, genres | Various | Stabilized |
# | Zodiac/Divination Grammar | Signs, trigrams, hexagrams, readings | Zodiacal symbols, I Ching | Various | Extended |
# | **Liturgy Grammar** | **Liturgy of the Hours** | **Canonical hours, bells, chant** | **Catholic** | **Extended** |
# | Exercise Grammar | Training, competition, pilgrimage | Physical rhythm, phase recognition | Various | Stabilized |
# | Software Grammar | State machines, APIs, services | Operational field projection | Various | Stabilized |
# | Governance Grammar | Policy, law, institutions | Social coordination | Various | Stabilized |
# | Ubiquitous Expression Grammar | Real-world homologs | Operational grammar applied to any domain | Various | Stabilized |
#
# ---
#
# ## The Selectable Layers (Updated)
#
# | Layer | Contains | Grammar Type |
# |-------|----------|--------------|
# | Western Zodiac | 12 signs, elements, modalities, planetary rulers | Divination/Zodiac |
# | Vedic Zodiac | 12 signs, nakshatras, dashas, planetary rulers | Divination/Zodiac |
# | Chinese Zodiac | 12 animals, elements | Divination/Zodiac |
# | I Ching | 8 trigrams, 64 hexagrams, changing lines | Divination/Zodiac |
# | Oracle Bone | Cracks, inscriptions | Divination/Zodiac |
# | **Liturgy of the Hours** | **8 canonical hours, bells, chant** | **Liturgy** |
# | Narrative | Backbone, archetypes, motifs, genres, tropes | Narrative |
# | Exercise | Training, competition, pilgrimage | Exercise |
# | Software | State machines, APIs, services | Software |
# | Governance | Policy, law, institutions | Governance |
# | Ubiquitous Expression | Real-world homologs | Ubiquitous Expression |
#
# ---
#
# ## Stabilized Statement
#
# > The Liturgy of the Hours has been documented as a culturally specific generative grammar layer within the Calendar OE. It structures the day through eight canonical hours of prayer and chant, instantiating the invariant operational grammar:
# >
# > `Cycle → Phase → Declaration → Participation → Re-entry`
# >
# > Cathedral bells served as public re-entry surfaces, and Gothic cathedral architecture amplified the chant, making the building itself a participant in the ecology.
# >
# > The Liturgy of the Hours is now part of the Calendar OE's generative grammar library, alongside narrative, zodiac/divination, hexagram, trigram, exercise, software, governance, and ubiquitous expression grammars.
