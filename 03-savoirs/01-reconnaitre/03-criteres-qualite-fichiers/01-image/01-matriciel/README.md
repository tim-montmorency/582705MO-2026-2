---
title: "Matriciel — résolution et compression"
description: "Résolution native de la composition, JPG/PNG/WebP moins de 10 Mo, netteté et compression."
tags:
  - "image"
  - "formats"
---

# Matriciel — résolution et compression

> Résolution native de la composition, JPG/PNG/WebP moins de 10 Mo.

Une image matricielle est une **grille de pixels** : chaque pixel porte
une couleur. La **résolution** — largeur × hauteur — est le nombre de
pixels : 1920×1080, c'est 2 millions de pixels, pas un de plus. Elle se
**fixe à la création** du document et ne s'invente jamais après coup.
Le **ratio** — le rapport largeur : hauteur (16:9 pour l'écran) — se
**recadre**, il ne s'étire pas : étirer, c'est déformer.

La **compression** réduit le poids du fichier. **Sans perte** (PNG),
l'original revient à l'identique. **Avec perte** (JPG, WebP lossy), du
détail est jeté pour alléger — définitivement : à force de
ré-enregistrements, les artefacts s'accumulent (blocs, contours
crantés, couleurs qui bavent).

Après rouge, vert et bleu, le **canal alpha** dit l'opacité de chaque
pixel. PNG et WebP le portent — pas le JPG : impossible de détourer en
JPG.

L'**encodage** est le passage de la grille de pixels au fichier : c'est
le **dernier geste** — la résolution, l'alpha, l'espace de couleur s'y
figent définitivement.

- **Résolution de destination** : la résolution **native** de la
  composition — penser en pixels dès la création du document, l'export
  ne redimensionne pas.
- **Redimensionner sans dégrader** : partir de la plus grande taille et
  réduire ; agrandir un petit fichier pixelise.
- **Netteté** : la perception des contours fins — résolution et piqué.
  Elle se prend à la capture, se préserve à l'export, **ne s'invente
  jamais**.
- **Formats** : PNG (sans perte, alpha), JPG (avec perte, photos), WebP
  (au choix, le web) ; le KRA garde les calques et les masques — source
  jamais détruite
  (<!-- start-replace-cite key="tutoriels/krita/krita-formats-fichiers" -->[Krita — les formats de fichiers](../../../../../05-mediagraphie/tutoriels/krita/krita-formats-fichiers/ "Le chapitre du manuel Krita sur les formats de fichiers : compression, métadonnées, ouverture — formats de travail (.kra, .ora, .exr) contre formats de diffusi…")<!-- end-replace-cite -->).
- **Couleur** : RVB pour l'écran.
