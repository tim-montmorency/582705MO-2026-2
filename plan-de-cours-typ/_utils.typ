// _utils.typ — helpers réutilisables (contenu, listes, cases à cocher)

#let _case_a_cocher(label, coche: false) = {
  [
    #box(width: 1.05em, height: 1.05em, stroke: 1pt, inset: 0pt)[
      #align(center, if coche { [×] } else { [] })
    ]
    #h(0.35em)
    #label
  ]
}

#let _joindre(items, sep: [, ], dernier_sep: [ et ]) = {
  if items == none { none }
  else if items.len() == 0 { none }
  else if items.len() == 1 { items.at(0) }
  else {
    let out = []
    for i in range(items.len()) {
      if i > 0 {
        out = out + (if i == items.len() - 1 { dernier_sep } else { sep })
      }
      out = out + items.at(i)
    }
    out
  }
}

#let _colonnes_fr(n) = range(0, n).map(_ => 1fr)

#let _texte_paragraphes(x) = {
  if x == none { none }
  else if type(x) == content { x }
  else {
    let s = str(x)
    let parts = s.split("\n\n").map(p => p.trim()).filter(p => p != "")
    if parts.len() <= 1 { s }
    else {
      let out = []
      for i in range(parts.len()) {
        if i > 0 { out = out + parbreak() }
        out = out + parts.at(i)
      }
      out
    }
  }
}

#let _liste_lignes(items) = {
  if items == none { none }
  else if type(items) == content { items }
  else if type(items) == array {
    if items.len() == 0 { none }
    else { stack(spacing: 0.25em, ..items) }
  } else { str(items) }
}
