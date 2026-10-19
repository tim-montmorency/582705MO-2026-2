---
title: "Le GIF — avantages, limites, alternatives"
description: "Le GIF animé : universel et bouclable, mais limité à 256 couleurs — quand l'utiliser, et par quoi le remplacer."
tags:
  - "animation"
  - "formats"
  - "image"
---

# Le GIF — avantages, limites, alternatives

> Le **GIF** (*Graphics Interchange Format*) est le plus ancien format d'image animée encore utilisé : **universel**, il boucle partout — mais il date de 1987 et ses limites se voient.

## Ce qu'est le GIF

- Un format d'image **sans perte**, codé sur **8 bits** — **256 couleurs maximum**, avec une **transparence d'1 bit** (un pixel est transparent ou non, sans demi-teinte).
- **Animé** : une suite d'images, chacune avec sa durée, jouée en **boucle**.
- Créé en **1987** par CompuServe ; l'animation (GIF89a) arrive en **1989**.
- Fiche : <!-- start-replace-cite key="termes/gif" -->[GIF](../../../../../05-mediagraphie/termes/gif/ "GIF (Graphics Interchange Format) : le plus ancien format d'image animée encore utilisé — 256 couleurs, transparence 1 bit, boucle ; universel mais limité.")<!-- end-replace-cite -->.

## Avantages

- **Universel** : lu par tous les navigateurs et messageries, **sans lecteur ni plugin**.
- **Boucle automatique** : idéal pour une animation courte et cyclique.
- **Transparence** (1 bit) et **léger** pour de petites animations.
- **Sans perte** : pas d'artefacts de compression (mais la palette est limitée).

## Limites

- **256 couleurs** : bandes de couleur (*banding*), dégradés cassés — les photos et les dégradés sont impossibles.
- **Pas de son**.
- **Poids** : chaque image est stockée en entier — une animation longue ou détaillée devient énorme.
- **Transparence binaire** : pas de demi-transparence (alpha), contours crénelés.
- **Pas une vraie vidéo** : cadence irrégulière, pas de déplacement dans la timeline.

## Ses contemporains — les alternatives

| Format | Couleurs | Transparence | Son | Support |
|---|---|---|---|---|
| **GIF** | 256 | 1 bit | non | universel |
| <!-- start-replace-cite key="termes/apng" -->[APNG](../../../../../05-mediagraphie/termes/apng/ "APNG (Animated PNG) : l'extension animée du PNG — 24 bits, transparence alpha, sans perte ; une alternative moderne au GIF.")<!-- end-replace-cite --> | 24 bits | 8 bits (alpha) | non | navigateurs modernes |
| <!-- start-replace-cite key="termes/webp" -->[WebP](../../../../../05-mediagraphie/termes/webp/ "WebP : le format d'image de Google — avec ou sans perte, transparence alpha, animé ; plus léger que le GIF.")<!-- end-replace-cite --> | 24 bits | 8 bits | non | navigateurs modernes |
| <!-- start-replace-cite key="termes/avif" -->[AVIF](../../../../../05-mediagraphie/termes/avif/ "AVIF (AV1 Image File Format) : format d'image ouvert basé sur AV1, dans un conteneur HEIF — très efficace, avec transparence et animation.")<!-- end-replace-cite --> | 24 bits+ | 8 bits | non | récent |
| **MP4/H.264 · WebM** | vidéo | — | oui | universel |

- **APNG** (PNG animé) : 24 bits, transparence alpha, sans perte — mais non officiel.
- **WebP** : format de Google, avec ou sans perte, alpha, animé — souvent bien plus léger.
- **AVIF** : AV1 dans un conteneur HEIF, ouvert, très efficace — le successeur probable.
- **MP4/WebM** : la vraie vidéo (son, débit maîtrisé) — à préférer dès qu'il y a du son ou de la durée (voir [La vidéo numérique](../01-video-numerique/)).

## Quand utiliser le GIF

- **Oui** : animation **simple** (peu de couleurs, peu de détails), **boucle courte**, prévisualisation, mème.
- **Non** : photos, dégradés, son, durée de plus de quelques secondes → **MP4/WebM** (ou WebP/AVIF animé).

Pour produire un GIF dans Krita, voir l'[exercice — Exporter en GIF](../../../../../02-activites/02/exercices/13-export-gif/).

## Références

<!-- start-replace-cite-page -->
- [APNG](../../../../../05-mediagraphie/termes/apng/ "APNG (Animated PNG) : l'extension animée du PNG — 24 bits, transparence alpha, sans perte ; une alternative moderne au GIF.")
- [AVIF](../../../../../05-mediagraphie/termes/avif/ "AVIF (AV1 Image File Format) : format d'image ouvert basé sur AV1, dans un conteneur HEIF — très efficace, avec transparence et animation.")
- [GIF](../../../../../05-mediagraphie/termes/gif/ "GIF (Graphics Interchange Format) : le plus ancien format d'image animée encore utilisé — 256 couleurs, transparence 1 bit, boucle ; universel mais limité.")
- [WebP](../../../../../05-mediagraphie/termes/webp/ "WebP : le format d'image de Google — avec ou sans perte, transparence alpha, animé ; plus léger que le GIF.")
<!-- end-replace-cite-page -->
