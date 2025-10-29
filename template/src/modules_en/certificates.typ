// Imports
#import "@preview/brilliant-cv:2.0.7": cvSection, cvHonor
#let metadata = toml("../../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvHonor = cvHonor.with(metadata: metadata)


#cvSection("Certificates")

#cvHonor(
  date: [2024],
  title: [Best Poster Award -- _Decentralized Multi-Drone Coordination for Wildlife Video Acquisition_],
  issuer: [ACSOS, IEEE],
)

