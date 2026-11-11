---
type: "webpage"
author: "Documentation Krita"
date: "2026"
title: "Krita — le panneau Courbes d'animation"
description: "La référence du panneau Courbes d'animation de Krita : animer l'opacité, la position, la rotation et l'échelle par interpolation — images clés scalaires et courbes de Bézier."
url: "https://docs.krita.org/fr/reference_manual/dockers/animation_curves.html"
tags:
  - "image"
  - "krita"
  - "animation"
  - "interpolation"
  - "tutoriel"
  - "cours"
status: "stable"
role: "cours"
---
<!-- start-replace-fm field="title" -->
# Krita — le panneau Courbes d'animation
<!-- end-replace-fm -->
<!-- start-replace-fm field="description" format="blockquote" -->
> La référence du panneau Courbes d'animation de Krita : animer l'opacité, la position, la rotation et l'échelle par interpolation — images clés scalaires et courbes de Bézier.
<!-- end-replace-fm -->

<!-- start-replace-mediagraphie-fiche -->
> **Référence** — Documentation Krita (2026). Krita — le panneau Courbes d'animation.. https://docs.krita.org/fr/reference_manual/dockers/animation_curves.html. [↗](https://docs.krita.org/fr/reference_manual/dockers/animation_curves.html)
>
> | **Type** | webpage |
> | **Auteur·e** | Documentation Krita |
> | **Date** | 2026 |
> | **Statut** | stable |
> | **Mots-clés** | image, krita, animation, interpolation, tutoriel, cours |

**Citation (copier-coller)**

```citation
Documentation Krita (2026). Krita — le panneau Courbes d'animation.. https://docs.krita.org/fr/reference_manual/dockers/animation_curves.html.
```
<!-- end-replace-mediagraphie-fiche -->

## Cité par

<!-- start-replace-mediagraphie-cited-by -->
- [Krita — l'animation 2D](../krita-animation-2d/)
- [Krita — la chronologie d'animation](../krita-animation-timeline/)
- [Krita — le panneau Pelures d'oignon](../krita-onion-skin/)
- [Krita — le panneau Storyboard](../krita-storyboard-docker/)
- [05](../../../../01-deroulement/05/)
- [Exercice — Titres et transitions](../../../../02-activites/02/exercices/06-titres-transitions/)
<!-- end-replace-mediagraphie-cited-by -->

---
> 🇫🇷 **Traduction française** de la page officielle [Animation Curves Docker](https://docs.krita.org/fr/reference_manual/dockers/animation_curves.html) — la page source n'est pas encore traduite. Adaptation : A26.

Le panneau **Courbes d'animation** (*Animation Curves*) permet d'animer la valeur de certaines propriétés dans le temps.

Pour animer un plan complexe, il est courant de vouloir animer des choses difficiles ou inefficaces à faire au dessin seul. Dans l'animation traditionnelle sur papier, dès les années 1920, on utilisait des éclairages spéciaux et des dispositifs comme la caméra multiplane pour des effets qui ont changé l'animation à jamais. De même, le panneau Courbes d'animation permet d'animer plus que les traits du canevas : l'**opacité** d'un calque, ou la **position, la rotation et l'échelle** d'un masque de transformation.

Comme presque tout se ramène à des valeurs numériques (l'opacité en pourcentage, la position d'un masque…), et que l'ordinateur est bon en calcul, on peut représenter l'évolution des valeurs dans le temps sur un graphe 2D. Mieux : on peut tracer des lignes et des courbes qui indiquent à l'ordinateur comment calculer les valeurs intermédiaires entre deux images clés — une technique appelée **interpolation** ou *tweening*.

## Vue d'ensemble

Le panneau se décompose en plusieurs zones :

- **Utilitaires** — à gauche de la barre d'outils : commandes de lecture (précédent, lecture/pause, arrêt, suivant), compteur d'images, contrôles de prévisualisation (vitesse, saut d'images), boutons d'ajout/suppression d'images clés scalaires, boutons de changement du mode d'interpolation et du mode de tangente de l'image clé sélectionnée, un champ pour fixer la valeur de l'image clé sélectionnée, et des boutons de zoom/navigation du graphe.
- **Réglages** — à droite de la barre d'outils : sous-menus pour les pelures d'oignon et des réglages qu'on définit une fois pour toutes (plage de lecture, cadence, mode autokey).
- **Liste des canaux** — les différents canaux du calque courant actuellement animés. Chaque canal a une couleur unique et sa visibilité dans le graphe se bascule par l'icône œil.
- **Graphe** — le grand graphique des valeurs et du temps. Une image clé ajoutée apparaît comme un cercle coloré : on la sélectionne, puis on change sa valeur en la faisant glisser verticalement ou en saisissant une valeur dans le champ de la barre d'outils. On change son temps en la faisant glisser horizontalement. Si l'image clé utilise une interpolation en courbe de Bézier, la sélectionner fait apparaître une ou plusieurs poignées qui modifient la forme de la courbe.

## Animer l'opacité

Depuis Krita 5, on peut animer l'opacité d'un calque et, à l'aide d'un masque de transformation, sa position, sa rotation, son échelle et son cisaillement.

> **AVERTISSEMENT** — Bien que le design soit proche de celui de la chronologie d'animation, le panneau Courbes d'animation peut sembler déroutant à la première ouverture, surtout sans expérience d'animation numérique.

Animons d'abord l'opacité d'un calque. On pense par exemple à un nuage de poussière qui se dissipe en devenant plus transparent, ou à un fantôme qui se matérialise. Ces effets sont difficiles à réussir au trait seul : c'est exactement là que le panneau Courbes d'animation aide.

1. Sélectionner le calque dont on veut animer l'opacité.
2. Choisir le temps de départ en cliquant dans l'en-tête de temps en haut du graphe (on peut cliquer-glisser pour « parcourir » l'animation).
3. Créer une première **image clé scalaire** avec le bouton d'ajout de la barre de titre. Un canal *opacity* apparaît dans la liste des canaux, avec sa couleur, et une image clé apparaît dans le graphe au temps actif.
4. Changer le temps actif, puis ajouter une seconde image clé. Une ligne droite relie les deux.
5. Avec le temps actif sur la nouvelle image clé, le curseur d'opacité du panneau Calques déplace l'image clé vers le haut ou le bas — et inversement.
6. Lire : l'opacité du calque s'anime dans le temps.

> **AVERTISSEMENT** — Contrairement aux méthodes classiques, animer par courbes peut changer les valeurs à **chaque image** de l'animation. Cela peut être plus exigeant pour la machine et rallonger la mise en cache, qui calcule et stocke chaque image.

Avant de continuer, remplaçons la ligne droite par une **courbe d'interpolation** pour changer le rythme et le ressenti. Sélectionner la première image clé et cliquer sur le bouton d'interpolation en courbe de Bézier : l'image clé devient un cercle creux, une **poignée** que l'on fait glisser pour modifier l'arc de la courbe. On peut aussi revenir à une ligne (interpolation linéaire) ou désactiver l'interpolation (constante), ce qui fait sauter les valeurs d'une image clé à l'autre.

> **NOTE** — Toujours savoir quelle image est active (ligne verticale surlignée dans le graphe) : l'image clé qui change lors d'un ajustement ailleurs dépend du temps actif.

## Animer un masque de transformation

Pour animer la position, la rotation, l'échelle et le cisaillement d'un calque (effets de *tweening*), il faut d'abord ajouter un **masque de transformation** (clic droit sur le calque → **Ajouter ‣ Masque de transformation**).

Les masques de transformation transforment le calque auquel ils sont attachés (translation, rotation, échelle, cisaillement) sans modifier sa position d'origine, et depuis Krita 5, ils permettent d'animer cette transformation.

Comme pour l'opacité, on ajoute une première image clé de transformation (le masque sélectionné, bouton d'ajout en haut du panneau). Une série de canaux apparaît alors.

> **AVERTISSEMENT** — En Krita 5.0, on ne peut animer directement que la **courbe d'opacité** d'un calque. Pour animer position, rotation, échelle et cisaillement, il faut attacher un masque de transformation et l'animer. Le panneau ajoute donc automatiquement des images clés d'opacité pour un calque de peinture, et des images clés de transformation pour un masque. Toujours vérifier le type d'élément sélectionné !

On peut éditer les images clés directement dans le graphe, mais il est souvent plus intuitif de le faire sur le canevas : en utilisant l'outil de transformation sur le masque, les images clés de chaque canal bougent dans le graphe pour refléter les changements.

> **ASTUCE** — Animer un masque de transformation crée beaucoup de canaux ; on peut n'en afficher que quelques-uns. Masquer et isoler des canaux facilite l'édition, d'autant qu'on peut utiliser les boutons « zoom sur le canal » et « zoom sur la courbe » pour ajuster la vue. Naviguer en cliquant-glissant sur les barres de défilement zoomables et l'en-tête des valeurs aide aussi beaucoup.

Enfin, changer de temps, ajouter une autre image clé, et utiliser de nouveau l'outil de transformation sur le même masque. Lire : le calque a un masque de transformation animé.

## Commandes

- **Liste des canaux** : icône œil pour afficher/masquer ; `Maj` + icône œil pour isoler ; clic droit pour le menu contextuel du calque/canal (dont *Réinitialiser le(s) canal(aux)*).
- **Graphe** : clic pour sélectionner une image clé ; clic + glisser pour déplacer l'image/les images ; double-clic pour sélectionner toutes les images clés au même temps ; `Alt` + double-clic pour toutes les images clés d'un canal ; `Espace` + glisser pour déplacer la vue ; `Espace` + glisser pour zoomer.
- **En-tête de temps** : clic pour se placer au temps et sélectionner l'image du calque actif ; clic + glisser pour parcourir le temps.
- **En-tête des valeurs** : clic + glisser pour zoomer ; `Espace` + clic + glisser pour déplacer la vue.

> **VOIR AUSSI** — [La chronologie d'animation](../krita-animation-timeline/) · [Les pelures d'oignon](../krita-onion-skin/) · [Le panneau Storyboard](../krita-storyboard-docker/) · [Krita — l'animation 2D](../krita-animation-2d/)
