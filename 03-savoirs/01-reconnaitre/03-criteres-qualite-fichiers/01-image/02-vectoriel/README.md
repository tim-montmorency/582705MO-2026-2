---
title: "Vectoriel — courbes et évolutivité"
description: "Net à toutes les tailles, courbes propres, export PNG."
tags:
  - "image"
  - "formats"
---

# Vectoriel — courbes et évolutivité

> Net à toutes les tailles, courbes propres.

Une image vectorielle est une **description géométrique** : chaque forme
est une formule — des points (**nœuds**) reliés par des courbes, posés à
des coordonnées précises. L'ordinateur calcule et redessine à toute
taille : l'agrandissement ne pixelise jamais.

- **Évolutivité** : le vectoriel est net à toutes les tailles — c'est
  le critère qui le distingue du matriciel.
- **Courbes propres** : le moins de nœuds possible — un logo simple se
  décline sans déformation
  (<!-- start-replace-cite key="tutoriels/krita/krita-vectoriel" -->[Krita — le graphisme vectoriel](../../../../../05-mediagraphie/tutoriels/krita/krita-vectoriel/ "Le chapitre du manuel Krita sur le graphisme vectoriel : calques vectoriels, formes de base, courbes de Bézier, opérations booléennes et texte — dessiner un lo…")<!-- end-replace-cite -->).
- **Livraison** : PNG (choisir la résolution de
  rasterisation, 32 px pour la petite taille) — le calque vectoriel
  vit dans le **KRA** source.
- **Jamais de perte** : ne jamais exporter le logo en petit PNG puis
  l'agrandir — on repart toujours du calque vectoriel du **KRA**.
