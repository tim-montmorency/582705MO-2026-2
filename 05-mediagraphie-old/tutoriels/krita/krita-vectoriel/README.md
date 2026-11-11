---
type: "webpage"
author: "Documentation Krita"
date: "2026"
title: "Krita — le graphisme vectoriel"
description: "Le chapitre du manuel Krita sur le graphisme vectoriel : calques vectoriels, formes de base, courbes de Bézier, opérations booléennes et texte — dessiner un logo net et rééditable."
url: "https://docs.krita.org/fr/user_manual/vector_graphics.html"
tags:
  - "image"
  - "krita"
  - "vectoriel"
  - "svg"
  - "forme"
  - "texte"
  - "tutoriel"
status: "stable"
role: "cours"
---
<!-- start-replace-fm field="title" -->
# Krita — le graphisme vectoriel
<!-- end-replace-fm -->
<!-- start-replace-fm field="description" format="blockquote" -->
> Le chapitre du manuel Krita sur le graphisme vectoriel : calques vectoriels, formes de base, courbes de Bézier, opérations booléennes et texte — dessiner un logo net et rééditable.
<!-- end-replace-fm -->

<!-- start-replace-mediagraphie-fiche -->
> **Référence** — Documentation Krita (2026). Krita — le graphisme vectoriel.. https://docs.krita.org/fr/user_manual/vector_graphics.html. [↗](https://docs.krita.org/fr/user_manual/vector_graphics.html)
>
> | **Type** | webpage |
> | **Auteur·e** | Documentation Krita |
> | **Date** | 2026 |
> | **Statut** | stable |
> | **Mots-clés** | image, krita, vectoriel, svg, forme, texte, tutoriel |

**Citation (copier-coller)**

```citation
Documentation Krita (2026). Krita — le graphisme vectoriel.. https://docs.krita.org/fr/user_manual/vector_graphics.html.
```
<!-- end-replace-mediagraphie-fiche -->

## Cité par

<!-- start-replace-mediagraphie-cited-by -->
- [Krita — les masques de gamut](../krita-masques-gamut/)
- [Krita — concepts de base](../krita-premiers-pas/)
- [Krita — les sélections](../krita-selections/)
- [Exercice — Logo vectoriel](../../../../02-activites/01/exercices/04-logo-vectoriel/)
- [Exercice — Composition d'une affiche](../../../../02-activites/01/exercices/05-affiche-composition/)
- [Vectoriel — courbes et évolutivité](../../../../03-savoirs/01-reconnaitre/03-criteres-qualite-fichiers/01-image/02-vectoriel/)
<!-- end-replace-mediagraphie-cited-by -->

---
> 🇫🇷 **Traduction française** de la page officielle [Vector Graphics](https://docs.krita.org/fr/user_manual/vector_graphics.html) — la page source n'est pas encore traduite. Adaptation : A26.

## Qu'est-ce que le graphisme vectoriel ?

Krita est avant tout un outil d'édition d'images matricielles : la plupart des modifications changent les valeurs des pixels de la grille qui compose l'image.

Le graphisme vectoriel, lui, décrit la forme par les mathématiques. Comme il passe par une formule, il peut être redimensionné à n'importe quelle taille.

![Le matriciel : une grille de pixels.](images/Pixels-brushstroke.png)

D'un côté, cela rend le vectoriel idéal pour les logos et les bannières. De l'autre, le matriciel est bien plus facile à retoucher : le vectoriel reste le domaine du dessin délibéré, qui demande beaucoup de précision.

## Les outils pour créer des formes

On commence en créant un **calque vectoriel** (cliquer la flèche à côté du **+** du panneau Calques pour voir les autres types de calques). Ensuite, tous les outils de dessin habituels — sauf l'outil à main levée, l'outil dynamique et le multi-pinceau — peuvent servir à tracer des formes.

Les outils **Traceur** et **Polyligne** sont les plus utilisés sur un calque vectoriel : ils permettent les formes les plus libres.

Les outils **Ellipse** et **Rectangle** tracent des formes spéciales, éditables ensuite en secteurs ou en rectangles arrondis faciles.

L'outil calligraphie et l'outil texte produisent aussi des vecteurs : la calligraphie pour des traits proches des coups de pinceau, le texte pour un objet texte éditable par la suite.

Tous utilisent la taille de pinceau courante pour l'épaisseur du trait, ainsi que les couleurs d'avant-plan et d'arrière-plan courantes.

Une dernière façon de créer des vecteurs : l'outil **Image vectorielle**, qui ajoute des formes définies dans un fichier SVG comme symboles. Contrairement aux autres outils, elles ont leur propre remplissage et leur propre contour.

## Organiser les formes

Un calque vectoriel a sa propre hiérarchie de formes, comme l'image entière a la sienne en calques : les formes peuvent passer devant ou derrière les unes les autres. Cela se règle dans le panneau **Organiser** ou avec l'outil **Sélection de formes**.

Le panneau **Organiser** permet aussi de grouper et de dégrouper les formes, et de les aligner précisément — au centre, ou avec un espacement régulier entre toutes.

## Éditer les formes

L'édition se fait avec l'outil **Sélection de formes** et l'outil **Édition de formes**.

**Sélection de formes** permet de sélectionner les formes vectorielles, de les grouper (clic droit), de les dégrouper, de combiner ou de soustraire les formes entre elles par opérations booléennes (clic droit), de les déplacer, ou de les transformer rapidement.

## Remplissage

On change le remplissage d'une forme en la sélectionnant et en modifiant la couleur d'avant-plan courante.

On peut aussi passer par l'onglet **Remplissage** des options de l'outil **Sélection de formes**. Une forme vectorielle se remplit d'une couleur unie, d'un dégradé ou d'un motif.

## Contour

Les contours acceptent les mêmes remplissages que les formes.

On peut en plus les modifier davantage : ajouter des tirets et des marqueurs à la ligne, par exemple.

## Coordonnées

Les formes se déplacent avec l'outil **Sélection de formes** ; dans les options de l'outil, on peut saisir les coordonnées exactes.

## Éditer les nœuds et les paramètres spéciaux

Double-cliquer une forme sélectionnée ouvre l'outil d'édition approprié — **Édition de formes** en général, **Texte** pour le texte.

Dans l'outil **Édition de formes**, on déplace les nœuds sur la zone de dessin pour les chemins ordinaires. Pour les chemins spéciaux — ellipse, rectangle —, on déplace les nœuds et on édite les paramètres spécifiques dans le panneau **Options d'outil**.

## Travailler avec les autres logiciels

Un des grands apports de Krita 4.0 : le passage du format ODG au format **SVG**. Concrètement, Krita enregistre du SVG à l'intérieur de ses fichiers KRA, et ouvre donc très bien le SVG — important, car SVG est le format vectoriel le plus répandu.

### Inkscape

On peut copier-coller des vecteurs de Krita vers Inkscape, et inversement. Seules les fonctionnalités SVG 1.1 sont prises en charge, à l'exception de quelques petites fonctions comme les dégradés maillés.
