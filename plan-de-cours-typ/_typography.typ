// _typography.typ — source de vérité (polices + réglages typographiques)
//
// Polices vendues dans `fonts/` (Geist + Inter Tight, SIL OFL 1.1).
// Compiler avec : `typst compile --font-path plan-de-cours-typ/fonts --root . 00-plan-de-cours/plan-de-cours.typ`
// (ou simplement `docsh run` / `docsh typst`).
//
// Les noms doivent correspondre aux noms internes des TTF.

// Familles
#let FONT_CORPS = "Geist"
#let FONT_TITRES = "Inter Tight"

// Réglages globaux
#let INTERLETTRE = 0pt
#let TAILLE_CORPS = 11pt
#let INTERLIGNE = 1.2em
#let POIDS_TITRES = "semibold"

// Couleurs (normes graphiques Collège Montmorency)
#let COULEUR_TITRE = rgb("#002768")
#let COULEUR_LIGNE = rgb("#7f93b3")
