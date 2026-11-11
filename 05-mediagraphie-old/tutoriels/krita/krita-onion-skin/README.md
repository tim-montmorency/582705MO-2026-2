---
type: "webpage"
author: "Documentation Krita"
date: "2026"
title: "Krita — le panneau Pelures d'oignon"
description: "La référence du panneau Pelures d'oignon de Krita : voir les trames voisines pour animer, régler leur nombre, leur opacité et leurs couleurs."
url: "https://docs.krita.org/fr/reference_manual/dockers/onion_skin.html"
tags:
  - "image"
  - "krita"
  - "animation"
  - "tutoriel"
  - "cours"
status: "stable"
role: "cours"
---
<!-- start-replace-fm field="title" -->
# Krita — le panneau Pelures d'oignon
<!-- end-replace-fm -->
<!-- start-replace-fm field="description" format="blockquote" -->
> La référence du panneau Pelures d'oignon de Krita : voir les trames voisines pour animer, régler leur nombre, leur opacité et leurs couleurs.
<!-- end-replace-fm -->

<!-- start-replace-mediagraphie-fiche -->
> **Référence** — Documentation Krita (2026). Krita — le panneau Pelures d'oignon.. https://docs.krita.org/fr/reference_manual/dockers/onion_skin.html. [↗](https://docs.krita.org/fr/reference_manual/dockers/onion_skin.html)
>
> | **Type** | webpage |
> | **Auteur·e** | Documentation Krita |
> | **Date** | 2026 |
> | **Statut** | stable |
> | **Mots-clés** | image, krita, animation, tutoriel, cours |

**Citation (copier-coller)**

```citation
Documentation Krita (2026). Krita — le panneau Pelures d'oignon.. https://docs.krita.org/fr/reference_manual/dockers/onion_skin.html.
```
<!-- end-replace-mediagraphie-fiche -->

## Cité par

<!-- start-replace-mediagraphie-cited-by -->
- [Krita — l'animation 2D](../krita-animation-2d/)
- [Krita — le panneau Courbes d'animation](../krita-animation-curves/)
- [Krita — la chronologie d'animation](../krita-animation-timeline/)
- [Krita — le panneau Storyboard](../krita-storyboard-docker/)
- [05](../../../../01-deroulement/05/)
- [Exercice — La brique qui tombe](../../../../02-activites/02/exercices/03-brique-qui-tombe/)
- [Exercice — La tête qui se tourne](../../../../02-activites/02/exercices/05-tete-qui-se-tourne/)
- [Exercice — Le sac de farine](../../../../02-activites/02/exercices/07-sac-de-farine/)
- [Exercice — Le cycle de marche](../../../../02-activites/02/exercices/08-cycle-de-marche/)
- [Exercice — Le changement d'émotion](../../../../02-activites/02/exercices/09-changement-emotion/)
- [Exercice — Lever une charge](../../../../02-activites/02/exercices/10-lever-une-charge/)
- [Exercice — Montage simple](../../../../02-activites/02/exercices/12-montage-simple/)
- [Exercice — Le cycle de course](../../../../02-activites/02/exercices/14-cycle-de-course/)
<!-- end-replace-mediagraphie-cited-by -->

---
> 🇫🇷 **Traduction française** de la page officielle [Onion Skin Docker](https://docs.krita.org/fr/reference_manual/dockers/onion_skin.html) — adaptation A26 à partir de la page source partiellement traduite.

Les **pelures d'oignon** (*onion skin*) facilitent l'animation : elles affichent en même temps la trame suivante et la trame précédente, empilées au-dessus de la trame courante. Ces images voisines sont généralement colorées ou teintées pour se distinguer.

On les active en cliquant sur l'icône en forme d'ampoule du calque animé — un calque qui possède des trames et qui n'est pas totalement opaque. Attention : Krita considère le **blanc comme une couleur**, pas comme de la transparence. Ne pas animer sur un calque opaque si l'on veut des pelures d'oignon lisibles.

> **Modifié en 4.2** — Depuis Krita 4.2, les pelures d'oignon sont désactivées pour les calques dont les pixels par défaut sont totalement opaques (par exemple un arrière-plan tramé). Pour animer avec des pelures d'oignon, mieux vaut créer un nouveau calque transparent plutôt que d'utiliser un tel arrière-plan.

Le nom « pelure d'oignon » vient du fait que les pelures d'oignon sont semi-transparentes. En animation classique, les animateurs dessinaient leurs premières poses sur du papier semi-transparent posé sur une **table lumineuse** : les images clés étaient placées sous la trame en cours, et la lumière faisait apparaître leurs contours pour les retrouver. Les pelures d'oignon sont l'équivalent numérique de ce procédé — très utile pour réaliser une animation.

## Réglages

- Le curseur et le bouton avec un décalage à zéro contrôlent l'**opacité et la visibilité principales** de toutes les pelures.
- Les cases en haut permettent de les **activer/désactiver** rapidement.
- Le curseur principal au milieu règle une sorte de « transparence principale » ; les curseurs latéraux contrôlent la transparence par décalage de trame.
- La **nuance** (*tint*) règle le niveau de coloration des trames : à 100 %, on obtient une silhouette ; à 50 %, on voit encore un peu les couleurs originales.
- Les **étiquettes de couleur** « Trame précédente » et « Trame suivante » définissent les couleurs.

> **VOIR AUSSI** — [La chronologie d'animation](../krita-animation-timeline/) · [Les courbes d'animation](../krita-animation-curves/) · [Krita — l'animation 2D](../krita-animation-2d/)
