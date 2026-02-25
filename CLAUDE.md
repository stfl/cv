# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Typst-based CV and cover letter using the [brilliant-cv](https://typst.app/universe/package/brilliant-cv/) template (v3.1.1). Personal data is stored in `metadata.toml`, with language-specific content modules in `modules_<lang>/` directories.

## Build Commands

All commands **must** be run through the Nix devShell to ensure correct tools, fonts, and environment:

```bash
nix develop --command just              # Compile CV to PDF (default)
nix develop --command just check        # Type-check without output
nix develop --command just watch        # Watch mode with auto-recompile
nix develop --command just open         # Compile and open PDF
nix develop --command just letter       # Compile cover letter
nix develop --command just watch-letter # Watch cover letter
```

**Important**: Always use `nix develop --command <cmd>` to execute commands. Do not run `just` or `typst` directly outside the Nix shell.

## Architecture

```
metadata.toml          # All configuration: personal info, layout, colors, fonts, language settings
cv.typ                 # Main CV entry point - imports metadata and modules
letter.typ             # Cover letter entry point
modules_en/            # English content modules (active)
  ├── education.typ
  ├── professional.typ
  ├── skills.typ
  ├── projects.typ
  ├── certificates.typ
  └── publications.typ
assets/
  ├── avatar.jpg       # Profile photo
  └── logos/           # Organization logos for cv-entry
```

## Key Patterns

- **Language switching**: Set `language = "en"` in metadata.toml; modules load from `modules_<lang>/`
- **CV entries**: Use `cv-entry()` from brilliant-cv with `title`, `society`, `date`, `location`, `description`, `tags`
- **Skills**: Use `cv-skill()` or `cv-skill-with-level()` with `h-bar()` separator

## metadata.toml Structure

```toml
[layout.fonts]
  regular_fonts = ["Source Sans 3"]
  header_font = "Roboto"

[personal]
  first_name = "..."
  [personal.info]
    github, email, phone, linkedin, location

[lang.en]
  header_quote = "..."
```

## Development Environment

Nix flake provides reproducible dev environment with typst, just, and fonts:

```bash
direnv allow          # Activate flake devShell via .envrc
nix develop           # Or enter manually
```

`flake.nix` configures:
- `typst`, `just` tools
- Fonts: `source-sans`, `roboto`, `font-awesome`
- `FONTCONFIG_FILE` for fontconfig-aware tools

## CI/CD

GitHub Action (`.github/workflows/release.yml`) on push to `main`:
1. Builds CV using nix devShell
2. Creates release tagged `YYYY-MM-DD` (commit date)
3. Uploads `YYYY-MM-DD-Stefan-Lendl-CV.pdf`
