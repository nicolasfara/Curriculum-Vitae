// Imports
#import "@preview/brilliant-cv:2.0.7": cvSection, cvEntry, hBar
#let metadata = toml("../../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Education")

// Master degree
#cvEntry(
  title: [Master of Computer Science and Engineering],
  society: [University of Bologna, Cesena],
  date: [2020 - 2023],
  location: [Cesena, Italy],
  logo: image("../../src/logos/unibo.svg"),
  description: list(
    [/ Thesis: _Design and Implementation of a Portable Framework for Application Decomposition and Deployment in Edge-Cloud Systems_],
    [/ Course: Pervasive Computing],
    [/ Final result: 110 cum laude],
  ),
)

// Bachelor degree
#cvEntry(
  title: [Bachelors of Computer Science and Engineering],
  society: [University of Bologna, Cesena],
  date: [2016 - 2020],
  location: [Cesena, Italy],
  logo: image("../src/../logos/unibo.svg"),
  description: list(
    [/ Thesis: Optimized Implementation of the Dirac Operator on GPGPUs],
    [/ Course: High Performance Computing],
  ),
)

// High School
#cvEntry(
  title: [High School Diploma],
  society: [Istituto Tecnico Tecnologico "B. Pascal", Cesena],
  date: [2011 - 2016],
  location: [Cesena, Italy],
  // logo: image("../src/logos/ucla.png"),
  description: list(
    "Electronic and Automation Studies",
  ),
)
