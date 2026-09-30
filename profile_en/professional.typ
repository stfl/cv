#import "@preview/brilliant-cv:4.1.0": cv-entry, cv-section

#cv-section("Professional Experience")

#cv-entry(
  title: [Senior Rust Engineer (Contract)],
  society: [Momentedge],
  date: [May 2026 - Present],
  location: [Remote],
  description: list(
    [Designed and built Momentedge Clipper, a Rust application that cuts event-triggered clips from a live ROS 2 MCAP sensor recording, including a configurable pre- and postroll window around each event],
    [Implemented a low-level MCAP parser that tails the growing file while it is still being written, indexing only message timestamps and seeking directly to the byte ranges of a clip window, never deserializing a message body],
    [Kept the recorder untouched: clipper holds the recording read-only and communicates only through the file, running at 0.45 % of one core and 22 MiB on a Jetson Orin Nano],
    [Set up GitHub Actions CI with a per-distro build and test matrix, releasing arm64 Debian packages for ROS 2 Humble and Jazzy, plus a ROS-free build that cuts identical clips from finished recordings],
  ),
  tags: ("Rust", "ROS 2", "MCAP", "Binary File Formats", "Jetson", "GitHub Actions"),
)

#cv-entry(
  title: [Senior Software Engineer (Contract)],
  society: [ÖBB (Austrian Federal Railways)],
  date: [Oct 2024 - Present],
  location: [Vienna, Austria],
  description: list(
    [Executed a comprehensive architectural overhaul of the railway's edge measurement devices, migrating the legacy Yocto Linux distribution from Dunfell to the Scarthgap LTS release, including an in-field migration path for devices already in service],
    [Integrated a fail-proof A/B OTA firmware update mechanism with RAUC, generating the keys and CSRs and setting up its code-signing chain on ÖBB's PKI, and built a Rust MQTT agent linking each device to a ThingsBoard device management platform],
    [Architected a Rust service that exports measurement data from the on-device InfluxDB 3 time-series database as Parquet and uploads it to a ground-side SFTP server over a highly unreliable network connection, with crash-safe atomic state, zero data loss, and a gapless transmission report that lets the ground side prove completeness],
    [Added monitoring and email alerting on field devices for vehicle bus read errors and IP address changes],
    [Drove requirements engineering with ÖBB stakeholders, working ticket-driven in Jira with pull requests and YAML pipelines on Azure DevOps, and contributed to the EN 50716 quality assurance plan for the device operating system],
  ),
  tags: (
    "Rust",
    "Embedded Linux",
    "Requirements Engineering",
    "Yocto",
    "Bootloader",
    "PKI / Certificates",
    "InfluxDB",
    "Azure DevOps",
  ),
)

#cv-entry(
  title: [Maintenance & Operations (Contract)],
  society: [pulswerk],
  date: [Nov 2022 - Present],
  location: [Vienna, Austria],
  description: list(
    [Maintained the Django application built during my employment, shipping fixes and updates under a freelance maintenance contract],
    [Operated its self-hosted Dokku hosting on Debian, handling monitoring, upgrades, and incident resolution],
  ),
  tags: ("Django", "Python", "Dokku", "Debian", "Operations", "CI/CD"),
)

#cv-entry(
  title: [Support Engineer (Contract)],
  society: [Origina],
  date: [Feb 2026 - Jun 2026],
  location: [Remote],
  description: list(
    [Assessed Proxmox VE and Proxmox Backup Server for third-party support, bringing both products into Origina's catalogue of supported enterprise software],
    [Mapped each functional area and feature against the configurations Origina can support, and flagged the setups that pose a supportability risk],
    [Drew on hands-on Proxmox development and Tier-3 support experience to judge where independent support is sustainable without vendor access],
  ),
  tags: ("Proxmox VE", "Proxmox Backup Server", "Linux", "Enterprise Support"),
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
    [Drove the requirements engineering process and stakeholder alignment across engineering, product, and customer teams],
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
    [Contributed to the Proxmox VE SDN stack in Perl and resolved Tier-3 enterprise support incidents across storage, networking, and virtualization],
  ),
  tags: ("Rust", "Perl", "ZFS", "Enterprise Support", "Troubleshooting", "Mailing List"),
)

#cv-entry(
  title: [Software Engineer & Architect],
  society: [pulswerk],
  date: [Nov 2019 - Nov 2022],
  location: [Vienna, Austria],
  description: list(
    [Built a full-stack Django web application from scratch, seamlessly integrating modern Python with legacy PHP systems],
    [Deployed the initial application to a custom Kubernetes cluster before pragmatically scaling back to a self-hosted Dokku PaaS, optimizing for long-term maintainability and drastically reducing operational overhead],
    [Modernized engineering culture by introducing Git version control, CI/CD pipelines, and structured project management],
  ),
  tags: ("Django", "Python", "PHP", "Requirements Engineering", "CI/CD", "Gitlab", "GitHub", "Kubernetes", "Dokku"),
)

#cv-entry(
  title: [Embedded Software Engineer],
  society: [Mission Embedded],
  date: [Oct 2014 - Oct 2019],
  location: [Vienna, Austria],
  description: list(
    [Developed custom Yocto BSPs for i.MX platforms, porting camera drivers and optimizing at the kernel level],
    [Engineered low-latency GStreamer video streaming pipelines for i.MX and Nvidia Jetson target hardware],
    [Collaborated with hardware engineers on board bring-up, device driver development, and system integration for ARM-based platforms],
    [Built a robust Rust-based API (ZeroMQ/Protobuf) to dynamically configure underlying Linux components],
  ),
  tags: ("Embedded Linux", "Yocto", "BSP", "GStreamer", "Rust", "C/C++", "CI/CD"),
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
