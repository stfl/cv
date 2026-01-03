#import "@preview/brilliant-cv:3.1.1": cv-section, cv-entry

#cv-section("Professional Experience")

#cv-entry(
  title: [Senior Software Engineer (Contract)],
  society: [ÖBB (Austrian Federal Railways)],
  date: [Oct 2024 - Present],
  location: [Vienna, Austria],
  description: list(
    [Delivered production-ready embedded Linux platform for mission-critical
    railway control operations, transitioning Rust-based proof-of-concept to
    certified railway operations system ensuring deterministic real-time
    performance and fault tolerance],
    [Architected and implemented safety-compliant Rust services meeting railway
    industry standards, enabling secure and reliable railway control operations],
    [Established embedded Rust development practices and mentored engineering
    team on safety-critical system design, advancing team capability in
    modern systems programming],
  ),
  tags: ("Rust", "Embedded Linux", "Yocto"),
)

#cv-entry(
  title: [Embedded Software Architect],
  society: [3DataX (Client: TTTech)],
  location: [Vienna, Austria],
  date: [May 2024 - Dec 2024],
  description: list(
    [Led cross-functional engineering team in developing cloud-to-vehicle remote
    command infrastructure for automotive system, defining software architecture
    for the embedded device and ensuring the technical roadmap],
    [Architected modular C++ service framework for safety-critical automotive
    applications, ensuring AUTOSAR compliance and performance requirements],
    [Designed and implemented custom Yocto-based Linux distribution with
    hardened security posture],
    [Drove requirements engineering process and stakeholder alignment across
    engineering, product, and customer teams],
  ),
  tags: ("C++", "Yocto", "Automotive", "Requirements Engineering", "Leadership"),
)

#cv-entry(
  title: [Rust Software Engineer],
  society: [Proxmox],
  date: [Sep 2023 - Apr 2024],
  location: [Vienna, Austria],
  description: list(
    [Designed and implemented features for Proxmox's Software Defined Networking
    stack, enhancing network isolation and performance in virtualized
    environments],
    [Contributed to open-source ecosystem through code reviews, documentation
    improvements, and community support],
  ),
  tags: ("Rust", "Perl", "Networking", "Virtualization"),
)

#cv-entry(
  title: [Freelance Software Engineer],
  society: [Self-employed],
  date: [Nov 2022 - Present],
  location: [Vienna, Austria],
  description: list(
    [Delivering embedded systems development and consulting services for
    industrial and transportation sector clients, including mission-critical
    railway operations platform (see ÖBB contract above)],
    [Providing ongoing infrastructure maintenance, monitoring, and proactive
    issue resolution for production web applications and server environments],
    [Managing hosting infrastructure and technical operations for smaller client
    engagements, ensuring reliability and security],
    [Offering technical consulting on system architecture, technology selection,
    and best practices for embedded systems and backend development],
  ),
  tags: ("Consulting", "Embedded Systems", "Infrastructure", "Backend", "DevOps", "Rust"),
)

#cv-entry(
  title: [Software Engineer and Architect],
  society: [pulswerk],
  date: [Nov 2019 - Present],
  location: [Vienna, Austria],
  description: list(
    [Architected and led development of Django-based web applications,
    establishing coding standards, testing practices, and CI/CD pipelines],
    [Designed integration architecture connecting legacy PHP systems with modern
    Django applications, ensuring data consistency and minimal service
    disruption],
    [Introduced agile methodologies and technical practices including sprint
    planning, code reviews, and continuous integration, improving team velocity
      and code quality],
    [maintenance contract since Nov 2022],
  ),
  tags: ("Django", "Python", "Agile"),
)

#cv-entry(
  title: [Embedded Software Engineer],
  society: [Mission Embedded],
  date: [Oct 2014 - Oct 2019],
  location: [Vienna, Austria],
  description: list(
    [Designed and implemented custom embedded Linux distributions using
    Yocto/OpenEmbedded, optimizing for performance, security, and minimal
    footprint],
    [Developed safety-critical real-time video streaming solutions using
    GStreamer for aerospace and defense applications, ensuring low-latency and
    high reliability],
    [Collaborated with hardware engineers on board bring-up, device driver
    development, and system integration for ARM-based platforms],
    [Developed a Rust-based communcation agent between two embedded devices],
  ),
  tags: ("Embedded Linux", "Yocto", "C/C++", "Rust", "GStreamer", "Safety-critical"),
)

#cv-entry(
  title: [Embedded Software Engineer],
  society: [E-Control Austria],
  date: [Jun 2010 - Sep 2013],
  location: [Vienna, Austria],
  description: list(
    [Developed firmware enhancements for smart metering devices, implementing
    energy measurement protocols and secure data communication features],
    [Contributed to embedded system testing and validation procedures, ensuring
    compliance with Austrian energy metering regulations],
  ),
  tags: ("Firmware", "C", "Embedded", "Smart Metering"),
)
