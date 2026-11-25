# AGENTS.md

Operating guide for coding agents in this repository.

## Project Snapshot

- Sphinx static site/blog (ablog) for Nicholas M. Synovic.
- Python ~=3.13, managed with `uv`, build backend `hatchling`, lockfile
  `uv.lock`.
- Source in `src/`; generated outputs `build/` (site) and `dist/` (package)
  are gitignored — never commit them.
- CI (`.github/workflows/build.yml`) builds on push to `main` and deploys
  `build/` to GitHub Pages.

## Important Paths

- `src/conf.py`: Sphinx config — extensions, theme, `bibtex_bibfiles`.
- `src/index.rst`: homepage.
- `src/blog_posts/`: dated blog posts (`YYYY-MM-DD.rst`).
- `src/papers/`: paper summary pages.
- `src/refs.bib`: BibTeX database used by `:cite:p:` citations.
- `src/_static/`: CSS, JS, images, and resume assets (`.docx` + PDF).
- `src/_templates/layout.html`: Sphinx template override.
- `Makefile`, `.pre-commit-config.yaml`, `.editorconfig`,
  `.github/CONTRIBUTING.md`.

## Environment Setup

1. Install Python 3.13 and `uv`.
1. `uv sync` (creates `.venv`).
1. Optional bootstrap: `make create-dev` — installs/updates pre-commit
   hooks, syncs dependencies, and builds the package.

## Build, Preview, Lint

- Build: `make build-proj` — rewrites `project.version` in `pyproject.toml`
  from the latest git tag, wipes `build/` and `dist/`, then runs
  `sphinx-build -vvv --write-all --fresh-env src build`. Bare `make` runs
  this target too (it is first).
- Preview: `make serve-site` — `sphinx-autobuild src build`.
- CI-equivalent build: `uv run sphinx-build --write-all src build`.
- Lint: `pre-commit run --all-files` (or `pre-commit run` for changed
  files).

Makefile targets call bare `sphinx-build`/`sphinx-autobuild`, so they only
work inside an activated `.venv` (`source .venv/bin/activate`). Prefix with
`uv run` instead if no venv is active.

## Content Conventions

- Blog posts: dated `.rst` files in `src/blog_posts/` that start with ablog
  field-list metadata: `:blogpost: true`, `:date:`, `:category:`,
  `:tags:`, `:nocomments:`.
- Posts and papers are auto-collected by `.. postlist::` directives in
  `src/blog_posts/index.rst` and `src/papers/index.rst` — no toctree edit
  needed. Use category `Blog Post` for posts and `Paper` for papers.
- Citations: add BibTeX entries to `src/refs.bib`, cite with `:cite:p:`
  (unsrt style).
- Cross-references: `autosectionlabel_prefix_document = True`, so `:ref:`
  labels are `docname:Section Title`.
- Resume PDFs are generated from the `.docx` files in `src/_static/` via
  `make convert-resume-to-pdf` (requires flatpak LibreOffice).
  `make convert-cv-to-pdf` fails: `NMSynovic_CV.docx` is not in this repo
  (the CV lives in the separate `NicholasSynovic/cv` repo).

## Formatting

From `.editorconfig`: LF line endings, final newline required, UTF-8, trim
trailing whitespace (except JSON). Indents: Python 4 spaces, Markdown 2,
YAML 2, JSON 4, reStructuredText 3, Makefile tabs.

## Pre-commit Hooks

Runs locally only — CI never runs pre-commit. Standard checks (large files
over 1MB, merge conflicts, private keys, debug statements, trailing
whitespace, final newlines, YAML/TOML/JSON/XML validity) plus
markdownlint-cli2 `--fix` and mdformat for Markdown.

## Validation Before PR

1. `uv sync`
1. `pre-commit run --all-files`
1. `make build-proj` (or `uv run sphinx-build --write-all src build`)
1. Optional visual check: `make serve-site`

## CI Expectations

- CI: Ubuntu, Python 3.13, `uv sync`, then
  `./.venv/bin/sphinx-build --write-all src build`.
- A broken Sphinx build is a blocker.

## Contribution Workflow

From `.github/CONTRIBUTING.md`: branch `issue-<number>` from `main`, keep
changes scoped to the issue, open a PR to `main` with closing keywords
(`Closes #<n>`, `Fixes #<n>`).

## Tests

No test suite exists. Verification = pre-commit passing plus a clean
Sphinx build.

## Agent Notes

- Prefer minimal, targeted diffs; keep changes aligned with the existing
  `src/` structure.
- Prefer commands already used in the Makefile and CI.
- Releases: push a SemVer tag (e.g. `v1.2.3`) and create a GitHub Release;
  `make build-proj` stamps the package version from the latest tag.
- If commands or tooling change, update this file and the README.
