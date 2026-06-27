# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Hugo-based personal blog at [ceesbos.nl](https://ceesbos.nl) focused on Observability, Grafana, and OpenTelemetry. Uses two custom themes as git submodules:
- `themes/gists` — main blog theme (from `cbos/hugo-theme-gists`)
- `themes/faro-analytics` — Grafana Faro analytics integration (from `cbos/hugo-faro-analytics`)

## Common Commands

```shell
# Create a new post (auto-generates date-prefixed directory)
just create-post "Post Title"

# Serve locally with live reload
hugo serve -D

# Build for production
hugo --minify

# Spell/style check with Vale
vale content/
```

Clone with submodules:
```shell
git clone --recurse-submodules --depth 1 git@github.com:cbos/cbos.github.io.git
```

## Content Structure

**Posts** live in `content/posts/<YYYYMMDD>-<slug>/index.md` — each post in its own directory so images can be co-located.

**Talks** live in `content/talks/<event-name>/index.md` and use a `conference:` / `talk:` frontmatter structure for event metadata.

### Post frontmatter

```yaml
---
title: "..."
date: 2025-01-01T00:00:00+01:00
slug: optional-url-override
draft: true          # remove or set false to publish
pin: false           # pin to top of list

resources:
  - src: "**.{png,jpg,webp}"
    title: "Image #:counter"

tags:
  - Grafana

summary:
  One or two sentence summary shown in the post list.
---
```

### Alert callouts (Hugo blockquote alerts)

```markdown
> [!TIP]
> [!NOTE]
> [!IMPORTANT]
> [!WARNING]
> [!CAUTION]
> [!QUESTION]
```

### Image shortcode

Images co-located in the post directory can be processed:

```
{{< imgproc "filename.png" Resize "800x" >}}Caption text{{< /imgproc >}}
```

Supported commands: `Resize`, `Fit`, `Fill`.

## Vale (Prose Linting)

Configuration is in `.vale.ini`. Style rules are in `vale/Grafana/`. Custom dictionaries (personal, Grafana-specific, place names) are in `vale/dictionaries/`. Several Grafana style rules are intentionally disabled (first-person, passive voice, contractions, etc.) — see `.vale.ini`.

## Deployment

Pushing to `main` triggers the GitHub Actions workflow (`.github/workflows/github-pages.yml`) which builds with Hugo extended v0.150.0 and deploys to GitHub Pages automatically.

## Image Manipulation

```shell
magick convert image.png -resize 1200 image_resized.png
magick convert image.png -resize 50% image_resized.png
magick convert image.jpg -distort SRT -90 image_rotated.jpg
```
