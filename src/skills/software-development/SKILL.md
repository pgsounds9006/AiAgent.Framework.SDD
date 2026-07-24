---
name: software-development
version: 0.1.0
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
means keeping those layers honest with each other as the system changes.

## Kernel

These hold regardless of what stage the work is in — and regardless of
how capable the tools doing the work become. Apply them in proportion to
the consequence of being wrong: cheap, internal, and reversible choices
permit lightweight judgment; claims that establish contracts, create
dependencies, or resist reversal demand stronger evidence.

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
A parameter, field, feature, or abstraction becomes a contract only when
the meaning attributed to it has been verified against actual behavior.
Until then, it is a hypothesis wearing a contract's clothes — and
shipping it misleads every future consumer. Keep uncertain semantics
easy to revise and do not present proposed interpretations as settled
guarantees.

**Seeing something run once does not make it verified.**
A throwaway probe — an ad-hoc entry point, a one-off script, a value
printed and read by eye — is a legitimate, often the fastest, way to
obtain an observation; reaching for one is not the error. The error is
letting the probe stand in as the verification. What confirmed the
behavior lived somewhere that runs once and vanishes, while the meaning
it established now travels as though something repeatable were guarding
it. The question is not "did I see it work" but where the check that
proves it lives, whether it will run again when someone changes this,
and whether it inhabits the strongest practical layer — test, schema,
runtime validation, contract probe, or otherwise.

**Provenance is demanded when a value is promoted, not when it is picked.**
Choosing a reasonable-seeming timeout, retry count, buffer size, or
default and moving on is legitimate — as an internal, cheap-to-change
choice. Promotion changes the rules. When a value claims to mirror an
external reality, such as a server limit or protocol boundary, its
provenance is observation: verify the boundary instead of guessing it.
When any value crosses into a contract layer — a schema constraint, a
documented limit, a default consumers will build against — "it seemed
reasonable" stops being an answer: establish provenance or mark it
explicitly as chosen policy. The failure mode is never arbitrariness
itself; it is an arbitrary value wearing the appearance of a discovered
boundary.

**Assumptions surface under questioning, not inspection.**
The questions that most often redirect work require no domain expertise:
Where did this value come from? What exactly does this test prove when
it passes? Why does this information live at this layer? Is this
"success" defined by the caller's standard or the system's? Ask these of
your own work before the user has to.

**One fact, one authoritative location — matched to its rate of change.**
A fact should have one authoritative source appropriate to its ownership
and change rate. Other representations may exist as deliberate
projections — generated documentation, derived schemas, rendered help
text — but they must not become independently maintained competing
originals. Before repeating a fact, determine whether the new
representation is derived from its source or creates another place that
can silently diverge.

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
Documentation preserves meaning that cannot be reliably recovered from
stronger artifacts such as code, schemas, tests, generated interfaces,
or runtime behavior. Its strongest subjects are the places where the
project departs from sound inference: the dependency that looks optional
but is load-bearing, the convention deliberately broken, the
cross-cutting intent no single implementation site can express, the
boundary that looks wrong but is verified. Repeating what stronger
layers already say adds maintenance cost without adding authority.

**Technical risk and product importance are different axes.**
A fragile dependency at the heart of the product's value is not a
peripheral feature — it is a core feature that demands stronger
observation, contract tests, and failure visibility. Do not let ease of
implementation, quality of documentation, or familiarity of technology
stand in for importance.

**Reversal cost is measured in external dependency, not effort spent.**
Building a candidate fully and discarding it is cheap while it remains
internal. Implementation effort already spent is not a reason to
preserve it. The boundary that matters is whether other people or
systems have started depending on it. Experiment freely before that
boundary; verify strictly before crossing it. As dependency grows, so
does the cost of reversal and the evidence required to justify the
commitment.

**Truths must outlive the tools; compensations must not.**
Every element of a system representation — code, schema, prompt, tool
description, guideline — expresses one of three things: a truth about
the domain or observable behavior, a chosen policy or trade-off, or a
temporary compensation for a present limitation.

Keep truths in the strongest available contract layers. Make chosen
policies explicit enough that they cannot be mistaken for discovered
facts. Keep compensations weak, local, and removable, marked with the
reason they exist and the condition under which they should be
re-examined. A compensation whose reason has disappeared is residue.
Where a compensation must constrain, prefer an affordance a stronger
consumer can exceed over a prohibition that would bind it: a structure's
ceiling should be its consumer's capability, not its designer's era.

## Stage awareness

Maturity attaches to a capability, not to a project. Within one
repository, search may be stable while caching is being bootstrapped and
an old registry integration is being removed. Principles that are
correct in one stage are wrong in another: minimizing contract surface
is right early and negligent late; adding validation layers is right
during hardening and forbidden during distillation.

Before changing a capability, determine its maturity from the evidence
available:

* Has its purpose been validated through real use?
* Have its boundaries and failure modes been observed?
* Is its meaning protected by repeatable verification?
* Are consumers already depending on its current contract?
* Does the repository keep an authoritative state record for it?

A capability's state and the mode governing the current change are
related but not identical. A stable capability may contain a newly
bootstrapped behavior. Maintenance may return to validation when new
evidence contradicts an established assumption. State describes the
capability's current maturity; mode describes the engineering objective
of the present work.

Where the repository keeps capability state records, those records are
part of the evidence and the authoritative place where transitions are
written down. The guidance under `references/sdd/` provides
stage-sensitive lenses, permissions, evidence expectations, and stopping
conditions. `index.md` locates the applicable mode; `state.md` describes
how state records are interpreted and maintained. Load only what the
current work needs.

## Interface

Internal orchestration stays internal. Communicate the problem, the
material decisions, the evidence, unresolved uncertainty, and the
results — not the mechanics of skill activation, mode selection, or
reference routing.

Stage judgments surface in natural terms when they clarify an
engineering decision:

> This behavior is already validated, so the priority is making its
> contract explicit rather than extending its scope.

They do not appear as procedural announcements or internal labels.
