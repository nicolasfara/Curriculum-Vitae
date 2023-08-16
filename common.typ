#import "@preview/fontawesome:0.1.0": *

#let line-spacing = 0.75em
#let entries-spacing = 0.65em
#let main-color = rgb(167, 199, 231).darken(30%)

#let separation-line() = box(inset: (top: 0.2em, bottom: 0.2em), line(length: 100%, stroke: (dash: "dotted", paint: gray)))
// #let separation-line() = repeat(text(fill: gray)[-])

#let with-small-right-column(left, right) = grid(
  columns: (1fr, auto),
  column-gutter: 2em,
  left,
  right
)

#let show-contact-entry(contact-entry) = stack(
  dir: ltr,
  spacing: 1.5em,
  stack(
    dir: ltr,
    spacing: 0.6em,
    move(dy: -0.15em, dx: 0.30em, contact-entry.icon-path),
    contact-entry.content
  )
)

#let show-contact-entries(entries) = entries.map(entry => box(inset: 0.4em, show-contact-entry(entry))).join("  ")

#let show-header(name, contact-entries, image-path) = with-small-right-column(
  [
    #text(size: 2em)[= #name]
    #align(center)[#show-contact-entries(contact-entries)]
  ],
  if image-path != "none"  [#move(dy: -1em, image-path)]
)

#let section-title(title) = text(fill: main-color, size: 1.2em)[
  == #title
 #line(length: 100%, stroke: 0.1em + main-color)
]

#let subsection-title(title) = text(fill: main-color, size: 1.2em)[
  === #title
  //#line(length: 100%, stroke: 0.1em + main-color)
]

#let entry-title(title) = text(size: 1.1em)[=== #title]

#let show-entry(entry) = {
  let subtitle = [ 
    #entry.subtitle #if "subtitle-aside" in entry.keys() [ 
      --- #entry.subtitle-aside
    ]
  ]
  
  let content = (
    with-small-right-column(entry-title(entry.title), if "date" in entry.keys() { emph(entry.date) } else { [] }),
    emph(subtitle),
  )
  if "more" in entry.keys() { content.push(block(inset: (top: 0.3em), entry.more)) }
  stack(
    dir: ttb,
    spacing: line-spacing,
    ..content
  )
}

#let intersperse(array, elem) = {
  let result = ()
  for entry in  array {
    result.push(entry)
    result.push(elem)
  }
  result.slice(0, result.len() - 1)
}

#let show-entries(entries) = stack(
  dir: ttb,
  spacing: entries-spacing,
  ..intersperse(entries.map(show-entry), separation-line()),
  box(inset: (bottom: 0.25em))
)

// #let pill(content) = box(
//   rect(
//     stroke: gray,
//     radius: 50%,
//     text(fill: gray.darken(70%), content)
//   )
// )

#let card(content) = box(
  inset: (right: 0.5em),
  rect(
    stroke: gray,
    radius: 0.5em,
    fill: gray.lighten(90%),
    text(fill: gray.darken(70%), content)
  )
)

#let section(title, content) = stack(
  dir: ttb,
  spacing: line-spacing,
  section-title(title),
  content
)

#let section-elem(title, content) = stack(
  dir: ttb,
  spacing: line-spacing,
  section-title(title),
  ..content
)

#let entries-section(title, entries) = section(title, show-entries(entries))
#let pill-section(title, pills) = section-elem(title, pills.pairs().map(elem => stack(
  dir: ttb,
  spacing: 1em,
  subsection-title(elem.at(0)),
  elem.at(1).map(card).join(" ")
)))