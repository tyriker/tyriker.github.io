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

## Preview locally (Developers)

GitHub Pages builds the site from the `main` branch. Developers preview locally using Docker and Docker Compose v2 (no local Ruby or Jekyll installation needed on your host machine).

From the repository root, start the local preview with:

```sh
./run.sh
```

Then open `http://127.0.0.1:4000/`. The source directory is mounted into the container, so Jekyll rebuilds when site files change. Press `Ctrl+C` to stop the preview.

*(Note: In the Pi development agent container, Jekyll runs natively instead of via Docker; see [BOOTSTRAP.md](BOOTSTRAP.md) for agent container bootstrap instructions.)*

## Validate changes

Before publishing, run:

```sh
git diff --check
docker compose run --rm site bundle exec jekyll build
```

Also verify internal links and filename casing, because GitHub Pages uses a case-sensitive filesystem.
