#!/usr/bin/env bash
# Package the software-development skill into a versionless, folder-wrapped
# archive named software-development.skill (root entry: software-development/).
#
# The version lives only in SKILL.md frontmatter and the git tag; the archive
# carries no version marker in its name or structure, so unpacking always lands
# on the same folder and needs no processor to normalize a versioned name.
#
# Used by both the release workflow (the shipped artifact) and CI (a build
# smoke test), so the two exercise identical packaging.
set -euo pipefail

SRC="src/skills/software-development"
OUT="software-development.skill"

rm -rf build "$OUT"
mkdir -p build
cp -r "$SRC" build/software-development
( cd build && zip -r "../$OUT" software-development )

unzip -l "$OUT"
unzip -l "$OUT" | grep -q 'software-development/SKILL.md' \
  || { echo "::error::archive missing software-development/SKILL.md"; exit 1; }
echo "packaged $OUT"
