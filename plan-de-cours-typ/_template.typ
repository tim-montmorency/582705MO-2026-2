// _template.typ — gabarit de plan de cours (Cégep Montmorency)
//
// Styling inspiré de momo-typst (tim-montmorency/momo-typst), simplifié :
//   - une seule page couverture (formulaire)
//   - le corps est le Markdown du site Docsify (variables déjà injectées)
//
// Polices : Geist (corps) + Inter Tight (titres)
// Format  : US Letter paysage (11in × 8.5in), marges 2.2cm

#import "_cover.typ": page_couverture
#import "_typography.typ": FONT_CORPS, FONT_TITRES, INTERLETTRE, TAILLE_CORPS, INTERLIGNE, POIDS_TITRES, COULEUR_TITRE, COULEUR_LIGNE

#let plan_de_cours(
  // Page couverture
  logo: "assets/cm_logo.png",
  numero_cours: "582 XXX MO",
  titre: "Nom du cours",
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

  // Corps du document (fourni par #show:)
  body,
) = {
  // Métadonnées PDF (lisibles dans Aperçu / propriétés)
  set document(title: numero_cours + " " + titre)

  // ── Page 1 : couverture (formulaire) ────────────────────────────────
  page_couverture(
    logo: logo,
    numero_cours: numero_cours,
    titre: titre,
    heures: heures,
    ponderation: ponderation,
    programme: programme,
    departement_programme: departement_programme,
    departement_prof: departement_prof,
    session: session,
    date_desinscription: date_desinscription,
    date_desinscription_libelle: date_desinscription_libelle,
    date_abandon: date_abandon,
    date_abandon_libelle: date_abandon_libelle,
    profs: profs,
    courriel: courriel,
    bureau: bureau,
    professeurs: professeurs,
    plateformes: plateformes,
    coordination_nom: coordination_nom,
    coordination_courriel: coordination_courriel,
    coordination_bureau: coordination_bureau,
  )

  pagebreak()

  // ── Pages suivantes : corps du plan de cours ────────────────────────
  set page(
    width: 11in, height: 8.5in,
    margin: (x: 2.2cm, y: 2.2cm),
    numbering: "1",
    footer: context { align(right)[#counter(page).display("1")] },
  )
  set text(font: FONT_CORPS, tracking: INTERLETTRE, TAILLE_CORPS)
  set par(justify: false, leading: INTERLIGNE)
  set heading(numbering: none)
  set table(stroke: (paint: COULEUR_LIGNE))

  // Rangées insécables : une rangée de tableau n'est jamais coupée
  // entre deux pages — si elle ne tient pas dans l'espace restant,
  // elle passe entière à la page suivante (l'en-tête, généré par
  // cmarker via `table.header`, se répète automatiquement).
  // Limite : une rangée plus haute qu'une page entière déborderait.
  // NB : la forme show-set est requise — un `set` dans une fermeture
  // `show table: it => { …; it }` ne s'applique pas au contenu `it`.
  show table: set table.cell(breakable: false)

  // H1 — titre de cours (centré)
  show heading.where(level: 1): it => block({
    set par(leading: 1em)
    set text(font: FONT_TITRES, tracking: INTERLETTRE, 22pt, weight: POIDS_TITRES, fill: COULEUR_TITRE)
    it
    v(0.8em)
  })
  // H2 — sections principales
  show heading.where(level: 2): it => block({
    set par(leading: 1em)
    set text(font: FONT_TITRES, tracking: INTERLETTRE, 16pt, weight: POIDS_TITRES, fill: COULEUR_TITRE)
    it.body
    v(0.8em)
  })
  // H3 — sous-sections
  show heading.where(level: 3): it => block({
    set par(leading: 1.1em)
    set text(font: FONT_TITRES, tracking: INTERLETTRE, 13pt, weight: POIDS_TITRES, fill: COULEUR_TITRE)
    it.body
    v(0.5em)
  })

  body
}
