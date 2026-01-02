#import "@preview/brilliant-cv:3.1.1": cv-section, cv-entry

#cv-section("Professional Experience")

#cv-entry(
  title: [Embedded Rust Software Engineer],
  society: [ÖBB (Austrian Federal Railways)],
  date: [2024 - Present],
  location: [Vienna, Austria],
  description: list(
    [Architected and led the production deployment of a mission-critical
    embedded Linux (Yocto) system, transitioning multiple Rust services from
    proof-of-concept to a secure, feature-complete railway operations platform],
    [Designed and implemented safety-compliant Rust services for railway control
    systems, ensuring deterministic behavior and fault tolerance in accordance
    with industry standards],
    [Established embedded Rust development practices and mentored engineering
    team on zero-cost abstractions, memory safety, and real-time system design
    patterns],
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
    [Delivered end-to-end technical solutions across backend services, cloud
    infrastructure, and embedded systems for diverse client engagements],
    [Architected scalable backend systems and infrastructure automation
    solutions, adapting to evolving business requirements and technical
    constraints],
    [Provided technical consulting on system design, technology selection, and
    best practices for software architecture and development processes],
  ),
  tags: ("Consulting", "Backend", "Infrastructure"),
)

#cv-entry(
  title: [Software Engineer and Architect],
  society: [pulswerk],
  date: [Nov 2019 - Nov 2022],
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
