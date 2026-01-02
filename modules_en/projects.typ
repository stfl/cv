// Imports
#import "@preview/brilliant-cv:3.1.1": cv-section, cv-entry


#cv-section("Projects & Associations")

#cv-entry(
  title: [Organizer],
  society: [Rust Vienna Meetup],
  date: [Feb 2023 - Jun 2024],
  location: [Vienna, Austria],
  description: list(
    [Led and organized monthly technical meetups for the Rust programming
    community, growing from 200 to 500 members],
    [Coordinated technical speakers, secured venues, and facilitated knowledge
    sharing sessions on advanced Rust topics and real-world applications],
    [Built and maintained collaborative network of Rust developers, contributing
    to the growth of the local tech community],
  ),
  tags: ("Rust", "Community", "Meetup"),
)

#cv-entry(
  title: [Forex Backtest Framework],
  society: [Personal Project],
  date: [2020 - 2021],
  location: [Vienna, Austria],
  description: list(
    [Architected and implemented high-performance backtest engine in Rust for
    MetaTrader 5 trading strategy optimization, enabling rapid iteration on
    algorithmic trading models],
    [Designed RESTful API for programmatic backtest execution, parameter
    optimization, and automated result aggregation],
    [Built Python-based analysis pipeline for statistical performance
    evaluation, risk metrics calculation, and strategy comparison],
  ),
  tags: ("Rust", "Python", "Pandas", "MetaTrader 5", "Algorithmic Trading"),
)

#cv-entry(
  title: [IT Infrastructure Volunteer],
  society: [Tribal Gathering Festival (GeoParadise)],
  date: list(
    [May 2017 - Apr 2018],
    [Oct 2019 - Mar 2020],
  ),
  location: [Panama],
  description: list(
    [Designed and maintained critical cashless payment system infrastructure in
    remote jungle environment with limited connectivity and power constraints],
    [Deployed and administered high-availability Proxmox virtualization cluster
    for CRM and point-of-sale systems, ensuring business continuity],
    [Architected network infrastructure and managed technical volunteer teams to
    maintain 24/7 operations under challenging environmental conditions],
  ),
  tags: ("Proxmox", "Infrastructure", "Networking", "Volunteer"),
)
