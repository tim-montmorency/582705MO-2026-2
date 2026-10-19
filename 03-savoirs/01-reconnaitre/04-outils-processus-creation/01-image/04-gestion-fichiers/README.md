---
title: "Gestion des fichiers — nommer, classer, sauvegarder"
description: "Nommer selon les règles, classer dans l'arborescence, versionner avec des dates, sauvegarder en deux copies."
tags:
  - "image"
  - "processus"
---

# Gestion des fichiers — nommer, classer, sauvegarder

> Nommer selon les règles, classer dans l'arborescence, versionner avec des dates, sauvegarder en deux copies.

Les étapes communes à tous les types d'image, détaillées par le savoir
[Nommer, classer, sauvegarder](../../../../02-utiliser/07-sauvegarde-archivage/01-arborescence-et-copies/) :

- **Le fichier source garde le travail** : le XCF (calques, masques,
  chemins), le SVG (courbes) et le SLA (la mise en page) — on exporte
  des versions, on ne détruit jamais la source.
- **Nommer** selon les [règles d'identification](../../../../../00-plan-de-cours/) :
  `nom-de-famille_prénom_identification-du-travail_cours`, sans espaces
  ni accents.
- **Classer** dans l'arborescence du projet : `sources/`, `projet/`,
  `exports/`, `images/`.
- **Versionner** avec des dates : `affiche-v1-2026-09-09.png` — jamais
  de « final2 définitif ».
- **Sauvegarder** : deux copies, deux endroits (dépôt Codeberg + disque
  local ou externe).
- **Exporter dans les formats ouverts** : PNG, WebP, SVG, PDF — les
  critères détaillés vivent sur la page [Critères de qualité — image](../../../03-criteres-qualite-fichiers/01-image/).

Exemple d'arborescence du TP1 :

```
tp1-image/
├── sources/
│   ├── photo-portrait.jpg          ← la prise de vue
│   └── ciel-cc0.webp               ← ressource libre téléchargée
├── projet/
│   ├── affiche.xcf                 ← le photomontage (calques + masques)
│   ├── logo.svg                    ← le logo vectoriel
│   └── affiche.sla                 ← la mise en page
├── exports/
│   ├── affiche-v1-2026-09-09.png
│   ├── affiche-v2-2026-09-16.png
│   └── logo-32px.png
├── images/
│   └── capture-niveaux.png         ← pour le journal de bord
└── README.md                       ← le journal documente tout
```

Deux exemples de bout en bout :

- **Photomontage (matriciel)** — `photo-portrait.jpg` (téléphone)
  retouchée et montée dans GIMP → `affiche.xcf` dans `projet/` → export
  `arseneault_guillaume_tp1-photomontage_582705MO.png` (1920×1080)
  dans `exports/` → copie sur le dépôt Codeberg.
- **Logo (vectoriel)** — croquis papier repris dans Inkscape →
  `logo.svg` dans `projet/` → exports
  `arseneault_guillaume_tp1-logo_582705MO.svg` et `logo-32px.png` dans
  `exports/` → copie sur le dépôt Codeberg.
