[English](README.md) | [한국어](README.ko.md)
# AiAgent.Framework.SDD

An agent skill for software engineering built on a single axis: **the
epistemic state of meaning**. Every capability's meaning sits somewhere
between unknown, known-but-weakly-expressed, and fixed-and-protected —
and most engineering advice is correct only relative to that position.

Two layers. `SKILL.md` is the kernel: stage-independent epistemology —
diagnoses are hypotheses, provenance is demanded when a value is
promoted rather than when it is picked, reversal cost is measured in
external dependency rather than effort spent. `references/sdd/` is one
replaceable policy built on that kernel: three modes (bootstrap,
harden, distill) with per-mode lenses, permissions, and stop
conditions. The kernel does not depend on the policy, and the
repository name does not bind the kernel. The axis doubles as the
scope test: what does not concern the epistemic state of meaning does
not belong here.

Within spec-driven development, this occupies the epistemology axis:
not how to author and enforce specs, but where a spec's content comes
from and when it may be fixed. The full argument is in `RATIONALE.md`.

## Where everything lives

Everything that ships lives under `src/`. **The content** is the
skill itself at `src/skills/software-development/` — read it, not
summaries of it. **The reasons** are in `src/RATIONALE.md`: why one
axis, what was deliberately omitted, where the risk lives, what
remains unresolved. Read it before adopting, and before installing —
reasons are what keep an installer correct in the cases no
instruction enumerates. **The procedure** is in
`src/INSTALL-SKILL.md`.

## Installing

Give an agent this:

```
Read and proceed:
https://github.com/pgsounds9006/AiAgent.Framework.SDD/blob/main/src/INSTALL-SKILL.md
```

The shortest case needs almost none of that procedure: a harness that
loads SKILL.md-format skills natively is installed by placing
`src/skills/software-development/` where its loader looks. The
procedure exists for what comes after that — observing whether the
placement actually works, and writing a bridge only where an observed
failure calls for one.

## Removing

Give an agent this:

```
Remove AiAgent.Framework.SDD.
```

There is no procedure to follow, because installation leaves nothing
an agent cannot find.