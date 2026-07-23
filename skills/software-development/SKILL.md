---
name: software-development
description: >
  Context-aware engineering of software systems. Covers understanding an
  existing system before changing it, treating diagnoses as hypotheses,
  promoting verified meaning into contracts, hardening validated behavior,
  and distilling implementations to their semantic minimum. Relevant to
  implementation, debugging, refactoring, contract and schema design, tool
  and API development, test strategy, and structural simplification.
---

# Software Development

Software is a system of intent, observable behavior, contracts,
implementation, verification, and operational context. Engineering it well
means keeping those layers honest with each other.

## Kernel

These hold regardless of what stage the work is in — and regardless of
how capable the tools doing the work become.

**Every diagnosis is a hypothesis — including the user's and your own.**
The user may misattribute a failure; you may misread an API's semantics;
a confident success report may be an HTTP 200 wrapping an error page.
Who said it carries no authority. What adjudicates is observed behavior:
a boundary that fails at 101 and succeeds at 100, a response whose
content-type contradicts its status, a call sequence that breaks a
claimed invariant. Before acting on a diagnosis, ask what observation
would confirm or refute it — then prefer obtaining that observation over
trusting the diagnosis.

**Naming something and compiling it does not make it a contract.**
A parameter, field, or feature becomes a contract only when its claimed
meaning has been verified against actual behavior. If a capability's
semantics haven't been confirmed, it is a hypothesis wearing a
contract's clothes — and shipping it misleads every future consumer.

**Provenance is demanded when a value is promoted, not when it is picked.**
Choosing a reasonable-seeming timeout, retry count, or buffer size and
moving on is legitimate — as an internal, cheap-to-change choice. Two
things change the rules. When a value claims to mirror an external
reality (a server's page limit, a protocol boundary), its provenance is
observation: verify the boundary instead of guessing it. And when any
value crosses into a contract layer — a schema constraint, a documented
limit, a default consumers will build against — "it seemed reasonable"
stops being an answer: establish provenance or mark it explicitly as
chosen policy. The failure mode is never arbitrariness itself; it is an
arbitrary value wearing the appearance of a discovered boundary.

**Assumptions surface under questioning, not inspection.**
The questions that most often redirect work require no domain expertise:
Where did this value come from? What exactly does this test prove when
it passes? Why does this information live at this layer? Is this
"success" defined by the caller's standard or the system's? Ask these of
your own work before the user has to.

**One fact, one authoritative location — matched to its rate of change.**
Environment-specific facts, current interface shapes, domain judgment,
general principles, and behavioral guarantees each belong to a different
artifact with a different change rate. Duplicating a fact into a second
location creates a second contract original that will silently diverge.
Before writing a fact down, ask: is this already authoritatively
expressed somewhere, and does my copy add meaning or only drift risk?

**Declared project values are contracts of the operational layer.**
A repository may declare what it holds non-negotiable — change
accountability and audit trails, regulatory compliance, compatibility
guarantees — typically in its agent guidelines or equivalent. Such
declarations are not workflow preferences to weigh against this
methodology; they are contracts with the organization, as binding as a
schema is with its consumers. The declaration decides which artifacts
must exist and which guarantees are non-negotiable; this methodology
decides how judgment proceeds within them. They do not compete: the
declaration supplies constraints and completion criteria, the kernel
supplies the epistemology inside them.

**Documentation earns its place by deviating from expectation.**
A capable reader — human or agent — infers conventions, reads contracts,
and follows structure unaided. Recording what such a reader would
conclude anyway adds drift risk, not information. Project documentation
is for the places where the project departs from sound inference: the
dependency that looks optional but is load-bearing, the convention
deliberately broken, the boundary that looks wrong but is verified.
What matches expectation is already being said by stronger layers.

**Technical risk and product importance are different axes.**
A fragile dependency at the heart of the product's value is not a
peripheral feature — it is a core feature that demands stronger
observation, contract tests, and failure visibility. Do not let ease of
implementation or quality of documentation stand in for importance.

**Reversal cost is measured in external dependency, not effort spent.**
Building a candidate fully and discarding it is cheap while it remains
internal. The boundary that matters is whether other people or systems
have started depending on it. Experiment freely before that boundary;
verify strictly before crossing it.

**Truths must outlive the tools; compensations must not.**
Every element of a system representation — code, schema, prompt, tool
description, guideline — is one of two things: a truth about the domain,
which will hold as tools, models, and consumers grow more capable, or a
compensation for a present weakness of some consumer. Both are
legitimate; confusing them is how systems age badly. Keep truths in the
strongest layers. Keep compensations in weak, removable layers, marked
with the condition under which they should be re-examined — a
compensation whose reason has disappeared is residue. And where a
compensation must constrain, prefer an affordance a stronger consumer
can exceed over a prohibition that would bind it: a structure's ceiling
should be its consumer's capability, not its designer's era.

## Stage awareness

Maturity attaches to a capability, not to a project. Within one
repository, search may be stable while caching is being bootstrapped and
an old registry integration is being removed. Principles that are
correct in one stage are wrong in another: minimizing contract surface
is right early and negligent late; adding validation layers is right
during hardening and forbidden during distillation.

Before changing a capability, determine its maturity from the evidence
available — has its purpose been validated in real use? have its
boundaries been observed? is its meaning already fixed by tests and
consumers? Where the repository keeps a record of capability states,
that record is part of this evidence and the place transitions are
written down. The guidance under `references/sdd/` provides
stage-sensitive lenses, permissions, and stopping conditions:
`index.md` locates the applicable mode, `state.md` describes how state
records are read and kept. Load only what the current work needs.

## Interface

Internal orchestration stays internal. Communicate the problem, the
decisions, the evidence, and the results — not the mechanics of mode
selection or reference routing. Stage judgments surface in natural
terms when they matter to the user ("this behavior is validated, so the
priority is fixing its contract, not extending it"), never as mode
announcements.
