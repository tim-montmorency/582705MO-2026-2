# plan-de-cours-typ

Gabarit Typst du **plan de cours** pour le Cégep Montmorency (TIM).
Il produit un PDF (`00-plan-de-cours/plan-de-cours.pdf`) à partir d'une seule source de
vérité partagée avec le site Docsify.

## Source unique de vérité

Le contenu est défini **une fois** et réutilisé pour le site et le PDF :

- `variable_expansion.toml` (à la racine du dépôt) — métadonnées du cours
  (numéro, titre, heures, prof, etc.). Lu directement par Typst via `toml()`.
- `00-plan-de-cours/README.md` (à la racine du dépôt) — le corps du plan
  (sections Présentation, Contexte, Matériel, Évaluations…). `docsh run`
  y injecte les variables avant la compilation.

Aucune donnée n'est dupliquée : la page couverture vient du TOML, le corps
vient du Markdown.

## Structure

| Fichier | Rôle |
| --- | --- |
| `plan-de-cours.typ` | **Point d'entrée (gabarit)**. Copiable / déplaçable où vous voulez ; docsh compile le PDF dans le même dossier. |
| `00-plan-de-cours/plan-de-cours.typ` | **Point d'entrée actif** (compilé en PDF par `docsh typst` dans `00-plan-de-cours/`). |
| `_lib.typ` | Façade stable : réexporte `plan_de_cours` et `charger_plan`. |
| `_template.typ` | La fonction `plan_de_cours` (show rule) : mise en page globale. |
| `_cover.typ` | La page couverture (formulaire + plateformes cochées). |
| `_loader.typ` | Lit le TOML + rend le Markdown en contenu Typst. |
| `_typography.typ` | Source de vérité typographique (polices, tailles, couleurs). |
| `_utils.typ` | Helpers réutilisables (cases à cocher, jointures…). |
| `fonts/` | Polices vendues (Geist + Inter Tight + Noto Color Emoji, SIL OFL 1.1). |
| `assets/cm_logo.png` | Logo du Collège. |

> **Convention docsh** : les fichiers partiels sont préfixés par `_`
> (ils ne sont **jamais** compilés seuls en PDF). Seuls les `*.typ` sans
> préfixe sont des points d'entrée.

## Compiler

### Via docsh (recommandé)

```sh
docsh run      # ou : docsh typst
```

`docsh` compile **chaque** fichier `*.typ` (point d'entrée, hors fichiers
préfixés par `_`) qu'il découvre dans le dépôt et produit un PDF nommé
`<stem>.pdf` **dans le même dossier** que le `.typ`. Il découvre aussi
automatiquement le dossier `fonts/` (`--font-path`) et définit `--root` sur
la racine du dépôt.

> Le PDF est donc généré à l'endroit où se trouve le point d'entrée. Pour
> produire le PDF dans `00-plan-de-cours/`, placez-y `plan-de-cours.typ`
> (c'est le cas présent). Pour le produire ailleurs, copiez /
> déplacez simplement `plan-de-cours.typ` dans le dossier voulu.

### Directement avec Typst

```sh
typst compile --font-path plan-de-cours-typ/fonts --root . <chemin>/plan-de-cours.typ
```

`--root .` est **obligatoire** : le gabarit lit `variable_expansion.toml`
et `00-plan-de-cours/README.md` à la racine du dépôt (chemins relatifs
résolus depuis `plan-de-cours-typ/`, où vivent les partials), quel que soit
l'endroit où se trouve le point d'entrée.

## Personnaliser

Le point d'entrée assemble le document ainsi (l'import est relatif aux
partials, situés dans `plan-de-cours-typ/`) :

```typst
#import "../plan-de-cours-typ/_lib.typ": plan_de_cours, charger_plan   // si le .typ est hors de plan-de-cours-typ/
// #import "_lib.typ": plan_de_cours, charger_plan                      // si le .typ est dans plan-de-cours-typ/

#let (meta, body) = charger_plan(parent: "../")
#show: plan_de_cours.with(..meta)
#body
```

`plan_de_cours.with(..)` accepte tous les champs de la couverture
(`numero_cours`, `titre`, `heures`, `ponderation`, `session`, `profs`,
`courriel`, `bureau`, `plateformes`, `coordination_*`, `logo`…). Ils sont
remplis automatiquement depuis le TOML ; on peut les surcharger au besoin.

## Bonnes pratiques

- **Polices vendues**, pas de dépendance aux polices système → rendu
  identique sur toutes les machines (Geist pour le corps, Inter Tight pour
  les titres).
- **Une seule source** : jamais de valeur saisie en double dans le TOML et
  le Markdown.
- **Partials `_`** : garder la logique atomisée, un seul point d'entrée.
- **Saut de page depuis le Markdown** : insérer `<!-- typst:pagebreak -->`
  à l'endroit voulu dans `00-plan-de-cours/README.md`.
- **Encadrés (callouts)** : les alertes GitHub (`> [!NOTE]`, `> [!TIP]`,
  `> [!WARNING]`, `> [!IMPORTANT]`, `> [!CAUTION]`) sont reconnues et
  rendues comme des boîtes colorées (bordure + fond typés, sans le mot-clé
  de l'alerte). Le Markdown à l'intérieur reste interprété normalement.

## Licences

- Polices : SIL Open Font License 1.1 (voir `fonts/*/OFL.txt`).
- Logo : propriété du Cégep Montmorency.
