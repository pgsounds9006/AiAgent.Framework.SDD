# Rationale

The reasons behind this framework's design decisions. This document is
defined by its content, not by any reader: it records truths about why
the design is what it is, and it stands whether the reader is adopting,
installing, criticizing, replacing the stage policy, or the author
returning months later. The files themselves state what the framework
says; this document records what they cannot — why.

## Why a single axis

Engineering advice conflicts in the abstract: minimize surface, add
validation, delete scaffolding, avoid speculation, make errors
explicit. The conflicts dissolve once each piece of advice is indexed
to the maturity of the meaning it touches — minimizing surface is right
while meaning is unknown and negligent once it is validated; adding
validation layers is right while fixing meaning and forbidden while
distilling its expression. A single axis is what lets the three modes
compose without contradiction: import a second axis, and the modes stop
lining up. The axis chosen — how far a meaning has traveled from
hypothesis to protected contract — is the one the kernel's questions
already interrogate, which is why kernel and policy fit without
translation.

## Position within spec-driven development

Spec-driven development, as practiced with coding agents, treats a
written specification as the authoritative source agents build from,
and most of that field concerns the workflow axis: how to author, plan
against, and enforce a spec. This framework addresses the question that
axis leaves to the author — where a spec's content comes from, and when
it may be fixed. It is orthogonal to the workflow, and also an internal
critique of it: within this framework a specification earns authority
the way any contract does, through observed behavior rather than
through being authored. The kernel's rule that naming and compiling
something does not make it a contract applies to specifications with
full force.

## Lineage — what is inherited, what is claimed

The load-bearing parts have precedents, re-derived here on one axis
rather than combined from several. The three-stage shape is Kent Beck's
3X, whose axis is economic return. Per-capability — never per-project —
maturity is Simon Wardley's pioneers/settlers/town-planners, whose axis
is market evolution. The external-dependency boundary is Martin
Fowler's published-versus-public distinction, adopted nearly verbatim.
For retiring published contracts, the adjacent answer is Rich Hickey's
accretion/relaxation/fixation — acknowledged, not yet incorporated.

Two elements have no located precedent and should be read as this
framework's actual claims under test: the **expression-strength ladder**
(standard semantics > structured SDK features > schema constraints >
runtime rules > prose; discovery runs down it, fixation runs up it —
conditional throughout on the layer being able to express the meaning
and on its semantics being verified against actual behavior) and the
**promotion completion rule** (a promotion is complete only when the
superseded weak expression — the one that had been carrying the
contract's authority — is deleted or demoted to a marked,
non-authoritative derivation).

## Deliberate omissions

**No prioritization axis.** The framework tells you what kind of change
a capability can bear, not which capability deserves attention first.
That is 3X's territory; importing an economic axis would break the
single-axis property that lets the modes compose. Chosen scope, not
oversight.

**No examples in the loaded text.** Examples get replicated instead of
understood, and the bet is on the capable reader: as consuming models
strengthen, example-free text ages better, not worse. The bet's cost is
named under Failure mode. Evaluation fixtures are a different matter —
they are never loaded during work, so the omission does not reach them.

**A deliberately quiet description.** Standard skill-authoring guidance
recommends pushy, keyword-rich descriptions to fight undertriggering;
this skill deviates on purpose. Substantial work loads it regardless,
and a one-line question deserves an answer, not a methodology. Absence
of machinery on a small task is intended behavior, not a loading
failure — and any installation of this skill must preserve that
property rather than fix it.

## Why adopting this is structurally cheap

**The kernel cannot compel.** Its contents are questions — where did
this value come from; what does this test prove when it passes; is this
success the caller's standard or the system's. A question narrows
nothing and forces nothing; the worst case of a useless question is a
moment's overhead. Whatever risk this framework carries, none of it
lives in the kernel.

**Gaps are silences, and the silences fail closed.** The three modes
assume meaning accumulates: bootstrap forbids fixing the unobserved,
harden promotes the validated, distill forbids losing the established.
Where the framework has no mode — see Unresolved — it grants no
permission, and judgment proceeds exactly as it would have without the
skill. Incompleteness subtracts nothing from the judgment you already
had.

**Distribution is a bridge, because porting would forge a second
original.** By the kernel's own distinction, every artifact is either a
domain truth or a compensation for a present consumer. Applied to this
repository: the kernel and the modes are truths — they hold in any
harness — while the SKILL.md format, the `references/` layout, and the
loading conventions are compensations for one particular loader. Moving
to another environment therefore means rewriting only the compensation
layer, never the content: a port that translates the content into a
harness-native format manufactures a second original that silently
diverges. This is why installation is specified as bridge-writing, and
why it has a floor: where a harness's loader already reads this format,
the correct compensation is none at all — installation by placement. A
compensation answers an observed weakness; absent the weakness, a
bridge is residue at birth.

## Where the risk lives

Locating it precisely is more useful than declaring it low. Risk enters
through the modes' **permissions** — leave error handling at
observation level, skip the abstraction, remove aggressively — because
every permission is gated by the least-specified input in the system:
the stage judgment, which is qualitative and unmeasured. Misread a
production capability as bootstrap, and error handling gets deferred as
premature hardening. Misread a consumed interface as internal, and its
contract gets changed under someone. Misread test coverage as the whole
of a meaning, and distill removes defensive code past what the tests
actually guarantee. One sentence covers every case: subjective judgment
gating strong permissions.

The guardrails are in the files, and they are load-bearing rather than
decorative. Declared project values — security, compliance,
compatibility, audit — are operational-layer contracts the kernel makes
binding over any mode; no stage call outranks them. Each mode carries
stop conditions that anticipate its own abuse — distill's says in so
many words that passing tests are necessary but not sufficient. The
mode-mismatch signals in the skill's `references/sdd/index.md` are
tripwires for exactly the
misreadings above.

The adoption posture follows from the framework's own rules rather than
from caution. Advisory before autonomous: advice is internal and
reversible, while an unreviewed production change makes external
systems depend on a judgment that has not yet earned dependency — the
reversal-cost rule applied to the framework itself. Permissions travel
with their evidence: not "bootstrap, so no abstraction" but "no
external consumer observed and purpose unvalidated, so no abstraction"
— a verbosity that is itself a marked compensation, expiring once
judgment stability has been demonstrated. Declared values always
outrank — that one is not posture but kernel.

Unvalidated and unsafe are different axes: adopted as above, trying
this is cheap and reversible, and keeping it must be earned by the
test under Failure mode.

## Unresolved

**Retiring a published contract has no mode.** All three modes assume
meaning accumulates monotonically. Deprecation, version transitions,
migration, compatibility layers — withdrawing meaning that others
already depend on — fall outside all three. The likely shape of the
answer is Hickey's: turn breakage into accretion (new names,
coexistence). Until it exists, the gap behaves as described above: a
silence that fails closed, not a hazard that fails open.

**Stage adjudication is under-specified relative to its leverage.** The
stage judgment is the most consequential input in the system, and two
readings of the same repository can reach different stages. The state
record (the skill's `references/sdd/state.md`) preserves a judgment so
it need not
be re-derived; it does not make the judgment better. The correction is
not a pre-built evaluation suite: fabricated cases would carry answer
keys authored by the very judgment under test, and fixing an
evaluation's shape before real disagreements have been observed is
hardening inside bootstrap. The collection instrument already exists —
the state record. Real use produces judgments with their evidence;
records make disagreement between sessions observable; and a rubric —
which evidence types count, what falsifies a stage call, an explicit
undetermined state — is distilled later from those observed cases,
where the ground truth is what subsequently happened rather than what
an author declared. Not numeric thresholds, which would be arbitrary
values wearing the appearance of discovered boundaries.

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
with and without the skill loaded. If conclusions change, it is
working. If only the wording changes, it is decorating.

Alongside a vocabulary-only result on that test, three further
observations would reopen decisions recorded in this document: stage
judgments proving unstable across sessions on the same repository;
provenance-at-promotion ceasing to change actual decisions; the
surrounding spec-driven-development ecosystem shifting enough that
Position misleads.

---

This document changes only when a decision above is reversed — which
makes it the slowest-changing file in the repository, and the right
place to report a divergence between a stated reason and observed
behavior.