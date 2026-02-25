#import "@preview/brilliant-cv:3.1.2": cv-section, cv-entry

#cv-section("Projects & Associations")

#cv-entry(
  title: [Community Lead & Organizer],
  society: [Rust Vienna Meetup],
  date: [Feb 2023 - Jun 2024],
  location: [Vienna, Austria],
  description: list(
    [Coordinated regular technical meetups, successfully growing the local Rust community from 200 to over 500 members],
    [Managed speaker curation, event logistics, and delivered a technical presentation on the Rust `Deref` trait],
  ),
  tags: ("Rust", "Community Leadership", "Event Coordination", "Public Speaking"),
)

#cv-entry(
  title: [Forex Backtesting Infrastructure & Automation],
  society: [Personal Project],
  date: [2020 - 2021],
  location: [Vienna, Austria],
  description: list(
    [Provisioned a physical rack server and deployed a custom bare-metal Proxmox virtualization environment],
    [Architected an automated MetaTrader backtesting pipeline, utilizing Rust and Python for execution control and data parsing to enable rapid iteration on algorithmic trading models],
  ),
  tags: ("Proxmox", "Rust", "Python", "Infrastructure"),
)

#cv-entry(
  title: [On-Site Infrastructure Consultant],
  society: [Tribal Gathering Festival (GeoParadise)],
  date: list(
    [May 2017 - Apr 2018],
    [Oct 2019 - Mar 2020],
  ),
  location: [Panama (Remote Beach)],
  description: list(
    [Architected a resilient 2-node Proxmox cluster in an off-grid shipping container for a cashless POS system, guaranteeing continuous business operations in an extreme, low-resource environment],
    [Managed severe physical infrastructure constraints, wiring UPS systems to diesel generators and handling manual failovers during frequent outages],
  ),
  tags: ("Proxmox", "Off-Grid Infrastructure", "Networking", "Crisis Management", "Resilience"),
)
