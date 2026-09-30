# profile_en — CV content

This directory is the `en` profile: `metadata.toml` plus one `.typ` file per CV
section. A section file renders only if its name is in the
`import-modules((...))` list in `../cv.typ`, in that list's order. Adding a
section means adding the file and its list entry together. `certificates.typ`
and `publications.typ` exist but are commented out of that list; editing them
changes nothing in the PDF.

## Which function where

- `professional.typ`, `projects.typ` — `cv-entry(title, society, date, location,
  description, tags)`. `display_entry_society_first = true` in `metadata.toml`
  makes `society` the bold first line and `title` the second.
- `education.typ` — `cv-honor(title, date, issuer, location)`, despite being
  degrees. `cv-honor` has no description slot: the thesis and prize notes are a
  hand-placed `#pad(left: 16% + 10pt, text(size: 8pt)[...])` followed by
  `#v(-6pt)`. The `16% + 10pt` offset aligns with the honor's text column; copy
  the pair as-is for a new note.
- `skills.typ` — `cv-skill(type, info)`, where `info` is `skill-tags((...))`, a
  local helper that draws each item in the same chip as an entry's `tags`. For
  spoken languages, `cv-skill-with-level` with `type: []` on every row after the
  first, so the label shows once.

## Writing style

- Entries with an end date of `Present` come first, then ended ones; each group
  runs newest start date first. A role that changed form (pulswerk: employee,
  then maintenance contract) is two entries, so the ended part sorts with the
  ended roles.
- `description` is a `list(...)` of 1–5 bullets. Each bullet opens with a
  past-tense action verb, carries no trailing period, and names the concrete
  technology or outcome.
- `date` uses `Mon YYYY - Mon YYYY` or `Mon YYYY - Present`; a gap in one role is
  `date: list([...], [...])` (see the Tribal Gathering entry).
- `tags` render as visible chips under the entry. They do not feed the ATS
  keywords — those are `[inject].injected_keywords_list` in `metadata.toml`.
- Content blocks are Typst markup: `$arrow.r$` for arrows, and `#`, `@`, `<`,
  `*`, `_` need escaping with `\` in running text.
- `display_logo = true` in `metadata.toml`, but no entry passes `logo:` and
  `../assets/logos/` is empty, so no logos render.

## Language copies

Another `profile_<xx>/` must contain its own complete `metadata.toml` and every
file listed in `../cv.typ` with the same names. Changes here are not mirrored
anywhere — `en` is the only profile.
