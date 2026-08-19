# Fresh-container bootstrap (Pi Agent Environment)

Use these steps from the repository root after rebuilding the shared Pi development container. This native workflow is specifically for Pi to run Jekyll directly in the agent environment without requiring nested Docker.

Developers running locally on their own machines should use the Docker workflow (`./run.sh`) documented in [README.md](README.md).

## 1. Install OS packages

The `bigdecimal`, `nokogiri`, and related gems may need native extensions. Install Ruby development headers and the build/XML libraries:

```sh
sudo apt-get update
sudo apt-get install -y \
  ruby-dev \
  build-essential \
  libxml2-dev \
  libxslt1-dev \
  zlib1g-dev
```

## 2. Install the locked Ruby dependencies

```sh
bundle config set --local path vendor/bundle
bundle install
```

`vendor/bundle/` and `.bundle/` are ignored by Git. The first installation can take several minutes while native extensions compile.

## 3. Check Jekyll

```sh
bundle check
bundle exec jekyll --version
```

## Local preview for Pi

Run Jekyll with an explicit UTF-8 locale because the project's locked legacy Sass dependency can otherwise report an `Invalid US-ASCII character` error:

```sh
LANG=C.UTF-8 LC_ALL=C.UTF-8 bundle exec jekyll serve --source docs --livereload
```

Then open `http://127.0.0.1:4000/` in a browser. (Developers should run `./run.sh` with Docker instead.)
