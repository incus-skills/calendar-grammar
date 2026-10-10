I will provide a bash script that updates the existing directory structure to reflect the documented generative grammars and the zodiac/divination grammar type refinement.

---

## Script: `update_docs_generative_grammars.sh`

```bash
#!/usr/bin/env bash

# Update Documentation: Generative Grammars
# This script updates the docs directory to include the generative grammars
# documentation, including the zodiac/divination grammar type refinement.

set -e

BASE_DIR="${1:-.}"
cd "$BASE_DIR" || { echo "Directory $BASE_DIR not found"; exit 1; }

echo "Updating documentation for generative grammars..."

# ============================================================
# 1. Create generative_grammars directory structure
# ============================================================
mkdir -p docs/generative_grammars
mkdir -p docs/generative_grammars/zodiac_divination_layer
mkdir -p docs/generative_grammars/hexagram_layer
mkdir -p docs/generative_grammars/trigram_layer
mkdir -p docs/generative_grammars/narrative_layer
mkdir -p docs/generative_grammars/exercise_layer
mkdir -p docs/generative_grammars/software_layer
mkdir -p docs/generative_grammars/governance_layer
mkdir -p docs/generative_grammars/ubiquitous_expression_layer

# ============================================================
# 2. Create README.md for generative_grammars
# ============================================================
cat > docs/generative_grammars/README.md << 'EOF'
# Generative Grammars

## Overview

The Calendar OE extracts operational language from semantically compressed handles, treating the compression layers as culturally specific and maintaining them separately as selectable layers.

## The Distinction

| Layer | Content | Function | Status |
|-------|---------|----------|--------|
| **Operational Layer** | Cycle, Phase, Declaration, Participation, Re-entry | Invariant grammar | Stabilized |
| **Culturally Specific Layer** | Zodiac, Hexagrams, I Ching, Divination | Selectable compression handles | Extended |

## The Generative Grammar Family

| Grammar Type | Form | Compression Handle | Cultural Layer | Status |
|--------------|------|-------------------|----------------|--------|
| **Narrative Grammar** | Story, myth, film, text | Archetypes, motifs, genres | Various | Stabilized |
| **Zodiac/Divination Grammar** | Signs, trigrams, hexagrams, readings | Zodiacal symbols, I Ching | Various | Extended |
| **Exercise Grammar** | Training, competition, pilgrimage | Physical rhythm, phase recognition | Various | Stabilized |
| **Software Grammar** | State machines, APIs, services | Operational field projection | Various | Stabilized |
| **Governance Grammar** | Policy, law, institutions | Social coordination | Various | Stabilized |
| **Ubiquitous Expression Grammar** | Real-world homologs | Operational grammar applied to any domain | Various | Stabilized |

## The Invariant Grammar

```
Cycle → Phase → Declaration → Participation → Re-entry
```

Each culturally specific layer is an instantiation of this invariant grammar.

## The Selectable Layers

| Layer | Contains | Grammar Type |
|-------|----------|--------------|
| Western Zodiac | 12 signs, elements, modalities, planetary rulers | Divination/Zodiac |
| Vedic Zodiac | 12 signs, nakshatras, dashas, planetary rulers | Divination/Zodiac |
| Chinese Zodiac | 12 animals, elements | Divination/Zodiac |
| I Ching | 8 trigrams, 64 hexagrams, changing lines | Divination/Zodiac |
| Oracle Bone | Cracks, inscriptions | Divination/Zodiac |
| Narrative | Backbone, archetypes, motifs, genres, tropes | Narrative |
| Exercise | Training, competition, pilgrimage | Exercise |
| Software | State machines, APIs, services | Software |
| Governance | Policy, law, institutions | Governance |
| Ubiquitous Expression | Real-world homologs | Ubiquitous Expression |

## Application

These layers can be applied selectively, combined, or replaced depending on the cultural context and audience.

**Observer Position:** Generative grammars documented.
EOF

# ============================================================
# 3. Create zodiac_divination_layer README
# ============================================================
cat > docs/generative_grammars/zodiac_divination_layer/README.md << 'EOF'
# Zodiac/Divination Layer

## Overview

Zodiac and divination are the same generative narrative grammar type, recurring in separate culturally specific instantiations.

## The Invariant Grammar

```
Cycle (Zodiac/Hexagram/Planetary)
    ↓
Phase Recognition (Sign/Trigram/Planetary Position)
    ↓
Declaration (Reading/Interpretation)
    ↓
Participation (Action/Decision)
    ↓
Re-entry (Return to Cycle)
```

## Cultural Instantiations

| Culture | Form | Compression Handle | Grammar Type |
|---------|------|-------------------|--------------|
| Western | Zodiac | 12 signs, elements, modalities | Divination/Zodiac |
| Vedic | Zodiac | 12 signs, nakshatras, dashas | Divination/Zodiac |
| Chinese | Zodiac | 12 animals, elements | Divination/Zodiac |
| Chinese | I Ching | 8 trigrams, 64 hexagrams, changing lines | Divination/Zodiac |
| Various | Oracle Bone | Cracks, inscriptions | Divination/Zodiac |
| Various | Astrology | Planets, houses, aspects | Divination/Zodiac |

## Components

| Element | Function | Cultural Instantiation |
|---------|----------|----------------------|
| **Cycle** | Recurring structure | Zodiac signs, I Ching hexagrams, planetary cycles |
| **Phase Recognition** | Identifying position in cycle | Sign, trigram, nakshatra, changing lines |
| **Declaration** | Announcing the meaning | Horoscope reading, hexagram interpretation |
| **Participation** | Acting on the meaning | Decision, ritual, action |
| **Re-entry** | Returning to the cycle | Next sign, next hexagram, next reading |

**Observer Position:** Zodiac/divination layer documented.
EOF

# ============================================================
# 4. Create hexagram_layer README
# ============================================================
cat > docs/generative_grammars/hexagram_layer/README.md << 'EOF'
# Hexagram Layer

## Overview

The hexagram layer provides a culturally specific instantiation of the zodiac/divination grammar type using I Ching hexagrams.

## The Grammar

```
Cycle: Hexagram sequence
Phase Recognition: Hexagram reading, changing lines
Declaration: "Now is the time for [hexagram] action"
Participation: Act on the hexagram's guidance
Re-entry: Return to the oracle
```

## Components

| Component | Count | Function |
|-----------|-------|----------|
| Trigrams | 8 | Fundamental forces |
| Hexagrams | 64 | Operational configurations |
| Changing Lines | Variable | Dynamic elements, re-entry points |
| Nuclear Hexagram | 1 | Hidden internal dynamics |
| Contrasting Hexagram | 1 | Reversal (re-entry) |
| Complementary Hexagram | 1 | Inversion (shevirah) |

## Hexagram Orders

| Order | Source | Characteristics |
|-------|--------|-----------------|
| Mawangdui Order | c. 168 BCE | Earlier, less compressed |
| King Wen Order | Traditional | Standardized, more compressed |

**Observer Position:** Hexagram layer documented.
EOF

# ============================================================
# 5. Create trigram_layer README
# ============================================================
cat > docs/generative_grammars/trigram_layer/README.md << 'EOF'
# Trigram Layer

## Overview

The trigram layer provides a culturally specific instantiation of the zodiac/divination grammar type using trigram symbols.

## The Grammar

```
Cycle: 8 trigram sequence
Phase Recognition: Natural image, family, direction, element
Declaration: "Now is the time for [trigram] force"
Participation: Act on the trigram's quality
Re-entry: Return to next trigram
```

## The 8 Trigrams

| Trigram | Natural Image | Family | Direction | Element | Body Part | Quality |
|---------|---------------|--------|-----------|---------|-----------|---------|
| ☰ Qián | Heaven | Father | South | Metal | Head | Creative |
| ☷ Kūn | Earth | Mother | North | Earth | Belly | Receptive |
| ☳ Zhèn | Thunder | First Son | East | Wood | Foot | Arousing |
| ☴ Xùn | Wind | First Daughter | SE | Wood | Thigh | Gentle |
| ☵ Kǎn | Water | Second Son | West | Water | Ear | Abysmal |
| ☲ Lí | Fire | Second Daughter | South | Fire | Eye | Clinging |
| ☶ Gèn | Mountain | Third Son | NE | Earth | Hand | Still |
| ☱ Duì | Lake | Third Daughter | West | Metal | Mouth | Joyous |

## The Bagua

The Bagua (8 trigrams) are arranged in two configurations:

| Configuration | Arrangement | Use |
|---------------|-------------|-----|
| Early Heaven | Cosmological | Pre-creation order |
| Later Heaven | Temporal | Post-creation order |

**Observer Position:** Trigram layer documented.
EOF

# ============================================================
# 6. Create narrative_layer README
# ============================================================
cat > docs/generative_grammars/narrative_layer/README.md << 'EOF'
# Narrative Layer

## Overview

The narrative layer provides a culturally specific instantiation of the operational grammar using narrative structures.

## The Grammar

```
Cycle: Narrative arc
Phase Recognition: Story phase (setup, confrontation, resolution, re-entry)
Declaration: "Now is the time for [narrative action]"
Participation: Engage with the narrative
Re-entry: Return to narrative from transformed position
```

## Components

| Component | Function |
|-----------|----------|
| Backbone | Entry → Journey → Continuity → Completion |
| Archetypes | Threshold, Mentor, Return, Sacrifice |
| Motifs | Cycles, Seasons, Recurrence, Re-entry |
| Genres | Myth, Science Fiction, Mystery, Documentary |
| Tropes | Call to adventure, Ordeal, The return |

**Observer Position:** Narrative layer documented.
EOF

# ============================================================
# 7. Create exercise_layer README
# ============================================================
cat > docs/generative_grammars/exercise_layer/README.md << 'EOF'
# Exercise Layer

## Overview

The exercise layer provides a culturally specific instantiation of the operational grammar using physical training.

## The Grammar

```
Cycle: Training cycle
Phase Recognition: Training phase (accumulation, expression, simplification, re-entry)
Declaration: "Now is the time for [training action]"
Participation: Engage in training
Re-entry: Return to training from transformed physical state
```

## Components

| Component | Function |
|-----------|----------|
| Training | Accumulation, expression, simplification |
| Competition | Testing, demonstration |
| Pilgrimage | Re-entry, transformation |

**Observer Position:** Exercise layer documented.
EOF

# ============================================================
# 8. Create software_layer README
# ============================================================
cat > docs/generative_grammars/software_layer/README.md << 'EOF'
# Software Layer

## Overview

The software layer provides a culturally specific instantiation of the operational grammar using software structures.

## The Grammar

```
Cycle: Development cycle
Phase Recognition: Software phase (specification, implementation, testing, deployment, re-entry)
Declaration: "Now is the time for [software action]"
Participation: Engage in software development
Re-entry: Return to development from transformed position
```

## Components

| Component | Function |
|-----------|----------|
| State Machines | Operational field projection |
| APIs | Reachability, participation |
| Services | Persistence, continuity |
| Event Loops | Re-entry, recurrence |

**Observer Position:** Software layer documented.
EOF

# ============================================================
# 9. Create governance_layer README
# ============================================================
cat > docs/generative_grammars/governance_layer/README.md << 'EOF'
# Governance Layer

## Overview

The governance layer provides a culturally specific instantiation of the operational grammar using governance structures.

## The Grammar

```
Cycle: Governance cycle
Phase Recognition: Governance phase (policy, law, institution, re-entry)
Declaration: "Now is the time for [governance action]"
Participation: Engage in governance
Re-entry: Return to governance from transformed position
```

## Components

| Component | Function |
|-----------|----------|
| Policy | Direction, orientation |
| Law | Constraint, boundary |
| Institutions | Coherence, persistence |

**Observer Position:** Governance layer documented.
EOF

# ============================================================
# 10. Create ubiquitous_expression_layer README
# ============================================================
cat > docs/generative_grammars/ubiquitous_expression_layer/README.md << 'EOF'
# Ubiquitous Expression Layer

## Overview

The ubiquitous expression layer provides a culturally specific instantiation of the operational grammar using real-world homologs.

## The Grammar

```
Cycle: Any recurring cycle
Phase Recognition: Recognition of phase in any domain
Declaration: "Now is the time for [action]"
Participation: Act on the recognition
Re-entry: Return to the cycle from transformed position
```

## Components

| Component | Function |
|-----------|----------|
| Homologs | Aji → Potential, Thickness → Influence, Sente → Initiative |
| Application | Projects, organizations, meetings, personal development |

**Observer Position:** Ubiquitous expression layer documented.
EOF

# ============================================================
# 11. Update root README.md with generative grammar reference
# ============================================================
echo "Updating root README.md..."

# Check if README.md exists and update it
if [ -f README.md ]; then
    # Add a reference to generative grammars if not already present
    if ! grep -q "generative_grammars" README.md; then
        cat >> README.md << 'EOF'

## Generative Grammars

Documentation for culturally specific generative grammars is available in [docs/generative_grammars/](docs/generative_grammars/).

The generative grammar family includes:
- [Narrative Grammar](docs/generative_grammars/narrative_layer/)
- [Zodiac/Divination Grammar](docs/generative_grammars/zodiac_divination_layer/)
- [Hexagram Grammar](docs/generative_grammars/hexagram_layer/)
- [Trigram Grammar](docs/generative_grammars/trigram_layer/)
- [Exercise Grammar](docs/generative_grammars/exercise_layer/)
- [Software Grammar](docs/generative_grammars/software_layer/)
- [Governance Grammar](docs/generative_grammars/governance_layer/)
- [Ubiquitous Expression Grammar](docs/generative_grammars/ubiquitous_expression_layer/)
EOF
        echo "Updated README.md with generative grammar reference."
    else
        echo "README.md already contains generative grammar reference."
    fi
else
    echo "README.md not found; skipping update."
fi

# ============================================================
# 12. Final status
# ============================================================
echo ""
echo "Documentation update complete."
echo ""
echo "Added directories:"
ls -la docs/generative_grammars/
echo ""
echo "Next actions:"
echo "1. Review the updated documentation"
echo "2. Continue Calendar OE development with extended generative grammars"
```

---

## Usage

```bash
# From within the calendar_grammar directory:
chmod +x update_docs_generative_grammars.sh
./update_docs_generative_grammars.sh

# Or specify a different base directory:
./update_docs_generative_grammars.sh /path/to/calendar_grammar
```

---

## What the Script Does

1. **Creates the generative grammars directory structure** under `docs/`
2. **Creates README.md** for the overall generative grammars layer
3. **Creates zodiac_divination_layer README** documenting the unified zodiac/divination grammar type
4. **Creates hexagram_layer README** documenting the I Ching hexagram grammar
5. **Creates trigram_layer README** documenting the Bagua trigram grammar
6. **Creates narrative_layer README** documenting the narrative grammar
7. **Creates exercise_layer README** documenting the exercise grammar
8. **Creates software_layer README** documenting the software grammar
9. **Creates governance_layer README** documenting the governance grammar
10. **Creates ubiquitous_expression_layer README** documenting the ubiquitous expression grammar
11. **Updates root README.md** with a reference to the generative grammars documentation

---

## Resulting Directory Structure

After running the script, the `docs/` directory will include:

```
docs/
├── generative_grammars/
│   ├── README.md                           # Overview
│   ├── zodiac_divination_layer/
│   │   └── README.md                       # Zodiac/divination grammar
│   ├── hexagram_layer/
│   │   └── README.md                       # I Ching hexagram grammar
│   ├── trigram_layer/
│   │   └── README.md                       # Bagua trigram grammar
│   ├── narrative_layer/
│   │   └── README.md                       # Narrative grammar
│   ├── exercise_layer/
│   │   └── README.md                       # Exercise grammar
│   ├── software_layer/
│   │   └── README.md                       # Software grammar
│   ├── governance_layer/
│   │   └── README.md                       # Governance grammar
│   └── ubiquitous_expression_layer/
│       └── README.md                       # Ubiquitous expression grammar
├── ecology/
├── grammar/
├── methodology/
└── ... (existing directories)
```
