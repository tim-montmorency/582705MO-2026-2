---
title: "Exercice — Coloriser un crayonné"
description: "Du crayonné aux aplats : préparer le trait, puis le masque de coloration — le flux signature de Krita."
tags:
  - "image"
  - "couleur"
  - "colorisation"
---

# Exercice — Coloriser un crayonné

> **Concept** : peindre **sous** le dessin au trait — préparer le trait, puis laisser le masque de coloration poser les aplats. Le flux signature de Krita.

Un crayonné (papier scanné ou numérique) se transforme en illustration colorée sans jamais toucher au trait. Ce flux complète les exercices de [détourage](../01-detourage/) et de [photomontage](../02-photomontage/) : la couleur s'organise par calques **sous** le trait, non-destructive de bout en bout.

**Pourquoi ?** La colorisation est le pont entre le dessin et l'illustration : BD, concept art, illustration éditoriale.

## Documentation

Lire la documentation **avant de commencer** — le concept passe avant l'outil.

| Documentation | Support | Langue |
|---|---|---|
| <!-- start-replace-cite key="tutoriels/krita/rattus-librorum/rattus-yt-dessin-scanne" -->[Tuto – Colorier un dessin scanné (Krita - Initié)](../../../../05-mediagraphie/tutoriels/krita/rattus-librorum/rattus-yt-dessin-scanne/ "Colorier un dessin scanné : préparer le trait et colorier par-dessus. Durée : 4 min 47 s.")<!-- end-replace-cite --> | Krita (vidéo 4 min) | FR |
| <!-- start-replace-cite key="tutoriels/krita/krita-flux-travail" -->[Krita — les flux de travail courants](../../../../05-mediagraphie/tutoriels/krita/krita-flux-travail/ "Le tutoriel officiel des flux de travail courants : du nouveau document à l'export — les chaînes de gestes que les illustrateurs répètent à chaque projet.")<!-- end-replace-cite --> | Krita | FR |
| <!-- start-replace-cite key="tutoriels/krita/krita-calques-masques" -->[Krita — calques et masques](../../../../05-mediagraphie/tutoriels/krita/krita-calques-masques/ "Le chapitre du manuel Krita sur les calques et les masques : types de calques, composition, masques de transparence, travail non destructif.")<!-- end-replace-cite --> | Krita | FR |
| <!-- start-replace-cite key="tutoriels/krita/krita-filtres" -->[Krita — les filtres](../../../../05-mediagraphie/tutoriels/krita/krita-filtres/ "La référence des filtres de Krita : flous, corrections colorimétriques, déformations, effets — appliqués en destructif ou par calque de filtre.")<!-- end-replace-cite --> | Krita | FR |

## Autovalidation

- [ ] Le trait est préparé : mode Multiplier, niveaux nettoyés, Couleur vers alpha appliqué
- [ ] Les aplats sont posés sous le trait (bloc, remplissage étendu ou masque de coloration)
- [ ] Le masque de coloration est édité (coups de pinceau → Update) puis converti en calque de peinture
- [ ] Ombres et reflets posés sur des calques entre les aplats et le trait (Multiplier / Diviser)
- [ ] Export PNG/WebP avec le trait visible, déposé dans le journal
- [ ] Documenté au [journal de bord](../../../../07-journal-de-bord/) : l'état du trait avant/après préparation, le masque en cours d'édition, problème → solution.

## Pour aller plus loin (optionnel)

- **Encrer son crayonné** : posture et stabilisateur, les préréglages *ink_tilt* / *ink_gpen_25* — voir la fiche [Krita — l'encrage](../../../../05-mediagraphie/tutoriels/krita/krita-encrage/) : le crayonné papier peut être encré numériquement avant la colorisation.
- Le calque de trait peut vivre en **niveaux de gris** : espace de couleur par calque, une particularité de Krita qui allège le fichier.

## Journal de bord

Documenter : l'état du trait avant/après préparation (captures), le masque de coloration en cours d'édition, les problèmes rencontrés (trait non fermé et débordement de remplissage ?) et leurs solutions.
