// Imports
#import "@preview/brilliant-cv:2.0.3": cvSection, cvSkill, hBar

#let metadata = toml("../../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)

#cvSection("Skills")

#cvSkill(
  type: [Languages],
  info: [Italian #hBar() English (B2)],
)

#cvSkill(
  type: [Programming],
  info: [Bash #hBar() C #hBar() C++ #hBar() C\# #hBar() Kotlin #hBar() Java #hBar() Javascript #hBar() Prolog #hBar() Protelis #hBar() Python #hBar() Rust #hBar() Scala #hBar() Typescript],
)

#cvSkill(
  type: [Other Languages],
  info: [CSS #hBar() HTML #hBar() LaTeX #hBar() Markdown #hBar() SQL],
)

#cvSkill(
  type: [Software Tools],
  info: [Cargo #hBar() Git #hBar() Gradle #hBar() GH Actions #hBar() Hugo #hBar() Inkscape #hBar() Markdown #hBar() sbt #hBar() SQL #hBar() npm #hBar() IntelliJ #hBar() VS Code],
)

#cvSkill(
  type: [Personal Interests],
  info: [Tennis #hBar() MTB #hBar() DIY #hBar() Programming #hBar() Electronics #hBar() Tinkering],
)
