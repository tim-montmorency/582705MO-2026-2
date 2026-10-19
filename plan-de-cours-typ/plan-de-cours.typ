// ── Plan de cours — point d'entrée (gabarit) ─────────────────────────
//
// Ce fichier est le POINT D'ENTRÉE du gabarit. Il peut être copié /
// déplacé où vous le souhaitez dans le dépôt ; docsh compilera alors le
// PDF dans le même dossier que ce fichier.
//
// Exemples :
//   - ici, dans plan-de-cours-typ/  → produit plan-de-cours-typ/plan-de-cours.pdf
//   - dans 00-plan-de-cours/        → produit 00-plan-de-cours/plan-de-cours.pdf
//
// Compiler avec docsh (recommandé, découvre les polices et le --root) :
//   docsh run
//   docsh typst
//
// Ou directement avec Typst (depuis la racine du dépôt) :
//   typst compile --font-path plan-de-cours-typ/fonts --root . <chemin>/plan-de-cours.typ
//
// Source unique de vérité :
//   variable_expansion.toml → docsh run → Markdown → PDF
//   (métadonnées lues du TOML, corps lu de 00-plan-de-cours/README.md)

#import "_lib.typ": plan_de_cours, charger_plan

#let (meta, body) = charger_plan(parent: "../")
#show: plan_de_cours.with(..meta)
#body
