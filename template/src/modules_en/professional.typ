// Imports
#import "@preview/brilliant-cv:2.0.7": cvSection, cvEntry

#let metadata = toml("../../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)

#cvSection("Professional Experience")

#cvEntry(
  title: [Teaching Tutor -- Object-Oriented Programming 70219],
  society: [University of Bologna],
  // logo: image("../src/logos/xyz_corp.png"),
  date: [A.Y. 2024-2025],
  location: [Cesena],
  description: [
    Tutoring students in the Object-Oriented Programming course, providing support in the understanding of the course material and the execution of the exercises. \
  ],
  tags: ("Teaching", "Tutoring", "OOP"),
)

#cvEntry(
  title: [Teaching Tutor -- Object-Oriented Programming 70219],
  society: [University of Bologna],
  // logo: image("../src/logos/xyz_corp.png"),
  date: [A.Y. 2023-2024],
  location: [Cesena],
  description: [
    Tutoring students in the Object-Oriented Programming course, providing support in the understanding of the course material and the execution of the exercises. \
  ],
  tags: ("Teaching", "Tutoring", "OOP"),
)

#cvEntry(
  title: [Teaching Tutor -- Algorithm and Data Structures 11929],
  society: [University of Bologna],
  // logo: image("../src/logos/xyz_corp.png"),
  date: [A.Y. 2022-2023],
  location: [Cesena],
  description: [
    Tutoring students in the Algorithm and Data Structures course, providing support in the understanding of the course material and the execution of the exercises. \
  ],
  tags: ("Teaching", "Tutoring", "Algorithm", "Data Structures"),
)

#cvEntry(
  title: [Teaching Tutor -- Algorithm and Data Structures 11929],
  society: [University of Bologna],
  // logo: image("../src/logos/xyz_corp.png"),
  date: [A.Y. 2021-2022],
  location: [Cesena],
  description: [
    Tutoring students in the Algorithm and Data Structures course, providing support in the understanding of the course material and the execution of the exercises. \
  ],
  tags: ("Teaching", "Tutoring", "Algorithm", "Data Structures"),
)

#cvEntry(
  title: [Teaching Tutor -- Algorithm and Data Structures 11929],
  society: [University of Bologna],
  // logo: image("../src/logos/xyz_corp.png"),
  date: [A.Y. 2020-2021],
  location: [Cesena],
  description: [
    Tutoring students in the Algorithm and Data Structures course, providing support in the understanding of the course material and the execution of the exercises. \
  ],
  tags: ("Teaching", "Tutoring", "Algorithm", "Data Structures"),
)

#cvEntry(
  title: [High School Internship],
  society: [General System S.r.l, Cesena],
  // logo: image("../src/logos/xyz_corp.png"),
  date: [Summer 2015],
  location: [Cesena],
  description: [
    Implementation and validation of several electronic circuits for the control of industrial machinery and PLCs programming. \
  ],
  tags: ("PLC", "Electronics", "Electric"),
)
