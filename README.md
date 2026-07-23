# AiAgent.Framework.SDD

An agent skill for software engineering built on a single axis: **the
epistemic state of meaning**. Every capability's meaning sits somewhere
between unknown, known-but-weakly-expressed, and fixed-and-protected —
and most engineering advice is correct only relative to that position.

Two layers. `SKILL.md` is the kernel: stage-independent epistemology —
diagnoses are hypotheses, provenance is demanded when a value is
promoted rather than when it is picked, reversal cost is measured in
external dependency rather than effort spent. `references/sdd/` is one
replaceable policy built on that kernel: three modes (bootstrap, harden,
distill) with per-mode lenses, permissions, and stop conditions. The
kernel does not depend on the policy, and the repository name does not
bind the kernel. The axis doubles as the scope test: what does not
concern the epistemic state of meaning does not belong here.

Everything the files can say is said there, once. This README records
only what a capable reader could not infer from the files themselves:
where the framework sits, what it deliberately omits, what is known to
be unresolved, and what would reopen it.

## Position

Spec-driven development, as practiced with coding agents, treats a
written specification as the authoritative source agents build from.
Most of that field concerns the workflow axis — how to author, plan
against, and enforce a spec. This framework addresses the question that
axis leaves to the author: **where a spec's content comes from, and when
it may be fixed.** It is orthogonal to the workflow, and it is also an
internal critique of it: within this framework a specification earns
authority the way any contract does — through observed behavior, not
through being authored. The kernel's rule that naming and compiling
something does not make it a contract applies to specifications with
full force.

## Lineage

The load-bearing parts have precedents; what is done here is re-deriving
them on one axis rather than combining several. The three-stage shape is
Kent Beck's 3X (explore/expand/extract), whose axis is economic return.
Per-capability — never per-project — maturity is Simon Wardley's
pioneers/settlers/town-planners, whose axis is market evolution. The
external-dependency boundary is Martin Fowler's published-versus-public
distinction, adopted nearly verbatim. For retiring published contracts,
the adjacent answer is Rich Hickey's accretion/relaxation/fixation —
acknowledged, not yet incorporated (see Unresolved).

Two elements have no located precedent and should be read as this
framework's actual claims under test: the **expression-strength ladder**
(standard semantics > structured SDK features > schema constraints >
runtime rules > prose; discovery runs down it, fixation runs up it) and
the **promotion completion rule** (a promotion is complete only when the
superseded weak expression is deleted).

## Deliberate omissions

**No prioritization axis.** The framework tells you what kind of change
a capability can bear, not which capability deserves attention first.
That is 3X's territory; importing an economic axis would break the
single-axis property that lets the modes compose. Chosen scope, not
oversight.

**No examples.** Examples get replicated instead of understood, and the
bet is on the capable reader: as consuming models strengthen,
example-free text ages better, not worse. The cost of that bet is named
under Failure mode.

**No always-on machinery — and a deliberately quiet description.** The
kernel's questions are cheap and apply everywhere: where did this value
come from; what does this test prove when it passes. The stage machinery
is not cheap, and it loads only when a capability's maturity is
genuinely in question. Standard skill-authoring guidance recommends
"pushy," keyword-rich descriptions to fight undertriggering; this skill
deviates on purpose. Substantial work loads it regardless, and a
one-line question deserves an answer, not a methodology. Absence of
machinery on a small task is the intended behavior, not a loading
failure.

## Unresolved

**Retiring a published contract has no mode.** All three modes assume
meaning accumulates monotonically: bootstrap forbids fixing the
unobserved, harden promotes the validated, distill forbids losing the
established. Deprecation, migration, and versioning — withdrawing
meaning that others already depend on — fall outside all three. The
likely shape of the answer is Hickey's: turn breakage into accretion
(new names, coexistence). Not yet incorporated.

**Stage adjudication is under-specified relative to its leverage.** The
stage judgment is the most consequential input in the system, and two
readings of the same repository can reach different stages. The state
record (`references/sdd/state.md`) preserves a judgment so it need not
be re-derived; it does not make the judgment better.

## Failure mode

The classic harness failures are rule-forcing (narrowed judgment) and
token burn. Both are guarded by construction: the kernel is questions
rather than rules, prefers affordances a stronger consumer can exceed
over prohibitions that would bind it, and loads progressively.

The failure this framework does **not** guard against is vocabulary
contamination: the text is abstract enough to be fluently paraphrased
without a single decision changing — and fluency improves with consumer
capability, so this failure gets easier as consumers get stronger. It
has been observed: during this framework's own review, a reader holding
only the skill's description reproduced its language convincingly while
knowing none of its content.

The test is cheap and should be run periodically: give the same task
with and without the skill loaded. If conclusions change, it is working.
If only the wording changes, it is decorating.

## State of this framework

Applying `state.md` to the framework itself:

```md
## AiAgent.Framework.SDD
State: bootstrap
Evidence: single-author synthesis; internally consistent under its own
kernel (review located one residue — a superseded duplicate of the
state-record format — since removed); positioned against located
precedents; not yet validated across real projects or by consumers
other than its author
Re-verify when: stage judgments prove unstable across sessions on the
same repository; provenance-at-promotion stops changing actual
decisions; the with/without test shows vocabulary-only effect; the
surrounding spec-driven-development ecosystem shifts enough that
Position above misleads
```

Nothing here is a published contract. By the framework's own rules,
that is not a weakness of the current stage — it is the definition of
it. Counter-observations are the input this stage exists to collect.
