// Imports
#import "@preview/brilliant-cv:3.1.1": cv-section, cv-entry


#cv-section("Projects & Associations")

#cv-entry(
  title: [Community Lead & Organizer],
  society: [Rust Vienna Meetup],
  date: [Feb 2023 - Jun 2024],
  location: [Vienna, Austria],
  description: list(
    [Led monthly technical meetups as primary organizer, growing Rust Vienna from
    200 to 500+ members through curated speaker programs and community building],
    [Facilitated knowledge sharing on advanced Rust topics including embedded
    systems, async runtime design, and production deployment patterns],
    [Continuing as active community member, providing technical mentorship and
    occasional speaking engagements],
  ),
  tags: ("Rust", "Community", "Leadership", "Public Speaking"),
)

// Personal project removed for professional consulting focus
// #cv-entry(
//   title: [Forex Backtest Framework],
//   society: [Personal Project],
//   date: [2020 - 2021],
//   location: [Vienna, Austria],
//   description: list(
//     [Architected and implemented high-performance backtest engine in Rust for
//     MetaTrader 5 trading strategy optimization, enabling rapid iteration on
//     algorithmic trading models],
//     [Designed RESTful API for programmatic backtest execution, parameter
//     optimization, and automated result aggregation],
//     [Built Python-based analysis pipeline for statistical performance
//     evaluation, risk metrics calculation, and strategy comparison],
//   ),
//   tags: ("Rust", "Python", "Pandas", "MetaTrader 5", "Algorithmic Trading"),
// )

#cv-entry(
  title: [On-Site Infrastructure Consultant],
  society: [Tribal Gathering Festival (GeoParadise)],
  date: list(
    [May 2017 - Apr 2018],
    [Oct 2019 - Mar 2020],
  ),
  location: [Panama],
  description: list(
    [Delivered mission-critical cashless payment infrastructure supporting business operations in remote environment with extreme connectivity and power constraints],
    [Architected and deployed high-availability Proxmox virtualization cluster for CRM and point-of-sale systems, ensuring zero-downtime business continuity],
    [Led distributed technical teams maintaining 24/7 operations, demonstrating leadership and problem-solving under challenging resource limitations],
  ),
  tags: ("Proxmox", "Infrastructure", "High Availability", "Leadership", "Networking"),
)
