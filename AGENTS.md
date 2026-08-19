# Agent Guidance

## Site conventions

- This is a personal landing page and blog for sharing knowledge, experiences, and projects.
- It is a GitHub Pages site built with Jekyll. Keep the source portable and compatible with GitHub Pages.
- `_config.yml` is the canonical source for the Jekyll site title. Update it deliberately with public branding changes.
- Preserve `CNAME` unless the custom domain is intentionally changed.
- Use semantic, accessible HTML. Provide `alt` text for meaningful images and keep interactive elements keyboard accessible.

## Scope and validation

- Prefer plain text, Markdown, HTML, and CSS. Do not add a theme, JavaScript framework, build dependency, or generated files unless the requested outcome requires it.
- Keep changes focused. Do not alter deployment settings, domain settings, or unrelated files.
- Verify internal links and path casing, run `git diff --check`, and review the final diff. Do not run Jekyll builds or tests; the user will run and test Jekyll locally.
