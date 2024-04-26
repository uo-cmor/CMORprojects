
// This is an example typst template (based on the default template that ships
// with Quarto). It defines a typst function named 'article' which provides
// various customization options. This function is called from the
// 'typst-show.typ' file (which maps Pandoc metadata function arguments)
//
// If you are creating or packaging a custom typst template you will likely
// want to replace this file and 'typst-show.typ' entirely. You can find
// documentation on creating typst templates and some examples here:
//   - https://typst.app/docs/tutorial/making-a-template/
//   - https://github.com/typst/templates

#let article(
  title: none,
  authors: none,
  date: none,
  abstract: none,
  keywords: none,
  cols: 1,
  margin: (x: 2.5cm, y: 2.5cm),
  paper: "a4",
  lang: "en",
  region: "NZ",
  font: (),
  fontsize: 10pt,
  sectionnumbering: none,
  toc: false,
  doc,
) = {
  set page(
    paper: paper,
    margin: margin,
    numbering: "1",
  )
  set par(justify: true)
  set text(lang: lang,
           region: region,
           font: font,
           size: fontsize)
  set heading(numbering: sectionnumbering)
  set bibliography(style: "vancouver.csl", title: "References")
  set footnote.entry(
    separator: line(length: 100%),
    indent: 0em
  )
  show footnote.entry: set align(left)

  if title != none {
    align(center)[#block(inset: 2em)[#par(justify: false)[
      #text(weight: "bold", size: 1.5em)[#title]
    ]]]
  }

  if authors != none {
    let affiliations = ()
    for author in authors {
      for affiliation in author.affiliation {
        if affiliation not in affiliations {
          affiliations.push(affiliation)
        }
      }
    }
    let affiliations_fn = affiliations.map(it => {
      let idx = affiliations.position(i => it == i) + 1
      [#super[#idx] #it]
    })
    footnote(numbering: x => [#sym.zws])[#affiliations_fn.join(linebreak())#linebreak()#linebreak()]
    counter(footnote).update(0)
    let names = authors.map(author => {
      let affiliation = author.affiliation.map(aff =>
        str(affiliations.position(i => aff == i) + 1)).join(",")
      [#author.name#if author.email != "" {
        [#footnote(numbering: "*")[Corresponding author.#linebreak()_Email_: #link("mailto:" + author.email.replace("\\", ""))]]
      }#super[#affiliation]]
    }).join(", ")
    align(center)[#par(justify: false)[#names]]
  }

  if date != none {
    align(center)[#block(inset: 1em)[
      #date
    ]]
  }

  if abstract != none {
    block(inset: 1em)[
    *Abstract*

    #abstract

    #if keywords != none {[*Keywords:* #keywords.join("; ")]}
    ]
  }

  if toc {
    block(above: 0em, below: 2em)[
    #outline(
      title: auto,
      depth: none
    );
    ]
  }

  show figure: it => {
    show par: set align(left)
    set block(spacing: 0.65em)
    set text(size: 0.8 * fontsize)
    set place(clearance: 3em)
    it
  }
  show figure.caption: it => {
    set align(left)
    set text(size: fontsize)
    strong(it)
  }
  show table.cell.where(y: 0): strong
  show table.cell: set text(size: 0.9 * fontsize)
  set table(
    inset: (x: 6pt, y: 0.3em),
    stroke: (_, y) => (
      top: if y <= 1 { 0.5pt } else { 0pt },
      bottom: 0.5pt
    )
  )

  pagebreak()

  if cols == 1 {
    doc
  } else {
    columns(cols, doc)
  }
}