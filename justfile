# Default recipe
default: compile

# Type-check the CV without producing output
check:
    typst compile cv.typ /dev/null -f pdf

# Compile CV to PDF
compile:
    typst compile cv.typ

# Watch for changes and recompile
watch:
    typst watch cv.typ

# Open PDF in browser
open: compile
    xdg-open cv.pdf

# Compile cover letter
letter:
    typst compile letter.typ

# Watch cover letter
watch-letter:
    typst watch letter.typ
