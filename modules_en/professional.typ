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
  location: [Vienna, Austria],
  date: [May 2024 - Dec 2024],
  description: list(
    [Led an engineering team developing a critical automotive remote command feature between the cloud and vehicle],
    [Designed C++ service architecture for automotive systems],
    [Created Yocto-based Linux distribution],
    [Requirements documentation and stakeholder alignment],
  ),
  tags: ("C++", "Yocto", "Automotive"),
)

#cv-entry(
  title: [Rust Software Engineer],
  society: [Proxmox],
  date: [Sep 2023 - Apr 2024],
  location: [Vienna, Austria],
  description: list(
    [Contributed to the Software Defined Network stack],
    [Developed Proxmox Backup Server features in Rust],
  ),
  tags: ("Rust", "Networking", "Virtualization"),
)

#cv-entry(
  title: [Freelance Software Engineer],
  society: [Self-employed],
  date: [Nov 2022 - Present],
  location: [Vienna, Austria],
  description: list(
    [Building backend, infrastructure, and embedded solutions for diverse clients],
  ),
  tags: ("Consulting", "Backend", "Infrastructure"),
)

#cv-entry(
  title: [Software Engineer and Architect],
  society: [pulswerk],
  date: [Nov 2019 - Nov 2022],
  location: [Vienna, Austria],
  description: list(
    [Led Django web application development],
    [Integrated legacy PHP systems],
    [Introduced agile development techniques],
  ),
  tags: ("Django", "Python", "Agile"),
)

#cv-entry(
  title: [Embedded Software Engineer],
  society: [Mission Embedded],
  date: [Oct 2014 - Oct 2019],
  location: [Vienna, Austria],
  description: list(
    [Developed custom Linux distributions],
    [Built safety-critical video streaming solutions using GStreamer],
  ),
  tags: ("Embedded Linux", "GStreamer", "Safety-critical"),
)

#cv-entry(
  title: [Embedded Software Engineer],
  society: [E-Control Austria],
  date: [Jun 2010 - Sep 2013],
  location: [Vienna, Austria],
  description: list(
    [Developed smart meter firmware enhancements],
  ),
  tags: ("Firmware", "Embedded", "Smart Metering"),
)
