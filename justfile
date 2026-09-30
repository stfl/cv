# Unset Nix's SOURCE_DATE_EPOCH so typst's datetime.today() returns the real date
typst := "env -u SOURCE_DATE_EPOCH typst"

# Default recipe
default: compile

# Type-check the CV without producing output
check:
    {{ typst }} compile cv.typ /dev/null -f pdf

# Format .typ and .toml files
fmt:
    treefmt

# Fail if any file is not formatted
fmt-check:
    treefmt --fail-on-change --no-cache

# Compile CV to PDF
compile:
    {{ typst }} compile cv.typ

# Watch for changes and recompile
watch:
    {{ typst }} watch cv.typ

# Open PDF in browser
open: compile
    xdg-open cv.pdf

# Compile cover letter
letter:
    {{ typst }} compile letter.typ

# Watch cover letter
watch-letter:
    {{ typst }} watch letter.typ
