# **Naming Debt** Repair

Fixing a system bogged down by legacy placeholder names and bloated acronyms—often referred to in engineering and design as overcoming **"naming debt"**—requires a strategic approach that respects internal history while making the system accessible to outsiders.

When a project evolves beyond its initial working titles, the terminology acts as tribal knowledge. Ripping it out entirely can break team communication and institutional memory. Instead, you can systematically bridge the gap using a structured refactoring process.

---

### Step 1: Audit and Categorize the Terminology

Before changing anything, map out what you have. Create an internal inventory of all components, acronyms, and placeholder names.

- **Core Concepts:** Names deeply baked into the architecture that would require massive code or documentation rewrites to change.
- **Surface-Level Jargon:** Terms, labels, and acronyms used in user interfaces, high-level documentation, or public-facing APIs that cause the most confusion for newcomers.
- **Orphaned Roles:** Components whose original scope has expanded so drastically that their current name actively misleads people about what they do.

### Step 2: Establish a Ubiquitous Language (Domain-Driven Design)

Borrow a concept from Domain-Driven Design (DDD): build a **Ubiquitous Language**. Get the core team together to define what the system actually does _today_, not what it was planned to do three years ago.

- Create a single, living **Glossary or Lexicon** document accessible to everyone.
- Ensure that every term maps directly to a clear, functional responsibility. If two components do overlapping things because their names are too vague, redefine their boundaries.

### Step 3: Implement the "Alias Pattern" (Gradual Migration)

To avoid breaking understanding or crashing systems (whether literal software code or conceptual documentation), phase out old names gradually rather than overnight.

- **In Software/Architecture:** Use the **Adapter** or **Alias** pattern. Keep the underlying legacy identifier or class name functional while introducing a new, clean wrapper or alias that uses the modern terminology. Gradually deprecate the old name over several release cycles.
- **In Documentation & Communication:** Use dual-naming temporarily. For example, refer to a component as _“The Nexus Engine (formerly Project Alpha)”_ in guides and meetings for a transitional period of 3 to 6 months.

### Step 4: Redefine the Acronyms (Backronyms or Expansion)

If an acronym is too deeply embedded to remove, consider repurposing it:

- **Expand it:** Instead of letting an acronym remain a meaningless placeholder (e.g., calling a data pipeline "FAST"), redefine what it stands for to align with its mature reality, or drop the acronym entirely in favor of a descriptive noun.
- **Shift from Acronym to Descriptive Term:** Transition the team away from saying "run the TRP" to "run the _User Validation Pipeline_," letting the acronym fade into a historical footnote known only to veterans.

### Step 5: Update the Onboarding Narrative

Newcomers are your best litmus test for whether the fix worked. Rewrite your onboarding documentation around the _user journey_ or _data flow_ rather than the history of how the components were built.

- Instead of explaining _“First, data goes to Component X because that’s what we built first,”_ explain _“First, data enters the Ingestion Layer.”_
