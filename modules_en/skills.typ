// Imports
#import "@preview/brilliant-cv:3.1.1": cv-section, cv-skill, cv-skill-with-level, h-bar


#cv-section("Skills")

#cv-skill(
  type: [Programming],
  info: [Rust #h-bar() Python #h-bar() C++],
)

#cv-skill(
  type: [Tech Stack],
  info: [Embedded Linux #h-bar() Yocto #h-bar() DevOps #h-bar() Infrastructure as Code],
)

#cv-skill(
  type: [Expertise],
  info: [Software Architecture #h-bar() Embedded Systems #h-bar() Real-time Computing],
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

#cv-skill-with-level(
  type: [],
  level: 3,
  info: [Spanish (Intermediate)],
)
