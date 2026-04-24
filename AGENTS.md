# AGENTS.md

Operating guide for autonomous coding agents in this repository.
Use this file as the default runbook for setup, validation, coding style, and PR readiness.

## Project Snapshot

- Project: `nicholassynovic.github.io`
- Type: Sphinx static site/blog
- Python target: `~=3.13`
- Dependency manager: `uv`
- Build backend: `hatchling`
- Main source directory: `src/`
- Generated outputs: `build/`, `dist/`
- CI workflow: `.github/workflows/build.yml`

## Important Paths

- `src/conf.py`: Sphinx config and theme options
- `src/index.rst`: homepage
- `src/blog_posts/`: blog content
- `src/papers/`: paper/publication content
- `src/_static/`: CSS, JS, images, and downloadable assets
- `src/_templates/`: Sphinx template overrides
- `.pre-commit-config.yaml`: lint/format hooks
- `.editorconfig`: formatting baseline
- `.github/CONTRIBUTING.md`: contribution process
- `Makefile`: common command entry points

## Environment Setup

1. Install Python 3.13 and `uv`.
1. Sync dependencies: `uv sync`
1. Optional bootstrap: `make create-dev`
1. Optional hook install: `pre-commit install`

## Build, Lint, and Test Commands

### Build Commands

- Preferred local build: `make build`
- CI-style build: `uv run sphinx-build --write-all src build`
- Verbose/clean build: `uv run sphinx-build -vvv --write-all --fresh-env src build`

### Preview Commands

- Local live preview: `make serve`
- Equivalent direct command: `uv run sphinx-autobuild src build`

### Lint and Formatting

- All hooks on all files: `pre-commit run --all-files`
- Hooks on changed files only: `pre-commit run`
- Run one hook example:
  - `pre-commit run markdownlint-cli2 --all-files`
  - `pre-commit run mdformat --all-files`

### Test Commands (Including Single Test)

There is currently no `tests/` directory.
If tests are added (recommended: `pytest`), use:

- Full suite: `uv run pytest -q`
- Single test file: `uv run pytest tests/test_example.py -q`
- Single test case: `uv run pytest tests/test_example.py::test_case_name -q`
- Name filter: `uv run pytest -k "keyword" -q`

If `pytest` is missing, add it to development dependencies before relying on these.

## Validation Sequence Before PR

Run in this order:

1. `uv sync`
1. `pre-commit run --all-files`
1. `make build`
1. Optional visual check: `make serve`

## Code Style and Conventions

Prefer existing local style first.
When no precedent exists, follow these conventions.

### Global Formatting Rules

From `.editorconfig`:

- End-of-line: LF
- Final newline: required
- Charset: UTF-8
- Trim trailing whitespace: enabled by default
- Python indentation: 4 spaces
- Markdown indentation: 2 spaces
- YAML indentation: 2 spaces
- JSON indentation: 4 spaces
- reStructuredText indentation: 3 spaces
- Makefile indentation: tabs

Notes:

- JSON overrides trimming (`trim_trailing_whitespace = false`).
- Preserve surrounding style when editing mixed-content docs.

### Python Conventions

- Keep code explicit, readable, and moderately small in scope.
- Add docstrings for non-trivial modules/functions.
- Prefer deterministic behavior over hidden side effects.

Imports:

- Group order: standard library, third-party, local.
- Use one blank line between groups.
- Prefer absolute imports.
- Remove unused imports in touched files.

Types:

- Add type hints for new functions and non-obvious variables.
- Prefer built-in generics (`list[str]`, `dict[str, int]`).
- Avoid `Any` unless unavoidable.

Naming:

- `snake_case`: functions, methods, variables
- `PascalCase`: classes
- `UPPER_SNAKE_CASE`: constants
- Prefer descriptive names over abbreviations

Error handling:

- Fail fast on invalid states using clear exceptions.
- Catch specific exceptions where possible.
- Avoid broad `except Exception` unless re-raising with context.
- Keep error messages actionable and concrete.

Logging/diagnostics:

- Keep messages concise and useful.
- Avoid noisy debug output in committed code.

### Documentation and Content Conventions

- Keep heading hierarchy and spacing consistent in `*.rst`.
- Use concise, descriptive section titles.
- Prefer explicit links/references.
- Match the tone and structure of nearby content.
- For Markdown, use fenced code blocks with language tags when possible.

### YAML/TOML/JSON Conventions

- Keep key ordering stable and logical when practical.
- Avoid unnecessary quoting.
- Respect `.editorconfig` indentation/whitespace rules.

## CI Expectations

- CI runs on Ubuntu with Python 3.13.
- Dependencies are installed using `uv sync`.
- CI build step uses `./.venv/bin/sphinx-build --write-all src build`.
- Changes that break Sphinx build are considered blockers.

## Contribution Workflow

From `.github/CONTRIBUTING.md`:

1. Open or identify an issue.
1. Create branch `issue-<number>` from `main`.
1. Keep changes scoped to that issue.
1. Open PR to `main` with closing keywords (`Closes #<n>`, `Fixes #<n>`, etc.).

## Pre-commit Hooks in Use

Configured hooks include checks for:

- Large files, case conflicts, merge conflicts, symlink issues
- JSON/TOML/XML/YAML validity
- Private keys and debug statements
- Trailing whitespace and final newline normalization
- Markdown linting via `markdownlint-cli2 --fix`
- Markdown formatting via `mdformat`

Assume hooks may run both locally and in CI.

## Cursor and Copilot Rule Files

Checked locations:

- `.cursorrules`
- `.cursor/rules/`
- `.github/copilot-instructions.md`

Current status: none of these files are present in this repository.
If these files are added later, treat them as high-priority agent instructions and update this document.

## Agent Notes

- Prefer minimal, targeted diffs.
- Do not commit generated artifacts from `build/` or `dist/` unless explicitly requested.
- Keep changes aligned with the existing `src/` architecture.
- Prefer commands already used in `Makefile`, CI, and tool configs.
- If tests or tooling change, update this file (especially single-test guidance).
