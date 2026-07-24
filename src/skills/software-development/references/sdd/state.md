# Capability State

A capability's stage is a judgment built from evidence. A state record
fixes that judgment as an observed fact about the project: what stage,
on what evidence, and what would reopen the question. It serves any
later reader — a future session, a different agent, a teammate — which
is why it is a record of fact, not a memory aid for any particular
tool: it stays valuable even for a reader who forgets nothing, because
the judgment and its evidence are about the project, not about the
reader.

## Where it lives

The record belongs to the repository, not to this skill — it is
project-specific fact and changes with the project. Default location:
`CAPABILITIES.md` at the repository root. A visible, self-describing
name means encountering it during ordinary exploration is itself the
hook; no instruction elsewhere needs to point at it. If the repository
already records capability maturity under its own convention, that
convention wins. (The default name is chosen policy, not a discovered
boundary.)

Begin the file with one line that says what it is, so any reader — with
or without this skill — takes it as fact rather than instruction:

```md
# Capability State
A record of each capability's maturity stage, the evidence behind that
judgment, and the conditions that would reopen it.
```

## Reading

The record is evidence, not command. Like any diagnosis, it can be
stale or wrong; when it conflicts with what the repository and real
behavior show, the conflict itself is information. Resolve it by
observation, then update the record — in that order. Never let a
recorded stage override observed reality; never silently ignore the
conflict either.

## Writing

Update at stage transitions, and whenever a judgment was expensive
enough that a later reader should not have to repeat it. An entry is a
few lines:

```md
## image-analysis
State: harden
Evidence: purpose validated in real agent use; parallel-execution need
observed repeatedly; page boundary verified (100 accepted, 101 rejected)
Re-verify when: upstream server version or API path changes
```

Record only what a capable reader could not soundly infer from the
repository itself — the judgment and its non-obvious evidence, never
restatements of contracts, tests, or structure. Per-session narration
and anything a stronger reader would reconstruct unaided are noise
here.

Creating the file where none exists is permitted whenever a transition
worth preserving occurs. It is an affordance of the repository, not an
obligation of every task.
