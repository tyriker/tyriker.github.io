# tyriker.com

A personal GitHub Pages site for sharing knowledge, experiences, and projects.

## Structure

- `_config.yml` — Jekyll site configuration, including the canonical site title.
- `_layouts/default.html` — shared document structure, navigation, and page title.
- `index.md` — landing page.
- `writing.md` — blog index; it lists posts from `_posts/`.
- `projects.md` — projects page.
- `_posts/` — dated Markdown blog posts.
- `assets/css/style.css` — shared stylesheet.
- `CNAME` — custom domain configuration; currently `tyriker.com`.

## Add a post

Create a file named `_posts/YYYY-MM-DD-slug.md`, for example:

```markdown
---
layout: default
title: A useful idea
---

Write the post here.
```

Posts appear on the Writing page after GitHub Pages builds the site.

## Preview locally

GitHub Pages builds the site from the `main` branch. No local Ruby dependencies are committed to this repository.

If Jekyll is installed locally, preview the site from the repository root:

```sh
jekyll serve
```

Then open the URL printed by Jekyll, usually `http://127.0.0.1:4000/`.

## Validate changes

Before publishing, run:

```sh
git diff --check
jekyll build
```

`jekyll build` is optional when Jekyll is not installed locally; GitHub Pages remains the deployment build. Also verify internal links and filename casing, because GitHub Pages uses a case-sensitive filesystem.
