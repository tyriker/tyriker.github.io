# tyriker.com

A personal GitHub Pages site for sharing knowledge, experiences, and projects.

## Structure

The site source is isolated in `docs/` to ensure non-site files at the repository root are never published to the web. GitHub Pages is configured to build from the `main` branch with the `/docs` folder.

- `docs/_config.yml` — Jekyll site configuration, including the canonical site title.
- `docs/_layouts/default.html` — shared document structure, navigation, and page title.
- `docs/index.md` — landing page.
- `docs/writing.md` — Notes, Ideas, and Lessons index; it lists posts from `docs/_posts/`.
- `docs/projects.md` — projects page.
- `docs/_posts/` — dated Markdown blog posts.
- `docs/assets/css/style.css` — shared stylesheet.
- `docs/assets/skeleton.svg` — cartoon skeleton illustration.
- `docs/favicon.ico` — site favicon.
- `docs/CNAME` — custom domain configuration; currently `tyriker.com`.

Repository tooling and agent files (`Dockerfile`, `docker-compose.yaml`, `run.sh`, `BOOTSTRAP.md`, `AGENTS.md`) remain at the repository root and are outside the GitHub Pages publishing root.

## Add a post

Create a file named `docs/_posts/YYYY-MM-DD-slug.md`, for example:

```markdown
---
layout: default
title: A useful idea
---

Write the post here.
```

Posts appear on the Notes, Ideas, and Lessons page after GitHub Pages builds the site.

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
docker compose run --rm site bundle exec jekyll build --source docs
```

Also verify internal links and filename casing, because GitHub Pages uses a case-sensitive filesystem.
