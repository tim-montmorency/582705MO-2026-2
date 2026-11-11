---
type: "webpage"
author: "Documentation Krita"
date: "2026"
title: "Krita — le panneau Storyboard"
description: "La référence du panneau Storyboard de Krita : créer et gérer les scènes d'un film, les commentaires et l'export du storyboard en PDF ou SVG."
url: "https://docs.krita.org/fr/reference_manual/dockers/storyboard_docker.html"
tags:
  - "image"
  - "krita"
  - "animation"
  - "storyboard"
  - "tutoriel"
  - "cours"
status: "stable"
role: "cours"
---
<!-- start-replace-fm field="title" -->
# Krita — le panneau Storyboard
<!-- end-replace-fm -->
<!-- start-replace-fm field="description" format="blockquote" -->
> La référence du panneau Storyboard de Krita : créer et gérer les scènes d'un film, les commentaires et l'export du storyboard en PDF ou SVG.
<!-- end-replace-fm -->

<!-- start-replace-mediagraphie-fiche -->
> **Référence** — Documentation Krita (2026). Krita — le panneau Storyboard.. https://docs.krita.org/fr/reference_manual/dockers/storyboard_docker.html. [↗](https://docs.krita.org/fr/reference_manual/dockers/storyboard_docker.html)
>
> | **Type** | webpage |
> | **Auteur·e** | Documentation Krita |
> | **Date** | 2026 |
> | **Statut** | stable |
> | **Mots-clés** | image, krita, animation, storyboard, tutoriel, cours |

**Citation (copier-coller)**

```citation
Documentation Krita (2026). Krita — le panneau Storyboard.. https://docs.krita.org/fr/reference_manual/dockers/storyboard_docker.html.
```
<!-- end-replace-mediagraphie-fiche -->

## Cité par

<!-- start-replace-mediagraphie-cited-by -->
- [Krita — l'animation 2D](../krita-animation-2d/)
- [Krita — le panneau Courbes d'animation](../krita-animation-curves/)
- [Krita — la chronologie d'animation](../krita-animation-timeline/)
- [05](../../../../01-deroulement/05/)
<!-- end-replace-mediagraphie-cited-by -->

---
> 🇫🇷 **Traduction française** de la page officielle [Storyboard Docker](https://docs.krita.org/fr/reference_manual/dockers/storyboard_docker.html) — la page source n'est pas encore traduite. Adaptation : A26.

Le **storyboard** est une suite de dessins et d'indications qui découpe un film en scènes. Ces scènes peuvent être accompagnées de textes apportant du contexte : dialogues, descriptions d'actions, détails utiles à la production. On l'utilise beaucoup pendant la **planification** d'un film, pour mieux comprendre la production et ses besoins. Il sert aussi aux équipes à discuter du déroulé scène par scène, ou à faire les changements nécessaires avant d'entrer en production.

Le **panneau Storyboard** de Krita permet de développer un récit en créant et gérant des scènes : ajouter, retirer ou ajuster une scène, en insérer entre d'autres, ou les réordonner par glisser-déposer. Le contenu visuel du storyboard vit dans le système d'animation interne de Krita : on peut donc prévisualiser la séquence avec les commandes de lecture de la chronologie d'animation. Le panneau permet aussi d'**exporter** le storyboard en document — les formats pris en charge sont **SVG** et **PDF**.

## La barre d'outils

- **Export** : menu déroulant des options d'export du storyboard courant. Utile pour discuter d'idées et planifier l'animation avec l'équipe, ou présenter ses idées à un client. Krita exporte en `.pdf` ou `.svg`.
- **Comment** (Commentaire) : menu déroulant listant les champs de commentaires des éléments du storyboard — bouton **Delete Comment** et bouton **Add Comment**. On peut ajouter, retirer ou changer la visibilité des champs ; l'ordre se réordonne par glisser-déposer. Les actions s'appliquent à toutes les entrées du panneau.
- **Lock** (Verrouiller) : fige le panneau dans son état courant. Une fois activé, les vignettes, commentaires, durées et numéros d'images ne changent plus ; le réordonnancement par glisser-déposer est désactivé. Utile pour préserver l'état du storyboard même en modifiant l'image.
- **Arrange** (Disposer) : menu déroulant des options d'affichage et de mode, qui changent l'agencement des scènes dans le panneau.

## La scène de storyboard

Une **scène** représente un plan individuel dans une production plus large. Une même scène peut contenir plusieurs images clés ; la vignette montre la première image clé de la scène. Chaque scène a un en-tête avec des champs modifiables — nom et durée.

- **Frame Number** (numéro d'image) : l'image de départ de la scène. Champ non modifiable.
- **Name** (nom) : le nom de la scène. Double-clic pour l'éditer, `Entrée` pour valider.
- **Duration in Seconds** (durée en secondes) : champ numérique, règle la durée de la scène en secondes.
- **Duration in Frames** (durée en images) : champ numérique, règle la durée en images — la division de la seconde dépend de la cadence (*frame rate*) choisie.
- **Thumbnail** (vignette) : aperçu du contenu de la scène. Contrairement aux commentaires, elle ne se modifie pas directement dans le panneau : il faut dessiner sur le canevas après avoir sélectionné la scène.
- **Add Item** : bouton en bas à gauche de la vignette — ajoute une nouvelle scène après la durée de la scène courante (durée initiale : 1 image, le minimum).
- **Delete Item** : bouton en bas à droite de la vignette — supprime la scène courante ; ses images clés sont transférées à la scène précédente, pour éviter toute perte de données.
- **Comment Name / Comment Field** : nom et contenu du champ de commentaire. Le nom ne s'édite pas directement (passer par le menu Comment) ; le contenu s'édite par double-clic, `Entrée` pour valider.

## Affichage et modes

Les options **View** (affichage) et **Mode** sont accessibles via le menu **Arrange**.

**View** — filtre les parties de la scène à montrer dans le panneau :
- **Thumbnail Only** : seulement la vignette.
- **Comments Only** : seulement les commentaires.
- **All** : tous les éléments.

**Mode** — change l'agencement visuel des scènes :
- **Row** : scènes en rangée, commentaires à droite de la vignette.
- **Column** : scènes en colonne, commentaires sous la vignette.
- **Grid** : scènes en grille ; en redimensionnant le panneau, la grille se réorganise pour afficher plus de scènes.

## Utiliser le panneau Storyboard

- **Ajouter des scènes** : par le menu contextuel (*Add Scene After* / *Add Scene Before*), ou le bouton **Add** en bas à gauche de la vignette (équivaut à *Add Scene After*).
- **Supprimer des scènes** : par le menu contextuel (*Remove Scene*), ou le bouton **Delete** en bas à droite de la vignette.

> **NOTE** — Supprimer une scène ne supprime pas les images clés à son image : la durée de la scène supprimée est ajoutée à la scène précédente, pour éviter une perte accidentelle.

- **Réordonner les scènes** : par glisser-déposer. Toutes les images clés de la scène suivent le déplacement.
- **Gérer les champs de commentaires** : le panneau gère plusieurs champs facultatifs (dialogue, actions des personnages, directions de caméra…). Le menu **Comment** permet de :
  - créer un champ (bouton **+** en bas à gauche, puis nommer et valider) ;
  - supprimer un champ (le sélectionner, bouton **Delete** en bas à droite) ;
  - afficher/masquer un champ (icône œil) ;
  - réordonner les champs par glisser-déposer.
- **Ajouter un commentaire** : double-clic dans la zone de commentaire de la scène, puis clic à l'extérieur pour enregistrer.
- **Changer la durée** : boutons haut/bas du champ numérique (par pas de 1), ou double-clic pour saisir une valeur.
- **Travailler avec plusieurs calques** : pour ne changer qu'une vignette de scène en dessinant, insérer des images clés au temps de cette scène sur le calque courant. Le plus simple : activer le mode **Auto Frame** dans le panneau d'animation — toute modification avec la scène sélectionnée insère une image clé au temps de la scène sur le calque courant, et met donc à jour la vignette.

## Exporter le storyboard

Un storyboard créé dans Krita s'exporte facilement en **PDF** ou **SVG**.

Le bouton **Export** (en haut à gauche du panneau) ouvre le menu d'export du format choisi : taille de page, disposition du board, taille de police. En mode de disposition procédurale (rows, columns, grid), d'autres paramètres apparaissent et Krita estime une taille de police confortable selon vos réglages.

**Spécifier la disposition par options personnalisées** : lignes par page, colonnes par page, taille de page, orientation.

**Spécifier la disposition par gabarit SVG** : Krita peut utiliser un fichier gabarit SVG pour contrôler finement le placement des éléments sur la page. On peut ainsi concevoir son propre papier de storyboard, adapté à presque n'importe quel format existant. Krita est livré avec un gabarit SVG par défaut, libre à modifier ou à étudier.

**Nom du fichier exporté** :
- **PDF** : choisir le nom du document exporté.
- **SVG** : choisir le dossier de destination et un nom de base ; les fichiers exportés seront nommés `base0`, `base1`, etc.

> **VOIR AUSSI** — [La chronologie d'animation](../krita-animation-timeline/) · [Les pelures d'oignon](../krita-onion-skin/) · [Les courbes d'animation](../krita-animation-curves/) · [Krita — l'animation 2D](../krita-animation-2d/)
