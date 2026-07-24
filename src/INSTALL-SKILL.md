# INSTALL-SKILL

Installing this skill means giving one agent environment — a harness —
a way to consult this repository at the right moments. The procedure
has an unusual shape: its first act is its cheapest experiment, it
reads far more than it writes, and it treats every written line as a
liability to be justified by an observed failure.

## First act: place, and observe

Place the skill directory — `skills/software-development/` — where the
harness's own loader looks, and run a substantive engineering task. This placement is the precondition of every rung
that follows: it costs nothing to reverse, and it is the only way to
observe which rung the harness actually is. Do not infer the rung from
the harness's documentation or reputation; run the experiment.

A harness that loads this skill natively and consults it during that
task is completely installed by that placement. Stop there. Writing a
bridge for such a harness is residue at birth; writing hooks, wrapper
scripts, or additional always-on rules around it is worse — an
intervention compensating for a weakness that was never observed.
Appearing in a skill list is registration, not installation: what
closes the placement is the task showing the skill at work, not the
loader showing its name.

**A bridge is a compensation, and a compensation requires an observed
weakness.** Only an observed failure licenses going further, and
loading is not the only place a placement fails. Three couplings fail
too. *Silence* — the skill loads, but the harness's resident
configuration so dominates the context that the skill is never
actually consulted. *Conflict* — a resident instruction and the skill
pull a judgment in opposite directions, and nothing says which yields.
*Double voice* — the harness already carries engineering guidance of
its own, and the same judgment now answers to two authorities. Each of
these is as observable as a loading failure, and only observation
counts: "this harness probably can't integrate it" is a presumption,
and the kernel's provenance rule applies to the bridge's own reason
for existing.

## Before writing anything, read wide

A failure was observed, so something will now be written — and this is
the point where reading pays. Installation happens once; its cost is
amortized over every later use. Read `RATIONALE.md` for the reasons —
an installer holding only rules is correct only in enumerated cases,
while one holding the reasons is correct in the cases nothing
enumerates — and `skills/software-development/SKILL.md` with its
references, because they are the thing being installed and their
description is the authority on when the skill should trigger. Reading
creates no coupling. Restating does. Read everything; bind to almost
nothing.

## The ladder

Each rung is a larger compensation, and each is licensed only by the
observed failure of the rung below.

**Rung 0 — placement.** The harness loads the skill and the task shows
it consulted. Nothing is written.

**Rung 1 — a pointer in existing configuration.** The harness has an
always-loaded configuration surface (a rules file, agent guidelines, a
system-prompt section), and either it lacks native skill loading, or
loading succeeded while the coupling failed — the resident
configuration silenced the skill, collided with it, or already speaks
on the same subjects. Add the four elements below as a short block; for
a coupling failure, the subordination clause is the element doing the
work, because it writes down the precedence the collision showed was
missing. Resist the surrounding convention: such files usually carry
content, and the pressure to inline "just the key principles" is
exactly the copy this document forbids.

**Rung 2 — a dedicated bridge file.** The harness loads auxiliary
instruction files from a known location but offers no shared
configuration worth extending.

**Rung 3 — a dated inline copy.** The harness cannot read the source at
consult time, so content must be inlined. This is the weakest
installation: the copy must name its source commit, state that the
original is authoritative and this copy diverges silently, and carry a
re-sync-or-delete condition. The validation below matters most here.

## The division of ownership

Loose coupling follows from one rule: **the bridge owns triggering; the
skill owns meaning.** Triggering is harness-specific — a compensation,
and therefore the bridge's legitimate work. Meaning is
harness-independent. The moment a bridge paraphrases, summarizes, or
"adapts" the content, it has crossed the line and become a copy, with a
copy's failure mode.

## What a bridge contains

Four elements, and nothing else. If the bridge is growing past them,
the work has drifted from bridging to porting — stop.

**A trigger condition, derived at install time from the source's
description.** The description in `SKILL.md` is the authoritative
original for when this skill applies; the bridge's trigger is a dated
translation of it into the harness's language. Derive it fresh at
install time — do not copy any paraphrase, including this document's —
and preserve what the description deliberately withholds: small,
self-contained questions do not load a methodology. If the harness's
mechanism is always-on injection, inject the pointer and the condition,
never the content.

**A single entry point.** Route to `SKILL.md` and stop. Internal
navigation is the skill's own routing; a bridge that knows the internal
layout has bound itself to structure that may change.

**A subordination clause.** The bridge yields, explicitly, to the
project's declared values (security, compliance, compatibility, audit —
the kernel itself makes these binding), to the harness's own policies,
and to direct user instruction. A router outranks nothing.

**Its own registration as a compensation.** The observed failure that
licensed this rung, dated; where the authoritative source lives (URL
and commit, if vendored); and the conditions for re-examination or
deletion — the failure's cause disappearing (native loading arriving,
the colliding resident rule being removed), the source moving its
entry point, the description changing.

## Directives that keep the coupling loose

**Point, never restate.** Zero sentences of the source's content. If
the bridge seems to need to explain what the skill says, route earlier
instead of summarizing.

**Import no vocabulary.** No kernel terms, no mode names. The stage
policy is deliberately replaceable, and a vocabulary-free bridge
survives the replacement without edits.

**Depend one way.** The bridge belongs to the harness, not to this
repository — and this repository must never reference, list, or account
for any particular bridge.

**Change nothing else.** No modification to the skill repository, no
edits to other skills or rules to make room, nothing downstream
depending on the bridge's wording or existence. Deleting the bridge
must cost exactly one thing — the routing — and nothing more.

## A minimal bridge (rungs 1–2)

```md
# Bridge → AiAgent.Framework.SDD
Compensates for: <the observed failure, dated>.
Source: <url> @ <commit>. This file routes to the source and contains
none of its content.

<trigger condition, derived at install time from the source SKILL.md's
description: when to consult, and that small self-contained questions
do not require it>
When the condition holds, read <path>/SKILL.md and follow its internal
routing before proceeding.

This bridge yields to the project's declared values, this harness's
own policies, and direct user instruction.

Re-examine when: the failure this compensates for can no longer be
observed; the source moves its entry point; the source's description
changes.
```

Every directive above is visible in it, which is the template's only
purpose. Adapt the form to the harness; keep the four elements.

## Validation is part of installation

The installation — a placement or a bridge — is a capability, and it
starts unvalidated. Two observations close the procedure, run now
rather than deferred, since their cost is as one-time as everything
else here. **The with/without comparison:** run one substantive
engineering task with the installation active and once without; the
installation works if conclusions change, and decorates if only the
wording changes. **The quiet check:** confirm that a small,
self-contained question does not pull the source into context —
undertriggering there is intended behavior, and an installation that
defeats it has made the integration worse, not better. Record both
observations wherever the harness records such judgments; they are the
evidence the bridge's registration cites.