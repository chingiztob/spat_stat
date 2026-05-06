#let conf(arg) = {
  set par(
    justify: true,
    leading: 0.6em,
    first-line-indent: (
      amount: 1.25em,
      all: true,
    ),
  )

  show link: set text(fill: blue)

  show list: set list(
    indent: 3em, // Increase bullet indent
    spacing: 0.8em, // Increase spacing between items
  )

  show enum: set enum(
    indent: 3em, // Increase bullet indent
    spacing: 0.8em, // Increase spacing between items
  )

  set page(
    paper: "a4",
    header: align(right)[
      #set text(size: 11pt)
      Пространственная статистика 2025
    ],
    margin: (x: 1.5cm, y: 1.5cm),
  )

  set text(
    size: 13pt,
    style: "normal",
    weight: "regular",
  )

  show heading.where(level: 1): it => block(width: 100%, above: 20pt, below: 20pt)[
    #set align(center)
    #set text(17pt, weight: "bold")
    #upper(it.body)
  ]

  show heading.where(level: 2): it => block(width: 100%, above: 20pt, below: 20pt)[
    #set align(center)
    #set text(15pt, weight: "bold")
    #smallcaps(it.body)
  ]

  show heading.where(level: 3): it => block(width: 100%, above: 18pt, below: 18pt)[
    #set align(center)
    #set text(13.5pt, weight: "bold")
    #smallcaps(it.body)
  ]

  show outline.entry.where(level: 1): set block(above: 1.1em)
  show outline.entry.where(level: 1): set text(weight: "bold", size: 14pt)

  show outline.entry.where(level: 2): set block(above: 0.8em)
  show outline.entry.where(level: 2): set text(weight: "bold")

  show outline.entry.where(level: 3): set block(above: 0.8em)

  arg
}


#let redbox(content, height: 37pt) = box(
  stroke: red,
  inset: 0.4em,
  radius: 0.2em,
  width: auto,
  height: auto,
)[*$ content $*];

#let hl(content, color) = text(fill: color, weight: "extrabold")[$content$];
