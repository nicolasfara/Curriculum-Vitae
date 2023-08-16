#import "@preview/fontawesome:0.1.0": *

#let contact-entries = (
  (icon-path: fa-envelope(), content: link("mailto:nicolas.farabegoli@unibo.com")),
  (icon-path: fa-phone(), content: link("tel:+39 3402876022")),
  (icon-path: fa-location-dot(), content: [Bertinoro, Italy]),
  (icon-path: fa-icon("github", fa-set: "Brands"), content: link("https://github.com/nicolasfara")[nicolasfara]),
)

#let current-position-entries = (
  (
    title: [Research Fellow],
    subtitle: [Department of Computer Science and Engineering],
    subtitle-aside: [University of Bologna, Italy],
    date: [April 2023 --- Today],
  ),
  (
    title: [Teaching Tutor],
    subtitle: [Department of Computer Science and Engineering],
    subtitle-aside: [University of Bologna, Italy],
    date: [September 2020 --- Today],
  ),
)

#let work-experience-entries = (
  (
    title: [Teaching Tutor --- Algorithms and Data Structures],
    subtitle: [University of Bologna],
    subtitle-aside: [Campus of Cesena, Italy],
    date: [A.Y. 2022/2023],
  ),
  (
    title: [Teaching Tutor --- Algorithms and Data Structures],
    subtitle: [University of Bologna],
    subtitle-aside: [Campus of Cesena, Italy],
    date: [A.Y. 2021/2022],
  ),
  (
    title: [Teaching Tutor --- Algorithms and Data Structures],
    subtitle: [University of Bologna],
    subtitle-aside: [Campus of Cesena, Italy],
    date: [A.Y. 2020/2021],
  ),
  (
    title: [HPC Internship],
    subtitle: [University of Bologna],
    subtitle-aside: [Campus of Cesena, Italy],
    date: [June 2019 --- November 2019],
    more: [
      / Supervisor: Prof. Moreno Marzolla
      / Scope: Study of the TensorCore architecture and its application to simple parallel algorithms for matrix multiplication and the Dirac operator.
    ]
  ),
  (
    title: [High School Internship],
    subtitle: [General System s.r.l.],
    subtitle-aside: [Cesena, Italy],
    date: [June 2015 --- August 2015],
    more: [
      / Scope: Implementation and validation of several electronic circuits for the control of industrial machinery and PLCs programming.
    ]
  ),
)

#let education-entries = (
  (
    title: [Master's degree in Computer Science and Engineering],
    subtitle: [University of Bologna],
    subtitle-aside: [Campus of Cesena, Italy],
    date: [September 2020 --- March 2023],
    more: [
      / Final result: 110/110 cum laude
      / Thesis: _Design and Implementation of a Portable Framework for Application Decomposition and Deployment in Edge-Cloud Systems_
      / Supervisors: Prof. Mirko Viroli, Prof. Danilo Pianini
      / Area of Study: Pervasive Computing
    ]
  ),
  (
    title: [Bachelor's degree in Computer Science and Engineering],
    subtitle: [University of Bologna],
    subtitle-aside: [Campus of Cesena, Italy],
    date: [September 2016 --- March 2020],
    more: [
      / Final result: 103/110
      / Thesis: _Optimized Implementation of the Dirac Operator on GPGPU_
      / Supervisor: Prof. Moreno Marzolla
      / Area of Study: High Performance Computing
    ]
  ),
  (
    title: [High School in Electrotechnics and Electronics],
    subtitle: [Istituto Tecnico Tecnologico "Blaise Pascal"],
    subtitle-aside: [Cesena, Italy],
    date: [September 2011 - June 2016]
  ),
)

#let programming-languages = (
  "Programming Languages": (
    [Bash], [C], [C++], [C\#], [Kotlin], [Java], [Javascript], [Prolog], [Protelis], [Python], [Rust], [Scala], [Typescript]
  ),
  "Other Languages": (
    [CSS], [CSS3], [HTML5], [JSON], [LaTeX], [Markdown], [YAML], [SQL]
  ),
  "Software Tools": (
    [Cargo], [Git], [Gradle], [GH Actions], [Hugo], [Inkscape], [Markdown], [sbt], [SQL], [npm], [IntelliJ], [VS Code]
  )
)

#let languages = (
  [Italian - native speaker], [English - B1]
)


#let extra-curricular-activities-entries = (
  (
    title: [E-Powertrain Division Member],
    subtitle: [Unibo Motorsport],
    subtitle-aside: [Bologna, Italy],
    date: [September 2020 --- February 2021],
    more: [
      / Scope: Development of BMS boards for the electric vehicle of the team; implemented #emph[LabView] software for the test of the battery pack and development of the vehicle's wiring system.
    ]
  ),
  (
    title: [Ce.Se.N.A. Security Team],
    subtitle: [Core Team Member],
    subtitle-aside: [Cesena, Italy],
    date: [October 2016 --- June 2019],
    more: [
      / Scope: Learned reverse engineering techniques and security analysis of software and hardware systems. Attended several CTFs and presentations with focus on security topics.
    ]
  ),
  (
    title: [FabLab Romagna],
    subtitle: [Core Member],
    subtitle-aside: [Cesena, Italy],
    date: [May 2014 --- September 2017],
    more: [
      / Scope: Responsible for the management of the laboratory; speaker of few seminar on elettronics and 3D printing. Involved in the organization of the #emph[Rimini Beach Mini Maker Faire 2015]. Developed several prototypes with #emph[Arduino] and #emph[Raspberry Pi].
    ]
  ),
)

#let projects-contributions-entries = (
  (
    title: [Lead designer and maintainer of PulvReAKt],
    subtitle: [Kotlin multiplatform framework for pulverized application development],
    date: [2022 --- Today],
    more: [
      #link("https://github.com/pulvreakt/pulvreakt")[#fa-icon("github", fa-set: "Brands") pulvreakt/pulvreakt]
    ]
  ),
  (
    title: [Major Maintainer of MDM],
    subtitle: [Mambelli Domain Model --- Pure functional domain modellation],
    date: [2022],
    more: [
      #link("https://github.com/atedeg/mdm")[#fa-icon("github", fa-set: "Brands") atedeg/mdm]
    ]
  ),
  (
    title: [Major Maintainer of ECScala],
    subtitle: [Entity Component System for Scala],
    date: [2021],
    more: [
      #link("https://github.com/atedeg/ecscala")[#fa-icon("github", fa-set: "Brands") atedeg/ecscala]
    ]
  ),
  (
    title: [Lead designer and maintainer of conventional-commit],
    subtitle: [Gradle plugin for enforcing conventional commit messages],
    date: [2022 --- Today],
    more: [
      #link("https://github.com/nicolasfara/conventional-commits")[#fa-icon("github", fa-set: "Brands") nicolasfara/conventional-commits]
    ]
  ),
  (
    title: [Lead designer and maintainer of sbt-conventional-commit],
    subtitle: [SBT plugin for enforcing conventional commit messages],
    date: [2022 --- Today],
    more: [
      #link("https://github.com/nicolasfara/sbt-conventional-commits")[#fa-icon("github", fa-set: "Brands") nicolasfara/sbt-conventional-commits]
    ]
  ),
  (
    title: [Lead designer and maintainer of pfeeder],
    subtitle: [Cloud-based software system for a smart pet feeder management],
    date: [2020],
    more: [
      #link("https://github.com/nicolasfara/pfeeder")[#fa-icon("github", fa-set: "Brands") nicolasfara/pfeeder]
    ]
  ),
)