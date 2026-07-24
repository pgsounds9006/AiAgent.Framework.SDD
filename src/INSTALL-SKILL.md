# INSTALL-SKILL

Installing this skill means giving one agent environment — a harness —
a way to consult this repository at the right moments. The procedure
has an unusual shape: its first act is its cheapest experiment, it
reads far more than it writes, and every line it writes must be
justified by something observed during the installation itself. The
installer is the only agent that will ever hold this skill's full
content and the harness's full resident configuration in one context;
a judgment deferred to later work assumes an observer that
installation does not leave behind.

## First act: place, then follow the procedure

Installation is two acts: place the skill where the harness's loader
looks, then follow the procedure below. The first is nearly the whole of
it, but it is not all of it — placing the skill is not the same as having
installed it. Place the skill directory — `skills/software-development/`,
unpacked from the distributed archive if that is how it arrives — where
the harness's own loader looks, and run a substantive engineering task.
This placement is the precondition of everything that follows: it costs
nothing to reverse, and it is the only way to observe how the harness
actually loads. Do not infer from the harness's documentation or
reputation; run the experiment. What the procedure needs after that —
the reading, the resident-system survey, the coupling judgment — is part
of installing, reached in turn rather than studied up front.

The canonical package is the release asset at a version-stable endpoint —
`https://github.com/pgsounds9006/AiAgent.Framework.SDD/releases/latest/download/software-development.skill`
— which always resolves to the current release, so a reference to it
survives every version bump and needs no re-editing when a new one ships.
The version a placed copy carries is recorded in its own `SKILL.md`
frontmatter; the git tag only mirrors it.

The task yields the mechanical half of the installation's evidence:
whether the skill loads at all, and whether the harness consults it
when it applies. Appearing in a skill list is registration, not
installation — what counts is the task showing the skill at work, not
the loader showing its name. Whatever the result, write nothing yet:
the other half of the evidence comes from the survey.

A harness may load skills only at session start, putting this
observation beyond the installing session's own reach. That does not
defer it: the installation is a procedure, not a session, and it ends
when its observations exist, not when its files are copied. If the
harness offers a way to run a task in a fresh session — an exec mode,
a sub-session — using it is part of this procedure. Only a harness
that offers none turns the remainder into a handoff, and a handoff is
explicit: the installation reports itself incomplete and names the
observations still owed, so the next session's first substantive task
knows it is finishing an installation rather than merely using one.

## Read wide

Reading is what makes the survey possible — coupling cannot be judged
without holding both sides. Read
`skills/software-development/references/rationale.md` for the reasons — an
installer holding only rules is correct only in enumerated cases,
while one holding the reasons is correct in the cases nothing
enumerates — and `skills/software-development/SKILL.md` with its
references, because they are the thing being installed and their
description is the authority on when the skill should trigger.
Installation happens once; its cost is amortized over every later
use. Reading creates no coupling. Restating does. Read everything;
bind to almost nothing.

## Survey the resident system

Enumerate everything in the harness that speaks while engineering
work is done: always-loaded configuration (rules files, agent
guideline files, system-prompt surfaces), other installed skills,
hooks and wrappers that inject instructions. This is observation, not
presumption — the resident configuration is text that exists now and
can be read now, and a conflict between two written instructions is
visible on the page long before any task trips over it.

For each resident voice, ask two questions: does it speak on the
subjects this skill speaks on, and if so, does it contradict the
skill anywhere — and is the precedence between them written down?
Three findings matter. *Silence* — an always-injected surface
dominates the context so thoroughly that a loaded skill goes
unconsulted; the first act's task is the probe for this. *Conflict* —
a resident instruction and the skill pull the same judgment in
opposite directions, with nothing saying which yields. *Double voice*
— the harness already carries engineering guidance of its own, and
the same judgment now answers to two authorities. This finding
splits, and the split decides everything: voices that reach the same
judgments are *agreement overlap* — redundancy, whose cost is context
and whose remedy, if one is ever needed, is scoping, not writing. It
licenses nothing. Voices that differ in strength, scope, or direction
impose an adjudication burden on every task they touch; that burden
is the weakness, and what it licenses is a precedence declaration,
not a router.

**A bridge is a compensation, and a compensation requires an observed
weakness** — and every weakness above is observable here, inside the
installation: loading and silence by the first act's task, conflict
and double voice by reading the resident configuration against the
skill. "This harness probably can't integrate it" remains a
presumption; "this rules file contradicts the skill at these points"
is an observation, and only the second licenses writing.

And an observation is a recorded finding, not an executed command:
which voices exist, what each was found to say on this skill's
subjects, and the verdict for each. A probe that ran without its
finding written down observed nothing — the ladder consumes findings,
and the bridge's registration cites them.

## The ladder

Each rung is a larger compensation, licensed only by what the first
act and the survey observed.

**Rung 0 — placement.** The skill loads, the task shows it consulted,
and the survey found no resident voice on its subjects. Nothing is
written. Writing a bridge here is residue at birth; hooks, wrapper
scripts, or additional always-on rules are worse — interventions
compensating for a weakness that was never observed.

**Rung 1 — a pointer in existing configuration.** The harness has an
always-loaded configuration surface (a rules file, agent guidelines,
a system-prompt section), and either it lacks native skill loading,
or loading succeeded while the survey found a coupling failure — a
resident voice that silences the skill, collides with it, or speaks
on its subjects with divergent strength or scope. Agreement overlap
licenses nothing. The block carries only the elements that answer the
licensed failure, the registration always among them: a routing
failure takes the trigger and the entry point; a collision or
divergent overlap takes the precedence line — the one sentence that
writes down which authority governs where both speak. Resist the
surrounding convention: such files usually carry content, and the
pressure to inline "just the key principles" is exactly the copy this
document forbids.

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

Element types, not a checklist: a bridge carries only those its
licensed failure needs, the registration always among them. If the
bridge is growing past what the failure licensed, the work has
drifted from bridging to porting — stop.

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
and to direct user instruction. A router outranks nothing. And when
the licensed failure is an adjudication burden — two authorities on
one subject — this clause carries one more line, the only one that
answers that failure: which authority governs where both speak.
Subordinating the bridge settles nothing between them; the precedence
must be written, or the failure survives its own compensation.

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
purpose. Adapt the form to the harness; carry the elements the
licensed failure needs, and for an adjudication burden add the
precedence line.

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
defeats it has made the integration worse, not better.

And a bridge is validated against the failure that licensed it: a
routing check validates routing elements only, and a precedence line
is validated by a task where both authorities speak and the declared
one governs. Closing observations that never touch the licensed
failure close nothing — the installation is unaudited, not complete.
Record the observations wherever the harness records such judgments;
they are the evidence the bridge's registration cites.