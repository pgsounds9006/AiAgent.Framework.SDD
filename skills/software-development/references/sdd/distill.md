# Distill

Purpose: with the capability's meaning fixed and protected, remove every
expression that no longer carries any of it — until what remains is the
semantic minimum.

This is not code golf and not the same simplicity as bootstrap's.
Bootstrap was simple because little was known; distillation is simple
because everything is known and the residue of finding it out can now be
seen clearly and removed.

## Lenses

- For each candidate removal, first name what the code currently
  carries — which behavior, contract, meaning, boundary, or verification
  it serves — and where that duty will live afterward. "Tests still
  pass" is necessary but not sufficient; structural meaning and
  diagnosability must survive too.
- The usual residue of hardening: exploratory branches, self-built
  mechanisms superseded by adopted standards, indirection created only
  for testability that tests no longer need, the same constraint
  enforced in several places, defensive handling of states the type
  system or validation now excludes, pass-through wrappers, comments
  and documentation restating what the code and contracts already say,
  compensations written for a consumer limitation the consumer has
  since outgrown, names shaped by a structure that no longer exists.
  Hunt these specifically.
- Ask of each surviving element: does removing it cost meaning, or only
  familiarity? Only the first justifies keeping it.
- Apply the "capable reader's inference" test within the project's
  declared requirements, not in the abstract. An artifact that
  discharges a declared guarantee — an audit-trail proposal, a
  compliance record — is not a restatement of inference; it is an
  expression carrying a contract, and removing it removes the
  guarantee. Residue is what serves no declared or verified duty, not
  what serves one this methodology didn't invent.
- Distinguish structure needed to *explain the present* from structure
  built to *enable a future*. Keep the first; the second was never
  validated and does not earn its keep by existing.

## Permissions

- Remove aggressively within what the tests guarantee. Defensive code
  duplicating a guarantee the contract layer already enforces is
  removable, and its removal makes the real guarantee more visible.
- Delete working, even published, structures that real usage has
  bypassed — effort spent building them is not a reason to keep them;
  only external dependency is.
- Rename and reshape to match the meaning that survived, not the
  history of how it was found.

## Stop conditions

- No new meaning, no new features. A replacement structure is
  permissible only when it expresses existing meaning more directly,
  and only accompanied by the removal it replaces — net reduction, not
  addition.
- Stop at the point where one more removal would damage readability,
  blur where a meaning lives, collapse a responsibility boundary,
  couple tests to implementation detail, or hide the cause of a
  failure. That point — every remaining element carrying behavior,
  contract, meaning, boundary, or verification — is completion.
- Exit this mode into stability: further change to this capability
  should be minimal and contract-preserving, and genuinely new
  requirements start their own bootstrap loop instead of accreting
  here. The stable state, and what would reopen it, enter the
  capability record (`state.md`).
