[English](README.md) | [한국어](README.ko.md)

# AiAgent.Framework.SDD

**A software-engineering skill that helps an agent know when to explore, when to commit, and when to simplify.**

Most SDD systems tell an agent which documents to create and which steps to follow.

This one does not.

It does not require a fixed lifecycle, a specific set of artifacts, or a visible process. Instead, it changes how an agent treats meaning while solving a problem:

* Keep uncertain meaning flexible.
* Turn validated meaning into a contract.
* Remove structure that no longer protects meaning.

The agent remains free to investigate, design, implement, and revise in whatever way the problem requires.

The framework constrains premature certainty, not problem-solving.

## Invisible by design

The agent should not announce that it is using this framework.

It should not tell the user that it selected a mode, loaded a policy, or followed an internal procedure. Those details do not solve the problem.

What the user should see is:

* what is known,
* what was chosen,
* what remains uncertain,
* why a decision was made,
* and whether the result was verified.

**Hide the framework, not the reasoning.**

## Three reasoning modes

`bootstrap`, `harden`, and `distill` are not project phases or a three-step workflow.

They are reasoning modes that may be applied independently to each capability, contract, or decision. A single system may use all three at the same time.

### Bootstrap

Use bootstrap when the meaning is still uncertain.

Investigate the real behavior, try the smallest useful implementation, and avoid turning guesses into public contracts.

You may choose temporary values and local structures. Do not pretend that they are externally established facts.

### Harden

Use harden when the meaning has been validated and now needs protection.

Promote it into the strongest appropriate form: a type, schema, runtime rule, test, protocol, or other enforceable contract.

Once a stronger contract owns the meaning, remove weaker duplicate sources that could drift.

### Distill

Use distill when the meaning is already protected.

Remove exploratory scaffolding, obsolete abstractions, duplicate instructions, and defensive structure that no longer carries meaning.

The goal is not less code by itself. The goal is a smaller and clearer expression of the same protected behavior.

## A small example

Suppose an integration needs a page-size value.

The agent may initially choose `100` as an internal default. Choosing a value does not require proof.

But the agent must not claim that `100` is the external service limit without evidence.

If observation or authoritative documentation later confirms that limit, and consumers begin to depend on it, the value can be promoted into a schema constraint, runtime validation, or compatibility contract.

Once that stronger contract exists, duplicated prose and temporary checks should be removed.

The implementation was never blocked. Only the unsupported promotion from choice to contract was blocked.

## Why this is SDD

A specification should drive development only to the extent that its contents deserve authority.

Traditional SDD commonly focuses on how specifications are written, decomposed, and enforced.

This project focuses on an earlier question:

> Where did the meaning in the specification come from, and when is it safe to fix that meaning as a contract?

It can be used alongside requirement documents, design documents, task generators, tests, or other SDD systems. It does not replace them.

It governs how confidently their contents should be treated.

## Structure

The skill has two layers.

### Kernel

`src/skills/software-development/SKILL.md`

The kernel contains stage-independent engineering principles:

* diagnoses are hypotheses until verified,
* provenance is required when a value is promoted, not merely when it is chosen,
* facts, policies, and temporary compensation must remain distinct,
* reversal cost is measured by external dependency rather than effort already spent.

### SDD policy

`src/skills/software-development/references/sdd/`

The SDD policy applies the kernel through the `bootstrap`, `harden`, and `distill` reasoning modes.

The policy is replaceable. The kernel does not depend on those specific mode names.

### Rationale

`src/skills/software-development/references/rationale.md`

The rationale explains why the framework uses one axis, what was deliberately omitted, where its risks lie, and which questions remain unresolved.

Read it before adopting or modifying the framework.

## Installing

Give an agent this instruction:

```text
Read and proceed:
https://github.com/pgsounds9006/AiAgent.Framework.SDD/blob/main/src/INSTALL-SKILL.md
```

A harness that loads `SKILL.md` skills natively usually needs only the directory at:

```text
src/skills/software-development/
```

The installation procedure covers the remaining work: verify that the placement actually affects decisions, and add a bridge only when an observed integration failure requires one.

## Removing

Give an agent this instruction:

```text
Remove AiAgent.Framework.SDD.
```

Installation leaves no hidden state that an agent cannot locate and remove.
