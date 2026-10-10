#!/bin/bash
# Generated from emit_supp.md via Literate Programming
# Generated on: Thu  6 Aug 22:30:56 BST 2026
# --------------------------------------------------
# The reorganization has been applied successfully. The directory structure now reflects the current state of the session, with the stabilized methodology documented in the `docs/` subdirectories. However, there are several root-level files that could be integrated into the new structure to reduce clutter and improve organization.
#
# Let me provide a supplementary script to integrate these files.
#
# ---
#
# ## Supplementary Script: `integrate_root_files.sh`
#
# ```bash
# #!/usr/bin/env bash (original shebang)

# Integrate Root Files into Directory Structure
# This script moves root-level files into appropriate subdirectories
# to reduce clutter and improve organization.

set -e

BASE_DIR="${1:-..}"
cd "$BASE_DIR" || {
  echo "Directory $BASE_DIR not found"
  exit 1
}

echo "Integrating root files into directory structure..."

# ============================================================
# 1. Move grammar-related root files to docs/grammar/
# ============================================================
echo "Moving grammar files to docs/grammar/..."
mv -n feedback_grammar.md docs/grammar/ 2>/dev/null || true
mv -n shape-gammars.md docs/grammar/ 2>/dev/null || true
mv -n zen-koan-grammar.md docs/grammar/ 2>/dev/null || true
mv -n martial-arts.md docs/grammar/ 2>/dev/null || true
mv -n music-song-writing-grammar.md docs/grammar/ 2>/dev/null || true
mv -n video-game-studio_grammar.md docs/grammar/ 2>/dev/null || true
mv -n naming-debt.md docs/grammar/ 2>/dev/null || true

# ============================================================
# 2. Move experiments to experiments/
# ============================================================
echo "Moving experiment files to experiments/..."
mv -n affinity-attractor.md experiments/ 2>/dev/null || true
mv -n analogy-for-coherent-separation.md experiments/ 2>/dev/null || true
mv -n architecture.md experiments/ 2>/dev/null || true
mv -n chistian-fractal-time.md experiments/ 2>/dev/null || true
mv -n discovering-recursive-organization_foundational.md experiments/ 2>/dev/null || true
mv -n exercise_pregnancy.md experiments/ 2>/dev/null || true
mv -n fashion-modulation.md experiments/ 2>/dev/null || true
mv -n fasting.md experiments/ 2>/dev/null || true
mv -n gayatri-mudra.md experiments/ 2>/dev/null || true
mv -n hypnosis-grammar.md experiments/ 2>/dev/null || true
mv -n meme-wars.md experiments/ 2>/dev/null || true
mv -n MFHIS_player-of-games.md experiments/ 2>/dev/null || true
mv -n regreening.md experiments/ 2>/dev/null || true
mv -n rhetoric_as-context-layer.md experiments/ 2>/dev/null || true
mv -n schopenhauer_was_right.md experiments/ 2>/dev/null || true
mv -n syncretic-reversal.md experiments/ 2>/dev/null || true
mv -n terminal-character-layer.md experiments/ 2>/dev/null || true
mv -n the-ecology-of-reconstructive-artifacts.md experiments/ 2>/dev/null || true
mv -n the-moral-signal_chapter-4.md experiments/ 2>/dev/null || true
mv -n ubiquitous-expression_foundational.md experiments/ 2>/dev/null || true
mv -n way-forward.md experiments/ 2>/dev/null || true

# ============================================================
# 3. Move reference files to docs/references/
# ============================================================
echo "Moving reference files to docs/references/..."
mv -n ecological-oriented_programming__EOP.md docs/references/ 2>/dev/null || true
mv -n tree_ecology_calendar_integration.md docs/references/ 2>/dev/null || true

# ============================================================
# 4. Move wttr files to experiments/ (they are perturbations)
# ============================================================
echo "Moving wttr files to experiments/..."
mv -n wttr_docker.README.md experiments/ 2>/dev/null || true
mv -n wttr_example.sh experiments/ 2>/dev/null || true
mv -n wttr_example2.sh experiments/ 2>/dev/null || true
mv -n wttr_example3.sh experiments/ 2>/dev/null || true
mv -n wttr_example4.README.md experiments/ 2>/dev/null || true
mv -n wttr_example4.sh experiments/ 2>/dev/null || true
mv -n openweathermap_example.sh experiments/ 2>/dev/null || true

# ============================================================
# 5. Move scripts to scripts/
# ============================================================
echo "Moving scripts to scripts/..."
mv -n emit_update.sh scripts/ 2>/dev/null || true
mv -n emit_update.md scripts/ 2>/dev/null || true

# ============================================================
# 6. Ensure all subdirectories have README files
# ============================================================
echo "Ensuring all subdirectories have README files..."

# docs/composition already has README
# docs/construction already has README
# docs/ecology already has README
# docs/grammar already has README
# docs/methodology already has README
# docs/references already has README
# docs/specification already has README

for dir in docs/*/; do
  if [ ! -f "${dir}README.md" ]; then
    echo "Creating README for ${dir}"
    echo "# ${dir##*/}" >"${dir}README.md"
    echo "" >>"${dir}README.md"
    echo "This directory contains documentation for the ${dir##*/} layer of the Calendar Operational Ecology." >>"${dir}README.md"
  fi
done

# ============================================================
# 7. Update experiments README with new files
# ============================================================
echo "Updating experiments/README.md..."

cat >experiments/README.md <<'EOF'
# Experiments

This directory contains context-widening perturbations and exploratory materials that have informed the Calendar Operational Ecology.

## Current Experiments

| File | Description | Status |
|------|-------------|--------|
| affinity-attractor.md | Attractor theory exploration | Archived |
| analogy-for-coherent-separation.md | Coherent separation analogy | Archived |
| architecture.md | Architecture exploration | Archived |
| attractor-theory.md | Attractor theory | Archived |
| chistian-fractal-time.md | Christian fractal time | Archived |
| discovering-recursive-organization_foundational.md | Recursive organization discovery | Archived |
| entrainment-via-alternative-ecology.md | Entrainment via alternative ecologies | Archived |
| exercise_pregnancy.md | Exercise and pregnancy | Archived |
| fashion-modulation.md | Fashion modulation | Archived |
| fasting.md | Fasting perturbation | Archived |
| gayatri-mudra.md | Gayatri Mudra sound-light coupling | Archived |
| hypnosis-grammar.md | Hypnosis grammar perturbation | Archived |
| locus-pattern-grammars.md | Locus pattern grammars | Archived |
| martial-arts.md | Martial arts as orthopraxis | Archived |
| meme-wars.md | Meme wars perturbation | Archived |
| mesmerism.md | Mesmerism exploration | Archived |
| MFHIS_player-of-games.md | MFHIS player of games | Archived |
| music-song-writing-grammar.md | Music and songwriting grammar | Archived |
| narrative-gait-pace-timing.md | Narrative gait, pace, timing | Archived |
| narrative-layer.md | Narrative layer exploration | Archived |
| openweathermap_example.sh | Weather perturbation example | Archived |
| palimpsest-attack.md | Palimpsest attack | Archived |
| phase-transition-in-entrainment.md | Phase transition in entrainment | Archived |
| pilgrimage.md | Pilgrimage as re-entry surface | Archived |
| policing-coherent-separation.md | Policing coherent separation | Archived |
| regreening.md | Regreening perturbation | Archived |
| rhetoric_as-context-layer.md | Rhetoric as context layer | Archived |
| schopenhauer_was_right.md | Schopenhauer was right | Archived |
| social-and-group-structure.md | Social and group structure | Archived |
| stonk-ecology.md | Stonk ecology | Archived |
| syncretic-reversal.md | Syncretic reversal | Archived |
| terminal-character-layer.md | Terminal character layer | Archived |
| the_encoding_process.md | The encoding process | Archived |
| the-ecology-of-reconstructive-artifacts.md | Ecology of reconstructive artifacts | Archived |
| the-moral-signal_chapter-4.md | The moral signal, chapter 4 | Archived |
| three-teachings.md | Three Teachings cultural layer | Archived |
| ubiquitous-expression_foundational.md | Ubiquitous expression foundational | Archived |
| way-forward.md | Way forward | Archived |
| wttr_docker.README.md | Weather perturbation | Archived |
| wttr_example.sh | Weather perturbation example | Archived |
| wttr_example2.sh | Weather perturbation example | Archived |
| wttr_example3.sh | Weather perturbation example | Archived |
| wttr_example4.README.md | Weather perturbation example | Archived |
| wttr_example4.sh | Weather perturbation example | Archived |

## Adding New Experiments

When adding a new context-widening perturbation:

1. Create a new markdown file in this directory
2. Include the observer position from which the perturbation was introduced
3. Document the perturbation's context and relevance
4. Update this README.md with the new entry

**Observer Position:** Experiments are preserved as context-widening perturbations for future observer positions.
EOF

# ============================================================
# 8. Update docs/grammar/README.md with moved files
# ============================================================
cat >>docs/grammar/README.md <<'EOF'

## Related Grammar Files

| File | Description |
|------|-------------|
| feedback_grammar.md | Feedback grammar exploration |
| shape-gammars.md | Shape grammars |
| zen-koan-grammar.md | Zen koan grammar |
| martial-arts.md | Martial arts grammar |
| music-song-writing-grammar.md | Music and songwriting grammar |
| video-game-studio_grammar.md | Video game studio grammar |
| naming-debt.md | Naming debt exploration |

These files are preserved in this directory as context-widening perturbations.
EOF

# ============================================================
# 9. Final status
# ============================================================
echo ""
echo "Root file integration complete."
echo "Directory structure:"
ls -la
echo ""
echo "Next actions:"
echo "1. Resolve blocked live ephemeris incorporation (NumPy 2 constraint)"
echo "2. Observe the seed in its operational ecology"
echo "3. Document longitudinal observations"
echo "4. Continue ubiquitous expression"
# ```
#
# ---
#
# ## Usage
#
# ```bash
# From within the calendar_grammar directory:
# chmod +x integrate_root_files.sh
# ./integrate_root_files.sh

# Or specify a different base directory:
# ./integrate_root_files.sh /path/to/calendar_grammar
# ```
#
# ---
#
# ## What the Supplementary Script Does
#
# 1. **Moves grammar-related root files** to `docs/grammar/`
# 2. **Moves experiment files** to `experiments/`
# 3. **Moves reference files** to `docs/references/`
# 4. **Moves wttr perturbation files** to `experiments/`
# 5. **Moves scripts** to `scripts/`
# 6. **Updates experiments/README.md** with all moved files
# 7. **Updates docs/grammar/README.md** with moved grammar files
#
# ---
#
# ## Resulting Directory Structure
#
# After running both scripts, the directory structure becomes:
#
# ```
# calendar_grammar/
# ├── archive/                    # Historical records
# ├── code/                       # Executable seed
# │   ├── calendar_engine.py
# │   ├── demo.py
# │   ├── main.py
# │   └── README.md
# ├── docs/                       # Stabilized documentation
# │   ├── composition/            # Composition Topology
# │   ├── construction/           # Construction Laboratory
# │   ├── ecology/                # Artifact Ecology
# │   ├── grammar/                # Operational Grammar
# │   ├── methodology/            # Stabilized Methodology
# │   ├── references/             # References
# │   └── specification/          # Artifact Specification
# ├── experiments/                # Context-widening perturbations
# │   └── README.md
# ├── scripts/                    # Utility scripts
# │   └── README.md
# ├── GLOSSARY.md                 # Stabilized terminology
# ├── OBSERVER_LOG.md             # Observer position log
# └── README.md                   # Session overview
# ```
#
# The root directory is now cleaner, and all files are organized according to their function within the stabilized methodology.
