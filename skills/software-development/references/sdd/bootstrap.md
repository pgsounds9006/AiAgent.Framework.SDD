# Bootstrap

Purpose: make an uncertain capability work with the smallest contract
surface, so that real use can reveal what it should actually mean.

This stage's simplicity is strategic, not aesthetic: it exists because
you do not yet know what to promise. Every element added now will be
read as a promise — by agents, by tests, by adjacent code — and removing
a promise later costs far more than adding one.

## Lenses

- Distinguish *contract surface* from *implementation volume*. The goal
  is not the least code but the fewest promises. A large throwaway
  implementation with no external commitments is cheaper than a small
  one that exposes a speculative schema.
- Distinguish "I don't need this" from "I don't yet know what form this
  should take." The second is the real reason to withhold — not YAGNI
  but deferred commitment.
- For each uncertain requirement, ask: what is the lightest layer that
  can express this for now? A one-off natural-language instruction or a
  local hack is a legitimate experimental medium; a schema field is not.
- Ask what real use would have to show for this capability to be
  considered validated — and arrange to observe exactly that.

## Permissions

- Build candidates fully and throw them away. Standing up a working
  implementation to test it against real requirements — then deleting
  it — is a valid and often superior alternative to comparison tables.
- Leave error handling at the level needed to observe the core flow.
  Exhaustive edge handling of an unvalidated capability hardens guesses.
- Prefer forms that are easy to delete: local over shared, inline over
  abstracted, instruction over schema, private over published.
- Skip abstractions and extension points entirely, even obvious-seeming
  ones. If the capability survives validation, hardening will place
  them with evidence instead of anticipation.

## Stop conditions

- Stop adding when the core flow works end-to-end and can be observed
  in real use. Completeness is the next stage's business.
- Stop experimenting freely the moment something external — another
  user, system, or published artifact — starts depending on the
  candidate. Dependency is the boundary; effort spent is not.
- Exit this mode when real use has shown the capability's purpose is
  valid and its recurring needs and failure shapes have been observed.
  Those observations are hardening's input; without them, hardening
  would only be formalizing guesses. The validation and its basis enter
  the capability record (`state.md`).
