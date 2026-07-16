#!/usr/bin/env bash
#
# scaffold-docs-project.sh
# -------------------------
# Recreates the reusable folder structure of the Sapey documentation repo
# for a brand new project. Generic skeleton only - no project-specific
# content dirs (no "Sapey Prototype", no phase-2.1/2.2, no named workspaces).
#
# Creates the directory tree plus stub versions of the key governance files,
# and drops a .gitkeep in every otherwise-empty folder so git tracks it.
#
# Usage:
#   ./scaffold-docs-project.sh [TARGET_DIR]
#
#   TARGET_DIR   Where to build the tree. Defaults to ./new-project-documentation
#
# Safe to re-run: directories use mkdir -p and existing files are never
# overwritten (it prints "skip" for anything already present).
#
set -euo pipefail

TARGET="${1:-./new-project-documentation}"

# ---------------------------------------------------------------------------
# helpers
# ---------------------------------------------------------------------------
mkdirp() { mkdir -p "$1"; echo "  dir   $1"; }

# write a stub file only if it does not already exist
stub() {
  local path="$1"; shift
  if [ -e "$path" ]; then
    echo "  skip  $path (exists)"
    return
  fi
  printf '%s\n' "$@" > "$path"
  echo "  file  $path"
}

# put a .gitkeep in a dir if the dir has no tracked-worthy content yet
keep() { : > "$1/.gitkeep"; }

echo "Building documentation skeleton in: $TARGET"
echo

# ---------------------------------------------------------------------------
# 1. directory tree
# ---------------------------------------------------------------------------
DIRS=(
  ""                              # repo root
  "architecture"
  "architecture/technical"
  "architecture/specs"            # generic home for spec docs (was phase2-plan)
  "architecture/external"         # generic home for client/vendor docs (was roddy)
  "comms"
  "comms/attachments"
  "comms/emails"
  "comms/meeting-notes"
  "comms/slack"
  "contracts"
  "demo"
  "docs"
  "docs/dashboard-versions"
  "reference"
  "research"
  "shared"
  "skills"
  "workspaces"
  "workspaces/_template"
  "workspaces/_template/drafts"
  "workspaces/_template/suggestions"
  "_legacy"
)

for d in "${DIRS[@]}"; do
  mkdirp "$TARGET/$d"
done

echo

# ---------------------------------------------------------------------------
# 2. governance / top-level stub files
# ---------------------------------------------------------------------------
stub "$TARGET/README.md" \
  "# Project Documentation" \
  "" \
  "Documentation and project-management repo for [PROJECT NAME]." \
  "" \
  "See CLAUDE.md for full context and session rules, OWNERS.md for write zones," \
  "and shared/DECISIONS.md for the single source of truth on locked decisions."

stub "$TARGET/CLAUDE.md" \
  "# CLAUDE.md - Project Context and Session Rules" \
  "" \
  "## Project" \
  "[One-paragraph description of the project.]" \
  "" \
  "## Before doing any work" \
  "- git pull origin main" \
  "- Read this file, OWNERS.md, and your workspace SESSION-LOG.md" \
  "- Read shared/DECISIONS.md (single source of truth for locked decisions)" \
  "" \
  "## Critical rules" \
  "- Never use em-dashes in any output. Use a regular hyphen (-) if needed." \
  "- [Add project-specific terminology and conventions here.]" \
  "" \
  "## Current project state" \
  "[Keep a short running snapshot of phase, owners, and last-ingested items.]"

stub "$TARGET/OWNERS.md" \
  "# OWNERS.md - Write Zones" \
  "" \
  "Defines who can write where. shared/ is merger-owned; individual work" \
  "happens inside workspaces/<you>/ and lands in shared/ via proposals." \
  "" \
  "| Path                | Owner            | Notes |" \
  "|---------------------|------------------|-------|" \
  "| shared/             | merger           | proposals only from others |" \
  "| workspaces/<you>/   | that person      | your own zone |" \
  "| comms/, architecture/, contracts/ | shared | append, do not rewrite |"

stub "$TARGET/CONVENTIONS.md" \
  "# CONVENTIONS.md - Naming and Style" \
  "" \
  "- No em-dashes anywhere. Use a hyphen (-)." \
  "- Emails: NN_YYYY-MM-DD_kebab-subject.md (incrementing sequence)." \
  "- Meeting notes: synthesized summary + NAME_TRANSCRIPT.md verbatim file." \
  "- Session logs: SESSION-LOG.md index (newest at top) + session_log_YYYY-MM-DD.md." \
  "- Decisions: recorded in shared/DECISIONS.md as DEC-NNN."

stub "$TARGET/PROPOSAL-TEMPLATES.md" \
  "# PROPOSAL-TEMPLATES.md" \
  "" \
  "Templates for proposals that land in shared/ (decisions, hotsheet items," \
  "risks, index updates). Copy the relevant block into your workspace's" \
  "proposed-*.md file for the merger to land."

stub "$TARGET/.gitignore" \
  ".DS_Store" \
  "*.tmp" \
  "*.log" \
  ".last_run"

# ---------------------------------------------------------------------------
# 3. shared/ single-source-of-truth stubs
# ---------------------------------------------------------------------------
stub "$TARGET/shared/DECISIONS.md" \
  "# DECISIONS.md - Locked Decisions (single source of truth)" \
  "" \
  "Newest at top. Format: DEC-NNN | YYYY-MM-DD | short title | detail | source." \
  "" \
  "<!-- DEC-001 | 2026-01-01 | Example decision | ... | source -->"

stub "$TARGET/shared/HOTSHEET.md" \
  "# HOTSHEET - Blockers, Risks, Action Items" \
  "" \
  "## Blockers" \
  "## Risks (register)" \
  "## Action Items"

stub "$TARGET/shared/MERGE-REVIEW.md" \
  "# MERGE-REVIEW.md" \
  "" \
  "Conflicts between proposals awaiting the merger's decision. Empty when clean."

stub "$TARGET/shared/PROJECT_INDEX.md" \
  "# PROJECT_INDEX.md - Document Map" \
  "" \
  "| Path | Area | Description |" \
  "|------|------|-------------|"

stub "$TARGET/shared/PROJECT_STRATEGY.md" \
  "# PROJECT_STRATEGY.md" \
  "" \
  "High-level strategy, phases, and goals. Updated deliberately, rarely."

# ---------------------------------------------------------------------------
# 4. per-area READMEs and workspace template
# ---------------------------------------------------------------------------
stub "$TARGET/architecture/README.md"        "# Architecture" "" "technical/ = internal specs. specs/ = phase specs. external/ = client and vendor docs."
stub "$TARGET/architecture/technical/README.md" "# Technical Architecture"
stub "$TARGET/comms/README.md"               "# Comms" "" "emails/, meeting-notes/, slack/, attachments/. Follow the naming conventions in CONVENTIONS.md."
stub "$TARGET/contracts/README.md"           "# Contracts" "" "SOWs and signed agreements. One subfolder per phase as needed (e.g. phase-2.1/)."
stub "$TARGET/docs/README.md"                "# Docs" "" "Client-facing dashboard (index.html) and versioned snapshots in dashboard-versions/."
stub "$TARGET/reference/README.md"           "# Reference" "" "External documents formally taken into the project record, each with a companion _NOTES.md."
stub "$TARGET/research/README.md"            "# Research" "" "Papers, competitive analyses, and background material."
stub "$TARGET/demo/README.md"                "# Demo" "" "Demo scripts, walkthroughs, and reorg planning."
stub "$TARGET/skills/README.md"              "# Skills" "" "One subfolder per skill, each containing a SKILL.md. Add project skills here."
stub "$TARGET/_legacy/README.md"             "# Legacy" "" "Archived material kept for provenance. Nothing here is current."

stub "$TARGET/workspaces/README.md" \
  "# Workspaces" \
  "" \
  "One folder per person. Copy _template/ to workspaces/<yourname>/ to start." \
  "Each workspace holds a SESSION-LOG.md index plus proposed-*.md files."

stub "$TARGET/workspaces/_template/SESSION-LOG.md" \
  "# SESSION LOG - <name>" \
  "" \
  "Running index, newest at top. Detail lives in session_log_YYYY-MM-DD.md files."

stub "$TARGET/workspaces/_template/proposed-decisions.md" "# Proposed Decisions - <name>"
stub "$TARGET/workspaces/_template/open-questions.md"     "# Open Questions - <name>"

# ---------------------------------------------------------------------------
# 5. .gitkeep in still-empty dirs so git tracks the tree
# ---------------------------------------------------------------------------
for d in \
  "comms/attachments" "comms/emails" "comms/meeting-notes" "comms/slack" \
  "architecture/specs" "architecture/external" \
  "docs/dashboard-versions" \
  "reference" "research" "contracts" \
  "workspaces/_template/drafts" "workspaces/_template/suggestions"
do
  keep "$TARGET/$d"
done

echo
echo "Done. Tree created under: $TARGET"
echo
echo "Next steps:"
echo "  cd \"$TARGET\""
echo "  git init            # if you want version control"
echo "  # copy workspaces/_template to workspaces/<yourname> for each person"