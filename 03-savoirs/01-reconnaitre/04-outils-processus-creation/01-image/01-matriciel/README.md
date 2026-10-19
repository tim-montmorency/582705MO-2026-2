---
title: "Matriciel — de la photo au photomontage"
description: "Acquisition → RAW → corrections → détourage → composition, avec GIMP et Krita."
tags:
  - "image"
  - "processus"
---

# Matriciel — de la photo au photomontage

> Acquisition → RAW → corrections → détourage → composition, avec GIMP et Krita.

Travail sur pixels, **non destructif** : on sélectionne, on masque, on
empile — on ne coupe jamais (cas [Détourage et photomontage](/remote/codeberg.org/tim-montmorency/multimedia-libre/corpus/01-image/04-detourage-photomontage/)).

### Acquisition

Photographier ou scanner : le matériau brut, au téléphone ou à
l'appareil photo.

### Développement RAW

Corriger lumière et couleur **avant** toute retouche — darktable,
RawTherapee.

### Recadrage et corrections

Cadrer, redresser, puis niveaux, balance des blancs et netteté —
 <!-- start-replace-cite key="logiciels/image/gimp" -->[GIMP](../../../../../05-mediagraphie/tutoriels/gimp/ "Retouche d'image matricielle libre — calques, masques, sélections, scripts. L'alternative à Photoshop pour l'image de synthèse et la retouche.")<!-- end-replace-cite -->.

### Détourage et composition

Sélection puis masque (réversible), calques empilés et harmonisés —
GIMP, ou <!-- start-replace-cite key="logiciels/image/krita" -->[Krita](../../../../../05-mediagraphie/logiciels/image/krita/ "Peinture numérique libre — pinceaux, animation 2D, illustration. Pensé pour les artistes.")<!-- end-replace-cite -->
avec les mêmes fonctions.

### Peinture

Brosses, textures, stylet — <!-- start-replace-cite key="logiciels/image/krita" -->[Krita](../../../../../05-mediagraphie/logiciels/image/krita/ "Peinture numérique libre — pinceaux, animation 2D, illustration. Pensé pour les artistes.")<!-- end-replace-cite -->.

### Fichiers spécifiques

Le XCF garde calques, masques et chemins — jamais détruit. L'export
sort en PNG/WebP (1920×1080). Le commun (nommage, classement,
sauvegarde) : [Gestion des fichiers](../04-gestion-fichiers/).
