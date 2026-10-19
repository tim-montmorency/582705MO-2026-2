---
type: "webpage"
author: "Documentation Krita"
date: "2026"
title: "Krita — la chronologie d'animation"
description: "La référence de la chronologie d'animation de Krita : images clés, images dupliquées et clonées, tenues, sélection et cache — le cœur de l'animation image par image."
url: "https://docs.krita.org/fr/reference_manual/dockers/animation_timeline.html"
tags:
  - "image"
  - "krita"
  - "animation"
  - "timeline"
  - "tutoriel"
  - "cours"
status: "stable"
role: "cours"
---
<!-- start-replace-fm field="title" -->
# Krita — la chronologie d'animation
<!-- end-replace-fm -->
<!-- start-replace-fm field="description" format="blockquote" -->
> La référence de la chronologie d'animation de Krita : images clés, images dupliquées et clonées, tenues, sélection et cache — le cœur de l'animation image par image.
<!-- end-replace-fm -->

<!-- start-replace-mediagraphie-fiche -->
> **Référence** — Documentation Krita (2026). Krita — la chronologie d'animation.. https://docs.krita.org/fr/reference_manual/dockers/animation_timeline.html. [↗](https://docs.krita.org/fr/reference_manual/dockers/animation_timeline.html)
>
> | **Type** | webpage |
> | **Auteur·e** | Documentation Krita |
> | **Date** | 2026 |
> | **Statut** | stable |
> | **Mots-clés** | image, krita, animation, timeline, tutoriel, cours |

**Citation (copier-coller)**

```citation
Documentation Krita (2026). Krita — la chronologie d'animation.. https://docs.krita.org/fr/reference_manual/dockers/animation_timeline.html.
```
<!-- end-replace-mediagraphie-fiche -->

## Cité par

<!-- start-replace-mediagraphie-cited-by -->
- [Krita — l'animation 2D](../krita-animation-2d/)
- [Krita — le panneau Courbes d'animation](../krita-animation-curves/)
- [Krita — le panneau Pelures d'oignon](../krita-onion-skin/)
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
> 🇫🇷 **Traduction française** de la page officielle [Animation Timeline Docker](https://docs.krita.org/fr/reference_manual/dockers/animation_timeline.html) — la page source n'est pas encore traduite. Adaptation : A26.

La **chronologie d'animation** (*Animation Timeline*) est au cœur des outils d'animation matricielle de Krita : elle fournit tout ce qu'il faut pour créer, modifier et prévisualiser une animation dessinée à la main.

## Vue d'ensemble

Le panneau se décompose en plusieurs zones :

- **Utilitaires** — à gauche de la barre d'outils : commandes de lecture (précédent, lecture/pause, arrêt, suivant), compteur d'images, contrôles de prévisualisation (vitesse, saut d'images), boutons de création rapide de nouvelles images et de suppression des images indésirables.
- **Réglages** — à droite de la barre d'outils : sous-menus pour les [pelures d'oignon](../krita-onion-skin/) et des réglages qu'on définit une fois pour toutes (plage de lecture, cadence, mode autokey).
- **Liste des calques** — un sous-ensemble des calques du document courant, avec leurs propriétés (visibilité, verrouillage, pelures d'oignon…). Le calque actif y est toujours affiché ; les autres calques peuvent être **épinglés** à la chronologie (bouton épingle à gauche du nom, action *Pin to Timeline*, sous-menu *Pin Existing Layer*) pour rester visibles même inactifs.

> **ASTUCE** — Selon sa préférence, on peut faire démarrer les nouveaux calques de peinture épinglés ou non via l'option *Automatically pin new layers to timeline* dans **Paramètres → Configurer Krita… → Général → Divers**.

- **Calque actif** : le calque sur lequel on peut actuellement dessiner, surligné dans la liste. Cliquer un calque le rend actif.
- **Menu des calques** : petit menu en haut à gauche de la liste pour créer/supprimer des calques et épingler/désépingler le calque actif.
- **Menu audio** : petit menu en haut de la liste pour animer avec des sources audio — ouvrir/fermer les sources et régler le volume ou la sourdine.
- **Poignée de zoom** : widget qui permet de zoomer/dézoomer la table d'images, centré sur le temps courant (`Ctrl` + glisser pour régler le zoom).
- **Table d'images** (*frame table*) — grande grille dont chaque cellule contient une image clé ou est vide. Chaque ligne représente un calque animé, chaque colonne un temps d'image. Comme la liste des calques, le calque actif est surligné sur toute la table. Pour qui connaît l'animation sur papier, c'est l'équivalent du *dope sheet* ou *time sheet*.

> **NOTE** — Important : les temps ne sont pas des unités de temps comme la seconde, mais des **images**, qui se lisent à la vitesse définie par la cadence et la vitesse de lecture.

Les images clés se déplacent dans la chronologie par `Ctrl` + glisser ; `Ctrl` enfoncé en glissant crée une **copie**, `Alt` crée une image **clonée**. Un clic droit n'importe où dans la table ouvre un menu pour ajouter, retirer, copier, coller ou ajuster le timing.

- **Image clé active** : on ne peut voir et dessiner qu'une image clé à la fois — l'image clé active, représentée par un bloc à rayures diagonales. Dans une animation simple, c'est souvent l'image du calque actif située à ou juste avant le temps courant. Si l'image clé active a des clones, tout dessin ou toute édition les affecte aussi.
- **Images clonées** (*clone frames*) : une référence à une image clé à une autre position. Elles partagent exactement les mêmes données d'image et portent les mêmes rayures diagonales que l'image active.
- **Image dupliquée** (*duplicate frame*) : à ne pas confondre avec les clones — c'est l'image clé active copiée-collée comme image clé séparée. Une image dupliquée a le même contenu que la source, mais les modifications ne se propagent pas.
- **Sélection courante** : les images surlignées en orange forment une ou plusieurs sélections. Un clic droit dans la table ouvre un menu pour ajouter/retirer des images clés ou des tenues dans la sélection.

> **AVERTISSEMENT** — On dessine toujours uniquement sur l'image clé active, qui ne fait pas forcément partie de la sélection courante !

- **Image clé** : dans Krita, les images qui composent l'animation sont les images clés. Chacune peut recevoir une **étiquette de couleur** (*Color Label*) pour l'organisation.
- **Image clé vide** : dans la table, une image clé contenant un dessin est un bloc plein, une image clé vide un contour creux. Contrairement à d'autres outils, Krita **tient automatiquement** chaque image clé jusqu'à la suivante sur ce calque ; ces tenues apparaissent comme une ligne colorée.
- **En-tête de temps** : une règle en haut de la table, divisée en petites sections selon la cadence courante (réglée dans le sous-menu des réglages d'animation). Chaque image est marquée d'une ligne, chaque seconde d'une double ligne, et les repères majeurs portent un numéro d'image.
- **Images en cache** : l'en-tête indique aussi quelles images sont actuellement en cache, c'est-à-dire stockées dans la mémoire vive (RAM) pour un accès très rapide — un petit rectangle gris clair dans chaque colonne. Krita met ainsi en cache les images pour un parcours et une lecture les plus fluides possible.
- **Curseur de temps courant** : une colonne surlignée de la table qui contrôle le temps courant et donc ce qui s'affiche dans la vue.
- **Barre de défilement zoomable** : les barres de défilement du panneau servent à se déplacer (glisser à gauche/droite) et à zoomer (glisser haut/bas).

## Animer

Pour commencer à animer dans Krita, il faut d'abord transformer un calque de peinture en calque animé en ajoutant une première image clé. On peut partir d'une **image clé vide**, ou créer une **image clé dupliquée** si le calque contient déjà un dessin à transférer.

Pour créer une image clé vide : clic droit sur un carré de la chronologie → **Créer une image vide**. Une image vide apparaît en contour creux ; dessiner sur le canevas la fait apparaître en rectangle plein et coloré. Pour déplacer une image clé, on la glisse-dépose dans un emplacement vide, même d'un calque à l'autre.

Le calque sélectionné s'affiche automatiquement dans la chronologie. Pour garder un autre calque visible, on peut l'**épingler** avec l'icône épingle à côté de son nom.

Une animation à une seule image, c'est peu : pour ajouter une nouvelle image, on refait la même chose (*Créer une image vide*), ou on double-clique sur un emplacement, ou on crée une **image clé dupliquée** (bouton dédié de la barre d'outils) après s'être placé à un autre temps.

Avec plusieurs images clés, on dessine différemment dans chacune et on lit l'animation avec le bouton **Lecture/Pause**. Autre geste essentiel : parcourir les images à son rythme (*scrubbing*) pour inspecter le mouvement image par image — par exemple en cliquant-glissant dans l'en-tête de temps.

Tout cela fait beaucoup d'informations, mais l'essentiel pour débuter : savoir créer des images clés et parcourir l'animation pour vérifier sa progression. Ensuite, il reste le travail difficile et gratifiant de dessiner beaucoup (beaucoup) d'images.

## Astuces

- Les commandes de lecture ont des subtilités utiles : **Arrêt** pendant la lecture revient à l'image de départ de la lecture ; **Arrêt** à l'arrêt revient à la première image. Le bouton *image clé suivante* saute à la prochaine image clé du calque actif ; s'il n'y en a pas, Krita estime où placer la suivante et s'y rend.
- On peut ajouter plusieurs images clés en cliquant dans la table et en choisissant **Images clés ‣ Insérer plusieurs images clés** : nombre d'images à ajouter, avec un timing intégré (séries de 1, 2, 3…). Les réglages sont conservés.
- On peut changer la couleur des images clés dans la table pour repérer les images importantes ou distinguer des sections. La couleur courante est mémorisée pour les nouvelles images. (On peut même passer d'une image à l'autre de la même couleur via un raccourci *Previous/Next Matching Keyframe*.)
- Un clic droit dans l'**en-tête de temps** (plutôt que dans la table) donne accès à d'autres options : ajouter/retirer des colonnes entières d'images ou de tenues, ou réinitialiser le cache d'animation. Par exemple **Colonnes d'images clés ‣ Insérer une colonne d'images clés à gauche** ajoute des images à chaque calque visible.
- Pour supprimer des images : les sélectionner, puis **Retirer l'image clé**. *Retirer l'image et tirer* supprime les images sélectionnées et ramène vers la gauche toutes les suivantes autant que possible.

## Commandes

- **Liste des calques** : clic pour sélectionner le calque actif ; clic droit pour le menu des calques (ajouter/retirer/afficher…).
- **En-tête de temps** : clic pour se placer au temps et sélectionner l'image du calque actif ; clic + glisser pour parcourir le temps ; clic droit pour le menu des colonnes d'images (insérer/retirer/copier/coller colonnes et colonnes de tenue).
- **Table d'images** : clic pour sélectionner une image ou un emplacement et changer de temps (sans changer de calque actif) ; `Espace` + glisser pour déplacer la vue ; `Espace` + glisser pour zoomer.
- **Table d'images (emplacement vide)** : clic droit pour le menu des images (insérer/copier/coller images, insérer/retirer tenues) ; clic + glisser pour sélectionner plusieurs images et se placer au dernier temps sélectionné ; `Maj` + clic pour sélectionner toutes les images entre l'image active et l'image cliquée ; `Ctrl` + clic pour sélectionner des images individuelles, puis les glisser en place.
- **Table d'images (sur une image existante)** : clic droit pour le menu des images (retirer/copier/coller, tenues) ; clic + glisser pour déplacer une ou plusieurs images ; `Ctrl` + clic + glisser pour copier ; `Alt` + clic + glisser pour cloner ; `Maj` + clic + glisser pour déplacer les images sélectionnées et toutes celles à leur droite.

> **VOIR AUSSI** — [Les pelures d'oignon](../krita-onion-skin/) · [Les courbes d'animation](../krita-animation-curves/) · [Le panneau Storyboard](../krita-storyboard-docker/) · [Krita — l'animation 2D](../krita-animation-2d/)
