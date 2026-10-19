// ── Plan de cours — point d'entrée (généré dans 00-plan-de-cours/) ──
//
// Compilez depuis la racine du dépôt avec :
//   typst compile --font-path plan-de-cours-typ/fonts --root . 00-plan-de-cours/plan-de-cours.typ
//
// Source unique de vérité :
//   variable_expansion.toml → docsh run → Markdown → PDF
//   (métadonnées lues du TOML, corps lu de 00-plan-de-cours/README.md)

#import "../plan-de-cours-typ/_lib.typ": plan_de_cours, charger_plan

#let (meta, body) = charger_plan(parent: "../")
#show: plan_de_cours.with(..meta)
#body
