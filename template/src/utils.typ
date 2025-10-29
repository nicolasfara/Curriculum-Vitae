
#let card(content) = box(
  inset: (right: 0.5em),
  rect(
    stroke: gray,
    radius: 0.5em,
    fill: gray.lighten(90%),
    text(fill: gray.darken(70%), content)
  )
)