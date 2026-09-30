#import "@preview/brilliant-cv:4.1.0": cv-section, cv-skill, cv-skill-with-level

// Same chip as the `tags` line under each cv-entry (brilliant-cv's private
// `_create-entry-tag-list`); the public `cv-skill-tag` is a larger 10pt variant.
// The bottom inset spaces the rows: cv-skill ends each row with v(-6pt), which
// is sized for plain text and leaves chip rows touching.
#let skill-tags(items) = block(inset: (bottom: 6pt), {
  set par(leading: 0.9em)
  for item in items {
    box(
      inset: (x: 0.25em),
      outset: (y: 0.25em),
      fill: rgb("#ededee"),
      radius: 3pt,
      text(size: 8pt, item),
    )
    h(5pt)
  }
})

// One unbreakable block, so the section never leaves a row or two stranded on
// the next page. type-width is widened from the 17% default so "Consulting &
// Leadership" fits on one line; every row takes the same width to stay aligned.
#block(breakable: false)[
  #cv-section("Skills")

  #cv-skill(
    type-width: 22%,
    type: [Core Competencies],
    info: skill-tags((
      [System Architecture],
      [Requirements Engineering],
      [Technical Leadership],
      [Embedded Systems],
      [Bare-Metal Infrastructure],
    )),
  )

  #cv-skill(
    type-width: 22%,
    type: [Consulting & Leadership],
    info: skill-tags((
      [Technical Due Diligence],
      [Stakeholder Management],
      [Team Leadership & Mentoring],
    )),
  )

  #cv-skill(
    type-width: 22%,
    type: [Programming],
    info: skill-tags((
      [Rust],
      [C++],
      [C],
      [Python],
      [Bash/Shell],
    )),
  )

  #cv-skill(
    type-width: 22%,
    type: [Tech Stack & OS],
    info: skill-tags((
      [Embedded Linux],
      [Yocto / OpenEmbedded],
      [NixOS],
      [ROS 2 / MCAP],
      [Proxmox VE / PBS],
      [Dokku / Debian],
      [GStreamer],
      [InfluxDB],
      [Kubernetes (Basic)],
    )),
  )

  #cv-skill-with-level(
    type-width: 22%,
    type: [Languages],
    level: 5,
    info: [German (Native)],
  )

  #cv-skill-with-level(
    type-width: 22%,
    type: [],
    level: 5,
    info: [English (Professional)],
  )

  #cv-skill-with-level(
    type-width: 22%,
    type: [],
    level: 2,
    info: [Spanish (Conversational)],
  )
]
