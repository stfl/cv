# Default recipe
default: compile

# Font paths for static fonts
font_paths := "--font-path assets/fonts/Roboto/static --font-path assets/fonts/SourceSans3/static --font-path assets/fonts/FontAwesome/otfs/"

# Type-check the CV without producing output
check:
    typst compile {{font_paths}} cv.typ /dev/null -f pdf

# Compile CV to PDF
compile:
    typst compile {{font_paths}} cv.typ

# Watch for changes and recompile
watch:
    typst watch {{font_paths}} cv.typ

# Open PDF in browser
open: compile
    xdg-open cv.pdf

# Compile cover letter
letter:
    typst compile {{font_paths}} letter.typ

# Watch cover letter
watch-letter:
    typst watch {{font_paths}} letter.typ
