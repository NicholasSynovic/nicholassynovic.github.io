# AGENTS.md

Guidance for autonomous coding agents working in this repository.
Use this as the default runbook for setup, validation, style, and PR prep.

## Project Overview

- Name: `nicholassynovic.github.io`
- Type: Sphinx-based static site/blog
- Python: `~=3.13`
- Dependency manager: `uv`
- Build backend: `hatchling`
- Source path: `src/`
- Build output: `build/` (generated)
- Dist output: `dist/` (generated)
- CI workflow: `.github/workflows/build.yml`

## Key Paths

- `src/conf.py`: Sphinx settings and theme options
- `src/index.rst`: site landing page
- `src/blog_posts/`: blog entries
- `src/papers/`: publication pages
- `src/_static/`: CSS, images, and document assets
- `src/_templates/`: Sphinx templates
- `.pre-commit-config.yaml`: lint and formatting hooks
- `.editorconfig`: baseline formatting rules
- `.github/CONTRIBUTING.md`: contribution workflow
- `Makefile`: common local commands

## Environment Setup

1. Install Python 3.13 and `uv`.
1. Install project deps: `uv sync`
1. Optional dev bootstrap: `make create-dev`
1. Optional git hooks: `pre-commit install`

## Build, Lint, and Test Commands

### Build

- Preferred local build: `make build`
- CI-like build: `uv run sphinx-build --write-all src build`
- Verbose clean build:
  `uv run sphinx-build -vvv --write-all --fresh-env src build`

### Preview

- Local live preview: `make serve`
- Equivalent: `uv run sphinx-autobuild src build`

### Lint and Formatting

- Run all hooks on all files: `pre-commit run --all-files`
- Run hooks on changed files: `pre-commit run`
- Run one hook:
  - `pre-commit run markdownlint-cli2 --all-files`
  - `pre-commit run mdformat --all-files`

### Tests (including single-test command)

There is no `tests/` directory yet.
If tests are added (recommended: `pytest`), use:

- Full suite: `uv run pytest -q`
- Single file: `uv run pytest tests/test_example.py -q`
- Single test: `uv run pytest tests/test_example.py::test_case_name -q`
- Keyword selection: `uv run pytest -k "keyword" -q`

If `pytest` is not installed, add it to development dependencies first.

## Recommended Validation Sequence

Run before opening a PR:

1. `uv sync`
1. `pre-commit run --all-files`
1. `make build`
1. Optional manual check via `make serve`

## Code Style Guidelines

Always follow local file conventions first.
When no clear precedent exists, use the rules below.

### Formatting Baseline

From `.editorconfig`:

- Line endings: LF
- Final newline: required
- Charset: UTF-8
- Trim trailing whitespace: enabled by default
- Python indent: 4 spaces
- Markdown indent: 2 spaces
- YAML indent: 2 spaces
- JSON indent: 4 spaces
- reStructuredText indent: 3 spaces
- Makefile indent: tabs

Notes:

- JSON has `trim_trailing_whitespace = false` override.
- Keep surrounding file style when editing mixed-content docs.

### Python: Imports, Types, Naming, Errors

- Keep code explicit, readable, and moderately small in scope.
- Add docstrings for non-trivial modules and functions.

Imports:

- Order groups as standard library, third-party, local.
- Use one blank line between groups.
- Prefer absolute imports.
- Remove unused imports in files you touch.

Types:

- Add type hints for new functions and non-obvious variables.
- Prefer built-in generics (`list[str]`, `dict[str, int]`).
- Avoid `Any` unless unavoidable.

Naming:

- `snake_case` for functions, methods, and variables
- `PascalCase` for classes
- `UPPER_SNAKE_CASE` for constants
- Use descriptive identifiers over abbreviations

Error handling:

- Fail fast for invalid state using clear exceptions.
- Catch specific exceptions where possible.
- Avoid broad `except Exception` unless re-raising with useful context.
- Keep error messages actionable.

Logging/diagnostics:

- Keep logs concise and signal-rich.
- Avoid debug noise in committed code.
- Prefer deterministic behavior over hidden side effects.

### Docs and Content

- Keep heading hierarchy consistent in `*.rst` pages.
- Use concise section titles.
- Prefer explicit links/references.
- Match tone and structure of neighboring content.
- For Markdown, use fenced code blocks with language tags when practical.

### YAML/TOML/JSON

- Keep key order stable and logical.
- Avoid unnecessary quoting.
- Respect `.editorconfig` indentation and whitespace rules.

## CI Expectations

- CI runs on Ubuntu with Python 3.13.
- CI installs deps with `uv sync`.
- CI build command: `./.venv/bin/sphinx-build --write-all src build`.
- Breaking Sphinx build is blocking.

## Contribution Workflow

From `.github/CONTRIBUTING.md`:

1. Open or identify an issue.
1. Create branch `issue-<number>` from `main`.
1. Keep changes scoped to that issue.
1. Open a PR to `main` and use closing keywords (`Closes #<n>`, `Fixes #<n>`,
   etc.).

## Pre-commit Hooks in Use

Configured hooks include:

- File sanity checks (size, conflicts, symlinks)
- Structured file validation (JSON/TOML/XML/YAML)
- Security/basic hygiene checks (private keys, debug statements)
- Whitespace and EOF normalization
- Markdown linting (`markdownlint-cli2 --fix`)
- Markdown formatting (`mdformat`)

Assume these hooks may run locally and in CI; keep edits compliant.

## Cursor and Copilot Rules

Checked for:

- `.cursorrules`
- `.cursor/rules/`
- `.github/copilot-instructions.md`

Current status: none of these files are present.
If added later, treat them as high-priority instructions and update this file.

## Agent Notes

- Prefer minimal, targeted diffs over broad refactors.
- Do not commit generated `build/` or `dist/` artifacts unless explicitly
  requested.
- Keep changes aligned with existing `src/` structure.
- Prefer commands already present in `Makefile`, CI, and tool configs.
- If you introduce tests or tooling, update this document (especially single-
  test guidance).
