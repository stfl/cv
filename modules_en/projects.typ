// Imports
#import "@preview/brilliant-cv:3.1.1": cv-section, cv-entry


#cv-section("Projects & Associations")

#cv-entry(
  title: [Organizer],
  society: [Rust Vienna Meetup],
  date: [Feb 2023 - Jun 2024],
  location: [Vienna, Austria],
  description: list(
    [Organized and hosted monthly meetups for the local Rust programming community],
    [Coordinated speakers, venues, and community engagement],
    [Fostered knowledge sharing and networking among Rust developers in Vienna],
  ),
  tags: ("Rust", "Community", "Meetup"),
)

#cv-entry(
  title: [Forex Backtest Framework],
  society: [Personal Project],
  date: [2020 - 2021],
  description: list(
    [Built a backtest runner in Rust for optimizing MetaTrader 5 trading strategies],
    [Developed REST API for programmatic backtest execution and result transformation],
    [Created Python analysis pipeline for performance metrics and strategy evaluation],
  ),
  tags: ("Rust", "Python", "MetaTrader 5", "Algorithmic Trading"),
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
    [Maintained infrastructure for cashless payment system in a remote jungle location],
    [Deployed high-availability Proxmox cluster for local CRM system],
    [Managed network infrastructure and coordinated volunteer shifts],
    [Ensured 24/7 operation of POS stations under challenging conditions],
  ),
  tags: ("Proxmox", "Infrastructure", "Networking", "Volunteer"),
)
