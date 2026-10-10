## Baoxiang flower shape grammar

**Shape grammar** is a rule-based design methodology used to deconstruct, analyze, and innovate traditional **Baoxiang flower** patterns, particularly those from the Tang Dynasty. This approach involves extracting core structural units—such as **hooked petals**, **cloud-curved petals**, and **side-curved petals**—and applying transformation rules like **rotation**, **symmetry**, **duplication**, and **translation** to generate new, culturally faithful designs.

Recent research compares this traditional method with AI-driven **Denoising Diffusion Probabilistic Models (DDPM)** to evaluate pattern innovation:

*   **Cultural Fidelity**: Shape grammar significantly outperforms diffusion models in preserving traditional cultural symbols and structural integrity, ensuring the patterns remain recognizable as Baoxiang motifs.
*   **Innovation and Diversity**: Diffusion models excel in generating creative diversity and complex variations due to their stochastic nature, offering greater freedom but with less adherence to traditional structural rules.
*   **Aesthetics and Applicability**: Both methods perform comparably in visual aesthetics, though shape grammar is often rated higher for practical applicability in product and space design due to its logical, structured output.

The process typically begins with digital extraction of pattern elements using tools like the **Segment Anything Model (SAM)**, followed by systematic deconstruction into basic geometric units. These units are then reconstructed using shape grammar rules to create modernized pattern schemes that maintain the auspicious symbolism of the original Tang Dynasty art while meeting contemporary aesthetic contexts.

---

## celtic knot shape grammar

**Shape grammar** is a computational method used to generate and modify **Celtic knots** by applying formal rules to geometric primitives. Research, such as work from the **Georgia Tech Shape Computation Lab**, demonstrates that simple shape grammars can produce intricate patterns like **spirals**, **step patterns**, and **key patterns** by manipulating shapes composed of arcs and straight lines under isometry transformations.

The process involves distinct stages, including a **configuration stage** where identity rules seamlessly reorganize the underlying structure of a shape. By adding specific shape rules, designers can unite single loops with alternating loops horizontally and vertically, allowing for the **seamless editing** and creation of new, unpredictable designs within the Celtic knot language.

---

## Thangka / Mandela Shape Grammar


---
## shape grammar/penrose

Shape grammar and Penrose represent two distinct but complementary computational approaches to design and diagrammatic representation. **Shape grammars** are formal systems used in design computation and architecture to generate and analyze designs through rule-based transformations of geometric shapes, with academic resources available from institutions like the Cambridge Creation Lab and courses at SIGGRAPH.

In contrast, **Penrose** (specifically the open-source tool developed by the Penrose Project) is a system for creating beautiful, mathematically precise diagrams from plain text notation. It utilizes a **Style shape library** that supports various geometric primitives such as circles, rectangles, text, and paths, allowing users to define visual attributes and constraints for rendering vector graphics.

While shape grammars focus on the **generative logic** and structural evolution of design forms, Penrose focuses on the **visual communication** of abstract concepts through customizable graphical notation. The two can be integrated, as Penrose's underlying graphical notation system is rooted in **Penrose graphical notation** (tensor diagrams), which provides a visual language for multilinear algebra and physics, distinct from but compatible with shape-based design grammars.

# Denoising Diffusion Probabilistic Models (DDPM)

**Denoising Diffusion Probabilistic Models (DDPM)** are a class of generative models introduced by Jonathan Ho, Ajay Jain, and Pieter Abbeel in 2020 that generate high-fidelity data, such as images, by learning to reverse a gradual noise-adding process. Unlike Generative Adversarial Networks (GANs) or Variational Autoencoders (VAEs), DDPMs do not rely on adversarial training or explicit latent variable inference, offering greater training stability and avoiding mode collapse.

The model operates through two distinct phases: a **forward diffusion process** that progressively adds Gaussian noise to data until it becomes pure noise, and a **reverse denoising process** where a neural network learns to predict and remove this noise step-by-step to reconstruct original samples. The training objective is derived from a variational lower bound and is equivalent to **denoising score matching**, allowing the model to estimate the gradient of the data distribution at various noise levels.

Since their introduction, DDPMs have become the foundational architecture for many state-of-the-art image synthesis systems, including **DALL-E 2**, **Imagen**, **Stable Diffusion**, and **Midjourney**. Subsequent improvements, such as those by Alex Nichol and Prafulla Dhariwal, enhanced sample quality and sampling efficiency by learning the variances of the reverse process, making diffusion models more practical for real-world deployment.
