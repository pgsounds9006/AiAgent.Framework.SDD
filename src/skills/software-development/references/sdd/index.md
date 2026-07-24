# SDD — Spec-Driven Development, as Stage-Sensitive Policy

This layer addresses the question mainstream spec-driven development
leaves to the author: what has earned the right to be specified, when
its meaning may be fixed, and at what layer it should be expressed. A
spec here is not a document of hopes written ahead of the work — it is
the set of meanings that observation has verified and promotion has
made binding.

The applicable mode emerges from the maturity of the capability being
changed, the purpose of the current change, and the evidence already
available. It is a working judgment, not a user-facing label.

A capability is any unit with its own purpose, its own contract or
judgment criteria, and its own maturity: a feature, an error-handling
policy, a tool's metadata, a deployment method, a cursor's semantics, a
test structure. Assess maturity per capability — never per project.

## Modes

- **Bootstrap** (`bootstrap.md`) — the capability's purpose or shape is
  still uncertain. Establish it with the smallest revisable contract and
  learn from real use. Reach for this when little has been observed yet
  and the main risk is committing to the wrong meaning.

- **Harden** (`harden.md`) — the capability's value and shape have been
  validated in real use. Promote observed, repeated meaning into
  explicit contracts at the strongest appropriate layer. Reach for this
  when the main risk is validated meaning remaining as tacit knowledge.

- **Distill** (`distill.md`) — the capability's contracts are fixed and
  protected. Reduce its expression to the semantic minimum without
  losing any established meaning. Reach for this when the main risk is
  accumulated scaffolding obscuring what the code guarantees.

A capability moves forward when its mode's completion evidence exists,
and may return to bootstrap when a genuinely new requirement arrives —
new requirements start their own loop rather than being folded into a
stable capability's contract.

## State

Stage judgment draws on evidence, and the judgment itself is worth
preserving: re-deriving it each session is costly and unstable, since
two readings of the same repository can reach different stages. A
repository may carry a capability state record — state, the evidence
behind it, re-verification conditions — that lets a later session,
another agent, or another person resume the judgment instead of
repeating it. When such a record exists, it is part of the evidence;
when a transition happens, it is where the transition is written.
`state.md` describes the protocol. Absence of a record is not absence
of a stage — infer from the repository, and leave the judgment recorded
when deriving it was costly.

## Mode mismatch signals

Worth acting on when noticed:

- Designing extension points for unobserved future needs → hardening
  behavior inside bootstrap.
- Citing YAGNI to skip validation of an observed, repeated failure →
  bootstrap behavior inside hardening.
- Adding a feature "while simplifying" → any mode inside distill.
- The same exception handling repeated in three or more places, or one
  external change breaking several components at once → the capability
  has outgrown small patches; structural change is due regardless of
  the current mode's default conservatism.
