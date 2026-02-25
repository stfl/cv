#import "@preview/brilliant-cv:3.1.1": cv-section, cv-entry

#cv-section("Professional Experience")

#cv-entry(
  title: [Senior Software Engineer (Contract)],
  society: [ÖBB (Austrian Federal Railways)],
  date: [Oct 2024 - Present],
  location: [Vienna, Austria],
  description: list(
    [Executed a comprehensive architectural overhaul of the railway's edge measurement devices, migrating a legacy Yocto Linux distribution to the latest LTS release and completely modernizing the core system],
    [Integrated a fail-proof A/B OTA firmware update mechanism at the bootloader level, enabling seamless remote updates, full image control, and direct integration with a ThingsBoard device management platform],
    [Architected a performant Rust application to upload local telemetry data over a highly unreliable network connection, ensuring zero data loss and continuous monitoring of critical metrics],
  ),
  tags: ("Rust", "Embedded Linux", "Yocto", "Bootloader"),
)

#cv-entry(
  title: [Embedded Software Architect & Technical Lead],
  society: [3DataX (Client: TTTech)],
  location: [Vienna, Austria],
  date: [May 2024 - Dec 2024],
  description: list(
    [Led a cross-functional engineering team, taking full ownership of requirements and system architecture],
    [Architected a low-level C++ serialization protocol bridging remote control messages to the vehicle's internal vehicle bus, enabling secure, real-time cloud-to-vehicle command execution],
    [Actively contributed to the hands-on development and maintenance of a custom Yocto Linux distribution],
  ),
  tags: ("C++", "Embedded Linux", "Yocto", "Requirements Engineering", "Technical Leadership"),
)

#cv-entry(
  title: [Software Engineer],
  society: [Proxmox],
  date: [Sep 2023 - Apr 2024],
  location: [Vienna, Austria],
  description: list(
    [Identified, debugged, and successfully upstreamed a kernel module bug fix to the OpenZFS project],
    [Developed full-stack features for Proxmox Backup Server, integrating a JS frontend with a Rust backend],
    [Contributed to the Proxmox VE SDN stack in Perl and provided Tier-3 enterprise infrastructure support],
  ),
  tags: ("Rust", "Perl", "ZFS", "Enterprise Support"),
)

#cv-entry(
  title: [Software Engineer & Architect (Employee $arrow.r$ Freelance)],
  society: [pulswerk],
  date: [Nov 2019 - Present],
  location: [Vienna, Austria],
  description: list(
    [Built a full-stack Django web application from scratch, seamlessly integrating modern Python with legacy PHP systems],
    [Deployed the initial application to a custom Kubernetes cluster before pragmatically scaling back to a self-hosted Dokku PaaS, optimizing for long-term maintainability and drastically reducing operational overhead],
    [Modernized engineering culture by introducing Git version control, CI/CD pipelines, and structured project management],
  ),
  tags: ("Django", "Python", "Kubernetes", "Dokku", "PHP", "Requirements Engineering"),
)

#cv-entry(
  title: [Embedded Software Engineer],
  society: [Mission Embedded],
  date: [Oct 2014 - Oct 2019],
  location: [Vienna, Austria],
  description: list(
    [Developed custom Yocto BSPs for i.MX platforms, porting camera drivers and optimizing at the kernel level],
    [Engineered low-latency GStreamer video streaming pipelines for i.MX and Nvidia Jetson target hardware],
    [Built a robust Rust-based API (ZeroMQ/Protobuf) to dynamically configure underlying Linux components],
  ),
  tags: ("Embedded Linux", "Yocto", "BSP", "GStreamer", "Rust", "C/C++"),
)

#cv-entry(
  title: [Technical Support & Embedded Software Engineer],
  society: [E-Control Austria],
  date: [Jun 2010 - Sep 2013],
  location: [Vienna, Austria],
  description: list(
    [Extended C-based firmware to develop and evaluate a Smart Metering Proof of Concept (PoC)],
    [Provided direct technical support for secure client certificate installations and system configurations],
  ),
  tags: ("C", "Technical Support"),
)
