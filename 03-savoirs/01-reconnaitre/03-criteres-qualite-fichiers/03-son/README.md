---
title: "Critères de qualité — son"
description: "Fréquence d'échantillonnage, profondeur de bits, niveaux, dynamique, timbre : le vocabulaire sonore et les critères de qualité associés."
tags:
  - "son"
  - "formats"
---

# Critères de qualité — son

> Fréquence d'échantillonnage, profondeur de bits, niveaux, dynamique, timbre : chaque mot du son a son critère de qualité.

## Le vocabulaire et ses critères

| Vocabulaire sonore | Critère de qualité associé |
|---|---|
| <!-- start-replace-cite key="termes/echantillonnage" -->[Échantillonnage](../../../../05-mediagraphie/termes/echantillonnage/ "La numérisation du signal — fréquence et quantification, la base du son numérique.")<!-- end-replace-cite --> — la fréquence | **44,1 ou 48 kHz** ; 48 kHz pour la vidéo ; pas de sous-échantillonnage (alias) |
| <!-- start-replace-cite key="termes/quantification" -->[Quantification](../../../../05-mediagraphie/termes/quantification/ "Mesurer chaque échantillon sur une échelle finie de niveaux — l'amplitude devient nombre : 24 bits, des millions de marches.")<!-- end-replace-cite --> — la profondeur | **24 bits au travail**, 16 bits à la livraison si besoin ; bruit de quantification maîtrisé |
| <!-- start-replace-cite key="termes/decibel" -->[Décibel](../../../../05-mediagraphie/termes/decibel/ "L'échelle logarithmique du niveau sonore — en numérique, 0 dBFS est un plafond absolu : on enregistre avec de la marge.")<!-- end-replace-cite --> — les niveaux | **crêtes ≈ −12 dBFS** à l'enregistrement ; 0 dBFS jamais atteint (clipping) |
| <!-- start-replace-cite key="termes/dynamique-sonore" -->[Dynamique sonore](../../../../05-mediagraphie/termes/dynamique-sonore/ "L'écart entre le plus faible et le plus fort — la compresser pour la diffusion, la préserver pour l'expression.")<!-- end-replace-cite --> — l'écart faible / fort | **plage préservée** ; compression justifiée pour la diffusion |
| <!-- start-replace-cite key="termes/timbre" -->[Timbre](../../../../05-mediagraphie/termes/timbre/ "La signature qui distingue deux sons de même hauteur et d'intensité — spectre et enveloppe : la « couleur » du son.")<!-- end-replace-cite --> — le spectre et l'enveloppe | **pas d'artefacts** ni de dégradation après export ; timbre cohérent |
| <!-- start-replace-cite key="termes/paysage-sonore" -->[Paysage sonore](../../../../05-mediagraphie/termes/paysage-sonore/ "L'environnement sonore comme composition — l'écoute du monde de Murray Schafer.")<!-- end-replace-cite --> — les plans | **équilibre** proche / moyen / lointain ; lisibilité à l'écoute |
| <!-- start-replace-cite key="termes/codec" -->[Codec](../../../../05-mediagraphie/termes/codec/ "Algorithme de compression/décompression — H.264, AV1, Opus… le cœur des formats médias.")<!-- end-replace-cite --> — la compression | **FLAC** (sans perte, archive) et **Opus** (diffusion) ; pas de réencodage avec perte |

Les formats ouverts — FLAC, Opus, Ogg — sont portés par <!-- start-replace-cite key="organisations/xiph" -->[Xiph.Org Foundation](../../../../05-mediagraphie/organisations/xiph/ "La fondation des codecs libres — Vorbis, FLAC, Opus, les formats audio ouverts du Web.")<!-- end-replace-cite -->.

## Checklist avant remise

- [ ] **48 kHz / 24 bits** au travail
- [ ] **Crêtes ≈ −12 dBFS** ; aucun clipping
- [ ] Pas de **bruit de fond** gênant (souffle, ronflement)
- [ ] **Dynamique** préservée ; compression justifiée
- [ ] **Export** FLAC (archive) + Opus (diffusion), écouté au casque et sur un autre système
- [ ] La [liste de vérification](../../../02-utiliser/08-respect-criteres-qualite/01-liste-de-verification/) est passée

<!-- start-replace-subnav depth=1 -->
* [La quantification](./01-quantification/)
<!-- end-replace-subnav -->

## Voir aussi

- [Les principes du son](../../04-outils-processus-creation/03-son/01-principes-son/) — onde, échantillonnage, quantification, décibel.
- [La quantification](01-quantification/) — la profondeur en bits : le pendant audio de la résolution.
- [L'export — formats audio](../../../02-utiliser/05-optimisation-medias/03-son/01-export-formats/) — FLAC pour l'archive, Opus pour la diffusion.
- [Le mixage multipiste](../../04-outils-processus-creation/03-son/04-mixage-multipiste/) — niveaux et dynamique.

## Références

<!-- start-replace-cite-page -->
- [Codec](../../../../05-mediagraphie/termes/codec/ "Algorithme de compression/décompression — H.264, AV1, Opus… le cœur des formats médias.")
- [Décibel](../../../../05-mediagraphie/termes/decibel/ "L'échelle logarithmique du niveau sonore — en numérique, 0 dBFS est un plafond absolu : on enregistre avec de la marge.")
- [Dynamique sonore](../../../../05-mediagraphie/termes/dynamique-sonore/ "L'écart entre le plus faible et le plus fort — la compresser pour la diffusion, la préserver pour l'expression.")
- [Échantillonnage](../../../../05-mediagraphie/termes/echantillonnage/ "La numérisation du signal — fréquence et quantification, la base du son numérique.")
- [Paysage sonore](../../../../05-mediagraphie/termes/paysage-sonore/ "L'environnement sonore comme composition — l'écoute du monde de Murray Schafer.")
- [Quantification](../../../../05-mediagraphie/termes/quantification/ "Mesurer chaque échantillon sur une échelle finie de niveaux — l'amplitude devient nombre : 24 bits, des millions de marches.")
- [Timbre](../../../../05-mediagraphie/termes/timbre/ "La signature qui distingue deux sons de même hauteur et d'intensité — spectre et enveloppe : la « couleur » du son.")
- [Xiph.Org Foundation](../../../../05-mediagraphie/organisations/xiph/ "La fondation des codecs libres — Vorbis, FLAC, Opus, les formats audio ouverts du Web.")
<!-- end-replace-cite-page -->
