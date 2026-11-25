<!-- prettier-ignore -->

<!-- markdownlint-disable MD033 MD041 MD013 MD036 -->

<div align="center">

<img src="src/_static/images/headshot.png" width="96" alt="Nicholas M. Synovic">

# nicholassynovic.github.io

_Nicholas M. Synovic's personal website and blog, built with Sphinx and
deployed to GitHub Pages._

[![License](docs/license_badge.svg)](LICENSE)
[![Production Site](https://img.shields.io/badge/site-nicholassynovic.github.io-1e88e5)](https://nicholassynovic.github.io/)
[![Build Status](https://img.shields.io/github/actions/workflow/status/NicholasSynovic/nicholassynovic.github.io/build.yml?branch=main&label=build)](https://github.com/NicholasSynovic/nicholassynovic.github.io/actions/workflows/build.yml)

[Overview](#overview) • [Getting started](#getting-started) • [Build & preview](#build--preview) • [Content](#content) • [Validation](#validation) • [Contributing](#contributing) • [Release](#release) • [Privacy](#privacy)

</div>
<!-- markdownlint-enable MD033 MD041 MD013 MD036 -->

## Overview

This site hosts Nicholas M. Synovic's professional artifacts and writings:
blog posts, paper summaries, and links to his resume and CV. It is built
with [Sphinx](https://www.sphinx-doc.org) using the
[ablog](https://ablog.readthedocs.io) blogging engine and the
[sphinx-book-theme](https://sphinx-book-theme.readthedocs.io) theme, with
dependencies managed by [uv](https://docs.astral.sh/uv/).

- **Production site**: <https://nicholassynovic.github.io/>
- **CI/CD**: `.github/workflows/build.yml` builds on every push to `main`
  and deploys the built site to GitHub Pages.
- **Source**: Sphinx source files live in `src/` (`.rst` pages, `conf.py`,
  and `src/_static/` assets). Build output goes to `build/`.
- **Validation**: pre-commit checks plus a clean Sphinx build.

## Getting started

Prerequisites:

- Python `3.13` (project target)
- [`uv`](https://docs.astral.sh/uv/)
- `make` (optional, for convenience commands)
- `pre-commit` (optional, for linting)

Install dependencies:

```bash
uv sync
```

Optionally bootstrap the development environment (installs and updates
pre-commit hooks, syncs dependencies, and builds the package):

```bash
make create-dev
```

## Build & preview

Build the site:

```bash
make build-proj
```

> [!NOTE]
> `make build-proj` rewrites `project.version` in `pyproject.toml` from the
> latest git tag, deletes `build/` and `dist/`, then runs a verbose, clean
> Sphinx build.

Live preview during edits:

```bash
make serve-site
```

> [!NOTE]
> Makefile targets call bare `sphinx-build`/`sphinx-autobuild`, so they
> only work inside an activated virtual environment
> (`source .venv/bin/activate`). If no venv is active, prefix with
> `uv run` instead:

```bash
uv run sphinx-build --write-all src build
uv run sphinx-autobuild src build
```

## Content

### Add or edit a blog post

1. Create a dated `.rst` file in `src/blog_posts/` (e.g. `2025-01-28.rst`).
1. Start the file with ablog field-list metadata. Posts are auto-collected
   by the `.. postlist::` directive in `src/blog_posts/index.rst` — no
   toctree edit needed:

```rst
:blogpost: true
:date: January 28, 2025
:category: Blog Post
:tags: Artificial Intelligence, 01-28-2025
:nocomments:
```

1. Build locally and verify rendering.

### Add or edit a paper page

1. Create or update a `.rst` file in `src/papers/`, using category `Paper`.
1. Citations use BibTeX entries in `src/refs.bib`, referenced with
   `:cite:p:` roles.
1. Build locally and verify the page renders correctly.

### Update website styles

1. Edit `src/_static/custom.css`.
1. Prefer scoped style changes over broad global overrides.
1. Rebuild and verify desktop and mobile rendering.

## Validation

Before opening a PR:

```bash
pre-commit run --all-files
uv run sphinx-build --write-all src build
```

There is no test suite; verification is pre-commit passing plus a clean
Sphinx build.

## Contributing

Review the contribution policy in `.github/CONTRIBUTING.md`. In short:

1. Create a branch (`issue-<number>`) from `main`.
1. Keep changes scoped to the issue.
1. Open a PR to `main` with closing keywords (`Closes #<n>`,
   `Fixes #<n>`).

## Release

The project supports two release tracks.

**Website release (deployment)**: merge the approved PR to `main`; GitHub
Actions builds and deploys the site automatically. Confirm the production
site reflects the new content.

**Versioned release (SemVer tags)**:

1. Merge the desired changes to `main`.
1. Create and push a semantic version tag (e.g. `v1.2.3`);
   `make build-proj` stamps the package version from the latest tag.
1. Create a GitHub Release for that tag with release notes.

## Privacy

This site uses Google Analytics (GA4) to collect aggregate usage insights.
Analytics is loaded by default on page load via `src/_static/consent.js`
(measurement ID `G-0Y7Y4XLQHD`). You can block analytics requests using
browser privacy controls, script blockers, or network-level filtering, and
clear site data and cookies through your browser settings.

## Resources

- [Production site](https://nicholassynovic.github.io/)
- [Contribution policy](.github/CONTRIBUTING.md)
- [Agent operating guide](AGENTS.md)
- [License](LICENSE)
