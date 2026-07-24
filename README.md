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

## Objections

A first external review has since supplied the first of them. Three
kinds of evidence came out of it. Two findings — the missing
contract-evolution policy and the under-specified stage adjudication —
independently replicate what internal review had already surfaced;
replication upgrades them from an author's doubt to a repeated
observation, and their priority rises accordingly. Several other
findings are misreadings by a demonstrably capable reader — and under
this repository's own documentation rule (prose earns its place by
recording what a capable reader would *not* infer), each misreading is
what licenses the corresponding subsection below to exist. And one
datum bears on the failure mode named above: the review did not merely
reuse this framework's vocabulary — it derived consequences the files
nowhere state, including the misjudgment damage scenarios under
Adoption below. For this reader, the text changed conclusions, not
just wording. One datapoint, positive, from a strong reader; the
failure mode concerns weaker paths and remains open.

Dispositions: **answered** — derivable from the files, written out here
because a capable reader demonstrably did not derive it. **conceded** —
a real gap, accepted. **amended** — the reviewer's formulation replaces
this repository's. **deferred** — a correct observation, deliberately
not acted on at this stage, reason stated. **converted** — recorded as
a re-verification condition rather than a present defect.

### Stage adjudication — answered in part, conceded in part

The review lists five undecided questions. Most have derivable answers;
that they were not derived is why they are written out.

**"How many real uses make a capability validated?" — no number, by
design.** Bootstrap's lens is to ask, per capability and *in advance*,
what real use would have to show for this capability to count as
validated — then arrange to observe exactly that. A global threshold
would be an arbitrary value wearing the appearance of a discovered
boundary, which the kernel forbids by name. The subjectivity the
reviewer observes is real, but it is placed before the observation
(pre-registered criteria), not after it (post-hoc counting) — where it
does the least damage.

**"Do internal and external users weigh differently?" — that weighting
is the framework's oldest borrowed part.** Fowler's line: consumers you
can find and change do not fix your contracts; consumers you cannot,
do. Internal use validates purpose; only external dependency freezes
meaning.

**"Is a partially verified capability bootstrap or harden?" — the
question assumes a badge the framework doesn't issue.** Modes attach to
the change being made, not to the capability as a label. Harden the
verified boundary; keep bootstrapping the rest. Where that feels wrong,
the unit was drawn too large — a capability is any unit with its own
contract and its own maturity, and it decomposes.

**"Tests exist but nothing real has consumed it — which stage?" —
neither; that is the anti-pattern both modes name.** Fixing unobserved
meaning is speculative contract-making, which harden assigns to no
stage. Such tests are premature fixation: revisable, not protective.

**"A published contract with no presumed users — may distill delete
it?" — yes, and the files say so directly:** distill permits deleting
working, even published, structures that real usage has bypassed. The
kernel adds the condition the reviewer's word "presumed" trips: absence
of dependents is a claim about external reality, so its provenance must
be observation, not presumption.

**What remains conceded is the meta-finding:** these answers were
derivable and were not derived, and judge-to-judge agreement is
unmeasured. Accepted follow-up: a judgment rubric written as a decision
procedure — which evidence types count, what falsifies a stage call, an
explicit undetermined state — plus the reviewer's field extensions to
the state record (confidence, last-verified, evidence links). Declined:
numeric thresholds, for the reason above.

### The expression-strength ladder — answered; expression conceded

The review reads the ladder as a universal quality ranking of layers
and correctly shows no such ranking survives contact with reality. The
ladder is not that. It answers a narrower question: for one meaning
that could live at several layers, where should it be fixed? Three
conditions were always attached, and all three live in words that
carried too much silently. *Appropriate* — the target must be able to
express the meaning at all; a schema that cannot carry the semantics
was never a candidate. *Mixed authority* — motivation, risk, and
operational strategy are different meanings from functional contract,
each fixed at its own strongest layer; prose keeps what only prose can
say. *Verified* — standard semantics outrank an SDK only when observed
to hold in the actual implementation; an unverified standard is the
kernel's hypothesis in contract's clothes. Under those conditions the
remaining order is deliberate: it ranks by how many consumers
understand the expression without coordination, because that property
decides whether a promotion reduces or multiplies future interpretive
burden. The reviewer's matrix dimensions are real properties — they are
the conditions, unbundled. Conceded: one line in `harden.md` leaves
three conditions implicit, and a capable reader misread it; the
conditions stand documented here and are candidates for inlining.

### Deleting the superseded expression — answered; amended

The stop condition says a promotion is complete only when the
superseded weak expression is deleted; the review objects that humans
still need prose. *Superseded* is the load-bearing word: what must be
deleted is the expression that had been carrying the contract's
authority — the prose rule agents obeyed, the convention that acted as
the schema before the schema existed. Prose that never carried
authority is governed by rules that already permit it: documentation
recording what a capable reader would not infer stays, and a
restatement kept for a consumer who cannot yet read the strong layer is
a compensation — legitimate, weak-layered, marked with the condition
that expires it. The review's operational proposal — keep derived
copies only if marked non-authoritative and linked to or generated from
the original — is exactly what a marked compensation looks like in
practice, and is adopted as the concrete rendering of the stop
condition. Amended outright: the review's phrasing of the underlying
principle — *the problem is not duplication but independently
modifiable originals* — is sharper than the kernel's one-fact-one-
location paragraph and should be folded into it.

### Examples — conceded, without reversing the omission

The review's strongest constructive finding. The no-examples decision
governed text that consumers load *while working*, where examples get
replicated instead of understood. Evaluation fixtures are never loaded
while working — they sit outside the judgment path — so the original
rationale does not reach them, and they attack the largest conceded gap
directly: representative cases per stage, boundary cases, known
misjudgments, and the with/without comparison already prescribed under
Failure mode above. Accepted: an `evals/` directory is the next
substantive commit, ahead of any further prose. It also moves a promise
this repository currently keeps only in prose into an artifact — by
this framework's own vocabulary, a harden move applied to itself.

### Contract evolution — conceded; previously acknowledged, now replicated

Already in Unresolved; the review independently re-derives it and
sharpens the scope: deprecation, version transitions, data migration,
compatibility layers, per-consumer staged cutover. One distinction the
enumeration invites: retiring a validated contract that reality
outgrew, and retracting a contract that was fixed without validation,
are different events with different provenance — likely different
policy. Hickey's direction — turn breakage into accretion; new names,
coexistence — remains the sketch. Designing the policy now, before an
instance has been observed in this framework's own use, would be fixing
the unobserved; the gap stays open and stays named.

### Repository operations — triaged, not checklist-accepted

The stage's declared purpose — collecting external counter-observation
— is the triage criterion. **License: conceded, urgent.** Without one,
external use is legally blocked, and external use is this stage's
input; a license is not repository polish but the stage's precondition.
**Counterexample intake: conceded.** A contribution note and an issue
template for stage-judgment disagreements and misfire reports are the
input channel the State section above promises. **Installation and
compatibility: one honest line each.** Tested where it has been tested;
a compatibility table beyond observation would assert exactly what the
kernel forbids asserting. **Versioning and releases: deferred.** A
version pin is a stability promise; nothing here is stable; the absence
of releases is currently the accurate signal, and cutting v0.x would
manufacture the appearance of a boundary no one has observed. **CI on
markdown structure: unopposed, cheap, low priority.**

### The two names — one a chosen trade-off, one converted

The repository name joins the spec-driven-development conversation on
purpose and pays in first-impression precision; the Position section
above is the payment, and the one-line GitHub description should carry
the disambiguation earlier — accepted micro-fix ("the epistemology axis
of SDD: when a spec earns authority"). The skill name's genericity is
load-bearing and documented — wide for recognition, deliberately quiet
on small tasks — but the review adds a scenario the original reasoning
did not consider: a profile containing several generic development
skills, where the name collides. Converted: if this skill ever shares a
profile with another general development skill, the name question
reopens.

### Adoption, and where the risk actually lives

**The review's split verdict matches the self-classification, and its
risk sentence is adopted as-is: stage judgment is subjective, while
per-stage permitted behavior is strong.** That is where the risk
concentrates — not in the kernel, whose contents are questions and
cannot compel anything, but in the modes' *permissions*: leave error
handling minimal, skip the abstraction, remove aggressively. A
permission is a power, and every power here is gated by the least-
specified input in the system. The damage scenarios the review derives
— production error handling skipped as premature hardening, a consumed
interface misread as internal, defensive code removed past what the
tests actually guarantee — are all one shape: a permission honored
while its mode's entry evidence or stop condition is not.

**The mitigations already exist in the files and must stay
load-bearing, not decorative.** Declared project values — security,
compliance, compatibility, audit — are operational-layer contracts the
kernel makes binding over any mode; a stage call can never outrank
them. Distill's own stop condition anticipates the regression scenario
by name: tests passing is necessary but not sufficient. The
mode-mismatch signals in `index.md` are tripwires for exactly the
misclassifications above.

**Recommended posture, in this framework's own terms.** First,
advisory before autonomous: advice is internal and reversible, while an
unreviewed production change makes external systems depend on a
judgment that has not yet earned that dependency — the reversal-cost
rule applied to the framework itself. Second, permissions only with
stated evidence: any act done under a mode permission should carry the
observation grounding the stage call — not "bootstrap, so no
abstraction" but "no external consumer observed and purpose
unvalidated, so no abstraction." This is deliberately in tension with
the Interface rule against mode announcements, and it resolves the
framework's own way: the verbosity is a compensation for the present
weakness of unmeasured judgment stability, kept at a weak layer and
marked with its expiry — it lapses when evals show stage calls
agreeing. Third, declared values always outrank — not a new rule; the
kernel's.

**And the review's closing is endorsed over waiting:** reversible,
non-replacing use in real projects is not a compromise while the
evaluation harness is missing — it is the bootstrap method itself.
Counterexamples, misfires, and stage disagreements from that use are
the input this document has been asking for all along.