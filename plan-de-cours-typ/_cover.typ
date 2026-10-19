// _cover.typ — page couverture (formulaire)

#import "_utils.typ": _case_a_cocher, _colonnes_fr
#import "_typography.typ": FONT_CORPS, FONT_TITRES, INTERLETTRE, TAILLE_CORPS, INTERLIGNE, POIDS_TITRES, COULEUR_TITRE, COULEUR_LIGNE

#let _normaliser_plateformes(p) = {
  if p == none { () }
  else if type(p) == array { p }
  else {
    // Tolère "Teams et GitHub", "Teams, GitHub", "Teams / GitHub"…
    str(p)
      .replace(" et ", ",")
      .replace(" & ", ",")
      .replace(" / ", ",")
      .split(",")
      .map(s => s.trim())
      .filter(s => s != "")
  }
}


// Une ligne par professeur pour un champ (nom, courriel, bureau…) :
// chaque entrée sur sa propre ligne, sans virgule.
#let _lignes_profs(professeurs, cle) = stack(
  spacing: 0.25em,
  ..professeurs.map(p => p.at(cle, default: "")).filter(s => s != ""),
)

#let _cell_label(label) = pad(
  right: 0.65em, top: 0.3em, bottom: 0.3em,
  block({ set text(weight: "bold"); label }),
)

#let _cell_valeur(value) = pad(
  left: 0.9em, top: 0.3em, bottom: 0.3em,
)[ #value ]

#let page_couverture(
  logo: "assets/cm_logo.png",
  numero_cours: "",
  titre: "",
  heures: "",
  ponderation: "",
  programme: "Techniques d’intégration multimédia",
  departement_programme: none,
  departement_prof: none,
  session: "",
  date_desinscription: none,
  date_desinscription_libelle: none,
  date_abandon: none,
  date_abandon_libelle: none,
  profs: none,
  courriel: none,
  bureau: none,
  professeurs: none,
  plateformes: none,
  coordination_nom: none,
  coordination_courriel: none,
  coordination_bureau: none,
) = {
  set page(
    width: 11in, height: 8.5in,
    margin: (x: 2.2cm, y: 2.2cm),
    footer: context { align(right)[#counter(page).display("1")] },
  )
  set text(font: FONT_CORPS, tracking: INTERLETTRE, TAILLE_CORPS)
  set par(leading: INTERLIGNE)

  // En-tête : logo (gauche) + titre (droite)
  grid(
    columns: (1fr, 1fr), align: (left, right), gutter: 0pt,
    if logo != none { image(logo, height: 1.6cm) } else { [] },
    block({
      set par(leading: 1em)
      set text(font: FONT_TITRES, tracking: INTERLETTRE, 18pt, weight: POIDS_TITRES, fill: COULEUR_TITRE)
      [PLAN DE COURS]
    }),
  )

  v(1.2cm)
  align(center, block({
    set par(leading: 1em)
    set text(font: FONT_TITRES, tracking: INTERLETTRE, 22pt, weight: POIDS_TITRES, fill: COULEUR_TITRE)
    [#numero_cours #titre]
  }))
  v(0.5cm)
  line(length: 100%, stroke: 1pt)
  v(0.7cm)

  // Plateformes (cases à cocher)
  let connues = ("Teams", "Timdoc", "GitHub")
  let coches_norm = _normaliser_plateformes(plateformes)
    .map(s => if s in connues { s } else { s })
    .dedup()
  let items = if coches_norm.len() == 0 {
    connues.map(p => _case_a_cocher([#p], coche: false))
  } else {
    (connues + coches_norm).dedup().map(p => _case_a_cocher([#p], coche: p in coches_norm))
  }
  let nb_cols = calc.max(1, calc.min(4, if items.len() <= 4 { items.len() } else { calc.ceil(items.len() / 2) }))
  let bloc_plateformes = grid(columns: _colonnes_fr(nb_cols), gutter: 1.1em, ..items)

  // Tableau libellé / valeur (séparateur vertical unique)
  // On bâtit la liste des cellules puis on l'étend (..lignes) : un bloc
  // « if » passé comme argument formerait UNE seule cellule fusionnée.
  let lignes = ()
  lignes += (_cell_label([Nombre d’heures d’enseignement :]), _cell_valeur(heures))
  lignes += (_cell_label([Pondération :]), _cell_valeur(ponderation))
  lignes += (_cell_label([Programme :]), _cell_valeur(programme))
  if departement_programme != none {
    lignes += (_cell_label([Département du programme :]), _cell_valeur(departement_programme))
  }
  lignes += (_cell_label([Département de la professeure ou du professeur :]), _cell_valeur(departement_prof))
  lignes += (_cell_label([Session :]), _cell_valeur(session))
  if date_desinscription != none {
    let libelle = if date_desinscription_libelle != none {
      date_desinscription_libelle
    } else {
      "Date de désinscription"
    }
    lignes += (
      _cell_label([#libelle :]),
      _cell_valeur(date_desinscription),
    )
  }
  if date_abandon != none {
    let libelle = if date_abandon_libelle != none {
      date_abandon_libelle
    } else {
      "Date d'abandon du cours"
    }
    lignes += (
      _cell_label([#libelle :]),
      _cell_valeur(date_abandon),
    )
  }
  if professeurs != none and professeurs.len() > 0 {
    // Plusieurs profs : chaque champ liste l'info de chacun, une entrée
    // par ligne (pas de tableau imbriqué — il brise le layout).
    lignes += (_cell_label([Professeure ou professeur :]), _cell_valeur(_lignes_profs(professeurs, "nom")))
    lignes += (_cell_label([Courriel :]), _cell_valeur(_lignes_profs(professeurs, "courriel")))
    lignes += (_cell_label([Bureau :]), _cell_valeur(_lignes_profs(professeurs, "bureau")))
  } else {
    lignes += (_cell_label([Professeure ou professeur :]), _cell_valeur(profs))
    lignes += (_cell_label([Courriel :]), _cell_valeur(courriel))
    lignes += (_cell_label([Bureau :]), _cell_valeur(bureau))
  }
  lignes += (_cell_label([Plateforme(s) pédagogique(s) utilisée(s) :]), _cell_valeur(bloc_plateformes))
  lignes += (_cell_label([Coordination :]), _cell_valeur(coordination_nom))
  lignes += (
    _cell_label([Contact de la coordination :]),
    _cell_valeur(stack(spacing: 0.25em, coordination_courriel, [Bureau : #coordination_bureau])),
  )

  block(width: 100%)[
    // Interligne resserré dans le formulaire : INTERLIGNE (1.2em, pensé
    // pour le corps) crée un trou quand une valeur passe sur deux lignes
    // (ex. les courriels joints de plusieurs profs).
    #set par(leading: 0.55em)
    #table(
      // Colonne de gauche en fraction (pas « auto ») : les libellés
      // longs passent sur plusieurs lignes au lieu d'élargir la
      // colonne, et le tableau reste centré sur la largeur de la page.
      columns: (0.9fr, 1.1fr), align: (right, left), inset: 0pt,
      stroke: none,
      // Séparateur vertical unique entre libellés et valeurs (un dictionnaire
      // « stroke » avec left/right: none supprimerait aussi la ligne « x »).
      table.vline(x: 1, stroke: (paint: COULEUR_LIGNE, thickness: 1pt)),
      ..lignes
    )
  ]
}
