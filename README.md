[English](README.md) | [한국어](README.ko.md)

# AiAgent.Framework.SDD

**A context-sensitive specification for how software-engineering agents discover, establish, protect, and simplify software meaning.**

> **It is a specification of how software meaning acquires authority.**

## What kind of specification is this?

A software specification usually describes what a system should do.

This project specifies something different but closely related: how a software-engineering agent should reason about meaning before treating it as a durable fact, policy, interface, or contract.

It governs questions such as:

* Is this behavior observed, deliberately chosen, inherited through dependency, or still hypothetical?
* What evidence supports the current interpretation?
* Is the decision local and reversible, or will consumers depend on it?
* When should an informal meaning be promoted into an enforceable representation?
* When has existing structure stopped carrying meaning and become residue?

This is therefore not a replacement for product requirements, domain decisions, or architectural intent.

It is a **reasoning and contract-governance specification** that helps an agent work safely when those inputs are incomplete, implicit, distributed, or still emerging.

## SDD when the specification is incomplete

Spec-driven development is often described as implementation driven by an explicit, prewritten specification.

That is an important case, but it is not the only environment in which an agent operates.

In many systems, the effective specification is fragmented across:

* existing code,
* runtime behavior,
* tests,
* documentation,
* external services,
* consumer dependencies,
* operational conventions,
* and decisions that were never recorded clearly.

In such an environment, an agent must do more than follow a specification.

It must determine:

1. what is currently known,
2. what is merely inferred,
3. what has been deliberately decided,
4. what has become consequential through dependency,
5. and what has earned protection as an authoritative contract.

AiAgent.Framework.SDD specifies that part of the agent loop.

```text
observe
  → hypothesize or choose
  → implement or probe
  → verify and adjudicate
  → establish and protect
  → simplify
  → reassess when evidence changes
```

The framework does not require this to appear as a visible, linear workflow. These activities may overlap, repeat, or remain trivial when the decision is low-risk.

## Useful where formal specifications are limited

This framework is especially useful in organizations where specifications are absent, incomplete, outdated, or primarily implicit in the existing system.

It does not treat current behavior as automatically correct.

It also does not allow a convenient guess to become an authoritative contract merely because it was implemented once.

Instead, it helps the agent turn recoverable evidence and deliberate decisions into progressively stronger specifications.

A discovered behavior may become a repeatable test.

A chosen policy may become a schema or runtime rule.

A compatibility dependency may become an explicit migration obligation.

In this sense, the framework does not merely consume specifications. It helps incomplete specifications become explicit, reviewable, and enforceable.

## Sources of specification authority

Different kinds of meaning earn authority in different ways.

### Observed facts

Claims about existing behavior must be supported by observation, authoritative documentation, or repeatable verification.

Seeing something work once is evidence, but it is not by itself a durable guarantee.

### Deliberately chosen policies

A desired rule may be established through an explicit product, architectural, security, legal, or operational decision.

Such a policy does not need to be discovered in existing behavior. Its authority comes from a legitimate decision and must be represented clearly enough to be implemented and reviewed.

### Compatibility obligations

Existing dependency creates a cost of reversal and may require compatibility, migration, or deprecation work.

Dependency does not prove that the depended-upon behavior is correct or desirable. It creates an obligation that must be handled deliberately.

Keeping these sources distinct prevents accidental behavior, intentional policy, and legacy dependency from being mistaken for one another.

## A reasoning specification, not a mandatory workflow

Some development frameworks prescribe a visible sequence of planning, implementation, testing, review, and verification.

That structure can be valuable, but this project makes a different trade-off.

AiAgent.Framework.SDD does not require:

* a fixed lifecycle,
* a mandatory set of artifacts,
* a test-first process for every change,
* a visible mode-selection step,
* or a single problem-solving strategy.

It imposes reasoning obligations in proportion to:

* uncertainty,
* dependency,
* reversibility,
* verifiability,
* and the consequence of being wrong.

A typo fix or straightforward local null check should require almost no additional ceremony.

An ambiguous requirement, public contract change, arbitrary external limit, or undocumented compatibility dependency should receive more deliberate treatment.

> It should not make simple work complicated.
> It should make consequential uncertainty harder to ignore.

The framework does not prescribe a predetermined solution.

It constrains which claims and commitments are justified by the available evidence and decisions.

## Invisible by default, recoverable when needed

The agent should not normally announce internal framework mechanics.

Users generally do not need to be told that a mode was selected or that an internal policy was loaded.

They should be able to see:

* what is known,
* what was chosen,
* what remains uncertain,
* what evidence supports the conclusion,
* what was verified,
* and what compatibility or reversal risks remain.

> **Hide the framework, not the reasoning.**

Invisible does not mean untraceable.

Consequential evidence, decisions, and compatibility judgments should remain recoverable for review, debugging, audit, or reassessment.

## Three reasoning modes

`bootstrap`, `harden`, and `distill` are not project phases and do not form a mandatory sequence.

They are reasoning modes that may apply independently to a capability, contract, or decision.

A single system may use all three at the same time.

### Bootstrap

Use bootstrap when the meaning is still uncertain.

Investigate actual behavior, make the smallest useful reversible choice, and avoid presenting provisional decisions as established guarantees.

Temporary values and local structures are legitimate when they remain cheap to revise.

Bootstrap does not mean skipping verification. A probe may produce an observation, but any meaning that survives the experiment should eventually be protected by something repeatable.

Bootstrap asks:

* What is still unknown?
* What is an observation, and what is an assumption?
* What can remain provisional?
* What would reduce the uncertainty?
* What must not yet become a durable commitment?

### Harden

Use harden when meaning has been validated, deliberately established, or made consequential through dependency.

Protect it in the strongest appropriate form, such as:

* a type,
* a schema,
* a runtime rule,
* a repeatable test,
* a protocol constraint,
* a migration rule,
* or another enforceable contract.

The strength of protection should match the consequence of being wrong and the number of consumers that depend on it.

Once a stronger authoritative source owns the meaning, remove or derive weaker independently maintained representations that could drift.

Harden asks:

* What meaning is sufficiently established?
* What is the source of its authority?
* Who or what depends on it?
* What form can protect it most effectively?
* Where should its authoritative representation live?
* Does changing it require compatibility or migration work?

### Distill

Use distill when the meaning is already protected.

Remove exploratory scaffolding, obsolete abstractions, duplicated instructions, temporary compensation, and defensive structure that no longer carries meaning.

The goal is not less code by itself.

The goal is a smaller and clearer expression of the same protected behavior, policy, diagnostics, and compatibility obligations.

Distill asks:

* Does this structure still protect or communicate meaning?
* Is it residue from exploration or hardening?
* Is the same fact maintained independently elsewhere?
* Can it be removed or derived without weakening behavior?
* Would removal reduce diagnostics, compatibility, or future verifiability?

## A small example

Suppose an integration needs a page-size value.

The agent may initially choose `100` as an internal default.

Choosing a reasonable internal value does not require proof when it remains local and cheap to change.

The agent must not claim that `100` is the external service limit without evidence.

If authoritative documentation or repeatable observation later confirms the external limit, that fact may be protected by a test, runtime validation, or protocol constraint.

Alternatively, the organization may deliberately establish `100` as its own product policy even when the external service permits more. That policy receives authority from the decision, not from external observation.

If consumers begin to depend on the value, changing it creates a compatibility obligation. That dependency does not prove the value is inherently correct.

Once an authoritative representation exists, duplicated prose and temporary checks can be removed or derived from it.

The implementation was never blocked.

Only the unsupported promotion from a convenient choice to an authoritative commitment was blocked.

## Structure

The skill has two primary layers.

### Kernel

`src/skills/software-development/SKILL.md`

The kernel contains mode-independent engineering principles:

* diagnoses remain hypotheses until adjudicated,
* one successful execution is not repeatable verification,
* provenance is required when meaning is promoted,
* observed facts, chosen policies, dependencies, and temporary compensation remain distinct,
* one fact should have one authoritative location,
* and reversal cost is measured primarily through dependency and consequence.

### SDD policy

`src/skills/software-development/references/sdd/`

The SDD policy applies the kernel through the `bootstrap`, `harden`, and `distill` reasoning modes.

The policy is replaceable. The kernel does not depend on those specific mode names.

### Rationale

`src/skills/software-development/references/rationale.md`

The rationale explains:

* why the framework uses one primary reasoning axis,
* what was deliberately omitted,
* where its risks lie,
* how mode judgment can fail,
* and which questions remain unresolved.

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
