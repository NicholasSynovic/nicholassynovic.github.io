# nicholassynovic.github.io

[![Production Site](https://img.shields.io/badge/site-nicholassynovic.github.io-1e88e5)](https://nicholassynovic.github.io/)
[![Build Status](https://img.shields.io/github/actions/workflow/status/NicholasSynovic/nicholassynovic.github.io/build.yml?branch=main&label=build)](https://github.com/NicholasSynovic/nicholassynovic.github.io/actions/workflows/build.yml)

Nicholas M. Synovic's website is built with Sphinx and deployed to GitHub Pages.

## Current Status

- Active documentation website project using Sphinx + `uv`
- CI deploys the site from `main` using `.github/workflows/build.yml`
- Validation is centered on pre-commit checks and Sphinx build verification

## Production URL

- <https://nicholassynovic.github.io/>

## Repository Structure

- `src/`: Sphinx source files (`.rst`, `conf.py`, static assets)
- `src/_static/`: custom CSS, images, and document assets
- `src/blog_posts/`: blog post pages
- `src/papers/`: publication pages
- `build/`: generated site output (artifact/output directory)
- `.github/workflows/build.yml`: CI build and deploy workflow

## Prerequisites

- Python `3.13` (project target)
- `uv`
- `make` (optional convenience commands)

## Quick Start

```bash
uv sync
make build
```

Open `build/index.html` after a successful build.

## Build and Preview

Build docs:

```bash
make build
```

Equivalent direct command:

```bash
uv run sphinx-build -vvv --write-all --fresh-env src build
```

Live preview during edits:

```bash
make serve
```

Equivalent direct command:

```bash
uv run sphinx-autobuild src build
```

## Validation Before Opening a PR

Run formatting/lint checks:

```bash
pre-commit run --all-files
```

Run build validation:

```bash
make build
```

## How to Contribute

1. Review contribution policy in `.github/CONTRIBUTING.md`.
1. Create a feature branch from `main`.
1. Make focused changes in `src/` (and `src/_static/` when needed).
1. Run the validation commands above.
1. Open a PR with a concise rationale and verification notes.

## Step-by-Step: Add or Edit a Blog Post

1. Create or update a `.rst` file in `src/blog_posts/`.
1. Follow existing blog post structure and metadata patterns.
1. Ensure the post is listed from `src/blog_posts/index.rst` as expected.
1. Build locally (`make build`) and verify rendering.
1. Run `pre-commit run --all-files` before opening the PR.

## Step-by-Step: Add or Edit a Paper Page

1. Create or update a `.rst` file in `src/papers/`.
1. Follow existing paper page structure and citation conventions.
1. Ensure the page is discoverable from `src/papers/index.rst`.
1. Build locally and verify the page renders correctly.
1. Run pre-commit checks before submitting the PR.

## Step-by-Step: Update Website Styles

1. Edit `src/_static/custom.css`.
1. Prefer scoped style changes over broad global overrides.
1. Verify desktop and mobile rendering.
1. Rebuild and confirm no regressions in core pages.

## Sphinx-Specific Authoring Notes

- Preserve heading hierarchy and adornment style within each `.rst` file.
- Reuse existing directives and patterns used by nearby pages.
- Keep prose concise and avoid redundant sections.
- Keep links explicit and confirm they render correctly in the built site.

## Release Process

This project supports two release tracks.

### 1) Website release (deployment)

- Merge the approved PR to `main`.
- GitHub Actions builds and deploys the site via `.github/workflows/build.yml`.
- Confirm the production site reflects the new content at
  <https://nicholassynovic.github.io/>.

### 2) Versioned release (SemVer tags)

1. Ensure the desired changes are merged to `main`.
1. Create and push a semantic version tag, e.g. `v1.2.3`.
1. Create a GitHub Release for that tag.
1. Draft release notes from merged PRs and resolved issues since the previous tag.

## Contribution Guidelines

- Contribution process: `.github/CONTRIBUTING.md`

## Agent Guidance

- Agent-specific repository rules are documented in `AGENTS.md`.
- Recommended model: GPT-5.3-Codex in GitHub Copilot.
