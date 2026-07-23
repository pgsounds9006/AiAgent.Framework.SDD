# Harden

Purpose: promote meaning that real use has validated into explicit
contracts at the strongest appropriate layer, so it stops living as
tacit knowledge, ad-hoc instruction, or convention.

Hardening is not adding robustness everywhere. It is moving each
discovered, stable meaning from a weak expression to a strong one — and
deleting the weak expression.

## Lenses

- For each recurring instruction, workaround, or interpretive burden
  observed during real use, ask: does a standard already express this?
  Search the protocol, the SDK, the type system, the schema language,
  the platform — before inventing a field, a convention, or a prose
  rule. Standards are understood by consumers you haven't met and
  improve without your effort.
- Order expression strength: existing standard semantics > structured
  SDK features > general schema constraints > local runtime rules >
  natural-language instruction. Discovery runs down this ladder;
  fixation runs up it.
- When a description feels muddy, the problem is usually not length but
  *mixed authority* — functional meaning and operational strategy
  sharing one field. Separate by authority, not by sentence count.
- For each boundary or invariant about to become a contract, demand its
  provenance: an observed failure, a documented limit, a measured
  requirement. Record what would trigger re-verification (a server
  version change, an API path change).
- When fixing meaning into text aimed at an evolving consumer — tool
  descriptions, instructions, prompts, documentation — classify each
  element as domain truth or consumer compensation. Truths may climb
  the ladder and stay. Compensations remain at weak layers and carry
  the condition that expires them, usually the consumer's next
  capability step; left unmarked, they fossilize into ceilings.
- Documentation earns its place by deviation: record what a competent
  newcomer — human or agent — would *not* infer from the code and
  contracts. What matches intuition is already stated once,
  authoritatively, by the system itself; restating it manufactures a
  second original.
- For high-value, high-risk capabilities — fragile dependencies at the
  product's core — hardening means *more* observation: contract tests,
  failure visibility, diagnosability. Never demotion to the periphery.
- When fixing meaning in prose documentation, write only what departs
  from a capable reader's sound inference — the verified-but-surprising
  boundary, the deliberately broken convention, the dependency that
  looks optional but is load-bearing. What matches expectation is
  already expressed by contracts, tests, and structure; prose repeating
  them is a second original.

## Permissions

- Let the code grow. Tests, validation, error models, adapters, and
  metadata are legitimate increases here; they remove uncertainty of
  meaning, not add features. This is the one stage where "it got
  bigger" is not by itself a criticism.
- Make errors, side effects, idempotency, and boundaries explicit even
  where the happy path already works.
- Test against real environments, not only mocks, for meanings that
  only real environments can confirm.

## Stop conditions

- A promotion is complete only when the superseded weak expression is
  deleted. Structured metadata added while the old prose instruction
  remains is not hardening — it is a duplicate contract that will
  diverge.
- Do not harden meanings that were never observed in use; that is
  speculative contract-making, which belongs to no stage.
- Exit this mode when the capability's inputs, outputs, side effects,
  errors, and boundaries are explicit, expressed at their strongest
  appropriate layer, and protected by tests. What remains after that is
  expression cost — distillation's business. The promoted contracts and
  their re-verification conditions enter the capability record
  (`state.md`).
