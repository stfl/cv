# CLAUDE.md

Typst CV ([brilliant-cv](https://typst.app/universe/package/brilliant-cv/) 4.1.0)
and cover letter ([letter-pro](https://typst.app/universe/package/letter-pro/) 3.0.0,
DIN 5008). Human-facing overview and command table: `README.org`.

## Build

Run everything through the flake devShell — it provides `typst` (with its
packages), `just` and the
fonts (`Source Sans 3`, `Roboto`, Font Awesome) via `FONTCONFIG_FILE`. Outside it
typst warns about unknown font families and renders with fallback faces.

```bash
nix develop --command just              # cv.typ -> cv.pdf
nix develop --command just check        # type-check only (output to /dev/null)
nix develop --command just letter       # letter.typ -> letter.pdf
nix develop --command just watch        # also: watch-letter, open
```

The justfile runs typst as `env -u SOURCE_DATE_EPOCH typst`. Nix sets
`SOURCE_DATE_EPOCH`, which freezes `datetime.today()` — without the unset, the
letter's date line prints 1980. Keep the wrapper on any new recipe.

## Conventions that hold everywhere

- **Typst packages come from nixpkgs, not the network.** `flake.nix` builds
  typst with `typst.withPackages`, which points `TYPST_PACKAGE_CACHE_PATH` at a
  read-only store path holding exactly the versions in `flake.lock`. Every
  `@preview/<pkg>:<version>` import must name that version: a mismatch fails
  with `failed to create temporary package directory: Read-only file system`.
  To upgrade, run `nix flake update`, check the new versions with
  `nix eval --raw --inputs-from . nixpkgs#typstPackages.brilliant-cv.version`,
  then bump the import in `cv.typ` and every `profile_en/*.typ` (and
  `letter.typ` for `letter-pro`) in the same change. A new package needs adding
  to the `withPackages` list too.
- **All personal data lives in `profile_en/metadata.toml`** (brilliant-cv v4
  schema, linked on its first line). The schema rejects unknown keys everywhere
  except `[custom]`, so repo-local values go there — `[custom].letter_address`
  is read only by `letter.typ`. v4 panics at compile time on v3 keys
  (`language`, `[lang.*]`, `inject_keywords`, `inject_ai_prompt`).
- **Git LFS stores `*.pdf` and everything under `assets/`** (`.gitattributes`).
  A new image there is an LFS object; CI checks out with `lfs: true`.
- Generated PDFs (`/*.pdf`) are gitignored. Never commit them.

## CV assembly (`cv.typ`)

- Sections render in the order of the `import-modules((...))` list. A module file
  that is not in that list does not render — `certificates` and `publications`
  are deliberately commented out.
- Everything loads from `profile_<name>/` — its `metadata.toml` and every module.
  The profile defaults to `en`; pick another with
  `typst compile --input profile=<name> cv.typ`. A new profile is a full copy of
  `profile_en/`: brilliant-cv has no inheritance between profiles.
- `letter.typ` hardcodes `profile_en/metadata.toml` and ignores `--input profile`.

## Cover letter (`letter.typ` + `letter-content.typ`)

`letter-content.typ` is gitignored and holds one letter's content; copy it from
`letter-content.example.typ`. `letter.typ` uses it twice:

- `#import` reads its `recipient` (content), `subject` (string) and optional
  `language` (default `"en"`, sets hyphenation and date language).
- `#include` renders the whole file as the letter body. Top-level `#let`
  bindings produce no output, so anything else in the file — including the
  greeting — is body text. Sender block and date come from `profile_en/metadata.toml` and
  `letter.typ`; do not repeat them in the content file.

## CI (`.github/workflows/release.yml`)

Every push to `main` builds the CV with `nix develop --command just compile` and
publishes `Stefan-Lendl-CV.pdf` as a GitHub release tagged with the commit date
(`YYYY-MM-DD`). A second push the same day deletes and recreates that release
and tag. Only the 5 newest releases are kept; older ones are deleted. The letter
is never built in CI.

## Directory docs

- `profile_en/CLAUDE.md` — writing CV content: entry style, tags, module rules.

When you change code in a directory that has a `CLAUDE.md`, reconcile that file
before finishing. The same holds for this file when the build, CI or letter
mechanics change.
