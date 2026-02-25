#import "@preview/brilliant-cv:3.1.2": cv-section, cv-skill, cv-skill-with-level, h-bar

#cv-section("Skills")

#cv-skill(
  type: [Core Competencies],
  info: [System Architecture #h-bar() Requirements Engineering #h-bar() Technical Leadership #h-bar() Embedded Systems #h-bar() Bare-Metal Infrastructure],
)

#cv-skill(
  type: [Programming],
  info: [Rust #h-bar() C++ #h-bar() C #h-bar() Python #h-bar() Bash/Shell],
)

#cv-skill(
  type: [Tech Stack & OS],
  info: [Embedded Linux #h-bar() Yocto / OpenEmbedded #h-bar() Proxmox VE #h-bar() Dokku / Debian #h-bar() GStreamer #h-bar() InfluxDB #h-bar() Kubernetes (Basic)],
)

#cv-skill-with-level(
  type: [Languages],
  level: 5,
  info: [German (Native)],
)

#cv-skill-with-level(
  type: [],
  level: 4,
  info: [English (Professional)],
)
