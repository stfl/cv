// Imports
#import "@preview/brilliant-cv:3.1.1": cv-section, cv-entry


#cv-section("Professional Experience")

#cv-entry(
  title: [Embedded Rust Software Engineer],
  society: [ÖBB (Austrian Federal Railways)],
  date: [2024 - Present],
  location: [Vienna, Austria],
  description: list(
    [Led the transition of a mission-critical embedded Linux (Yocto) system with several Rust services from POC to a stable, secure, and feature-rich production environment],
    [Implemented robust Rust services for railway systems ensuring high reliability and safety compliance],
    [Mentored team on embedded Rust best practices],
  ),
  tags: ("Rust", "Embedded Linux", "Yocto"),
)

#cv-entry(
  title: [Embedded Software Architect],
  society: [3DataX (Client: TTTech)],
  date: [2024],
  location: [Vienna, Austria],
  description: list(
    [Led an engineering team developing a critical automotive remote command feature between the cloud and vehicle],
    [Designed C++ service architecture for automotive systems],
    [Created Yocto-based Linux distribution],
    [Requirements documentation and stakeholder alignment],
  ),
  tags: ("C++", "Yocto", "Automotive"),
)
