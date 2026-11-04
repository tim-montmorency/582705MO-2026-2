---
title: "Zone d'exploration — synthèse sonore"
description: "Fabriquer des sons de toutes pièces : générateurs 8 bits, synthèse générative et studios dans le navigateur — essayer, comparer, choisir."
tags:
  - "son"
  - "synthese"
  - "exploration"
---

# Zone d'exploration — synthèse sonore

> Un espace pour **fabriquer des sons de toutes pièces** — pas pour le montage : pour la création. On essaie, on compare, on choisit.

## Le défi — un son pour un geste

1. Choisir un **bref** : un effet pour un geste (pas, porte, impact), une ambiance (pluie, vent, machine) ou un jingle court.
2. Essayer **trois outils** de familles différentes — un générateur 8 bits, un synthétiseur génératif, un studio.
3. **Exporter** le son (WAV ou audio) et noter les réglages.
4. **Comparer** : lequel raconte le mieux le geste ? Pourquoi ?
5. Documenter au [journal de bord](../../../07-journal-de-bord/).

## Générateurs d'effets 8 bits

Pour les sons rétro, les impacts, les bips — formes d'onde, enveloppes et bruit :

-  <!-- start-replace-cite key="logiciels/son/jsfxr" -->[jsfxr — générateur de sons 8 bits](../../../05-mediagraphie/logiciels/son/jsfxr/ "Générateur de sons 8 bits dans le navigateur (portage web de SFXR, domaine public) : forme d'onde, enveloppe et bruit pour créer des effets rétro — export WAV.")<!-- end-replace-cite --> — sons 8 bits (portage web de SFXR).
-  <!-- start-replace-cite key="logiciels/son/bfxr" -->[Bfxr — générateur d'effets sonores](../../../05-mediagraphie/logiciels/son/bfxr/ "Générateur d'effets sonores pour jeux, héritier de SFXR : formes d'onde, enveloppes, arpèges et presets — export WAV, dans le navigateur.")<!-- end-replace-cite --> — effets de jeu, presets.
-  <!-- start-replace-cite key="logiciels/son/rfxgen" -->[rFXGen — générateur d'effets sonores](../../../05-mediagraphie/logiciels/son/rfxgen/ "Générateur d'effets sonores rétro (raylib) : formes d'onde, enveloppes et bruit, avec export WAV — version web et application de bureau.")<!-- end-replace-cite --> — effets rétro (raylib), web ou bureau.
-  <!-- start-replace-cite key="logiciels/son/leshy-sfmaker" -->[Leshy SFMaker — générateur d'effets sonores](../../../05-mediagraphie/logiciels/son/leshy-sfmaker/ "Générateur d'effets sonores en ligne inspiré de SFXR : formes d'onde, enveloppes et bruit — export WAV, sans installation.")<!-- end-replace-cite --> — générateur d'effets en ligne.

## Synthèse générative

Pour les textures, les ambiances et les timbres qui évoluent :

-  <!-- start-replace-cite key="logiciels/son/kinetitone" -->[KinetiTone — générateur de sons génératif](../../../05-mediagraphie/logiciels/son/kinetitone/ "Générateur de sons génératif dans le navigateur (In The Void) : moteurs Classique, FM, Additive, Onde, Bruit et Physique, quatre couches, designer d'accords —…")<!-- end-replace-cite --> — 6 moteurs (Classique, FM, Additive, Onde, Bruit, Physique), 4 couches, designer d'accords.
-  <!-- start-replace-cite key="logiciels/son/campana" -->[Campana — synthétiseur de cloches](../../../05-mediagraphie/logiciels/son/campana/ "Synthétiseur génératif de cloches dans le navigateur : synthèse additive, quatre textures (tubulaire, église, bol chantant, cristal), réverbération et delay —…")<!-- end-replace-cite --> — cloches génératives, textures et réverbération.
-  <!-- start-replace-cite key="logiciels/son/maresono" -->[Maresono — synthétiseur de vagues](../../../05-mediagraphie/logiciels/son/maresono/ "Synthétiseur génératif de vagues : apprend des enregistrements de tambours océaniques et produit des paysages marins infinis et non répétitifs — export audio.")<!-- end-replace-cite --> — vagues infinies, paysages marins.
-  <!-- start-replace-cite key="logiciels/son/bassimat" -->[Matteo Bassi (bassimat) — instruments génératifs](../../../05-mediagraphie/logiciels/son/bassimat/ "Instruments génératifs et transformation sonore de Matteo Bassi (bassimat) : Campana, Maresono, Filigrana, ALISEO — outils dans le navigateur, sources publiées.")<!-- end-replace-cite --> — le hub de Matteo Bassi : Campana, Maresono, Filigrana, ALISEO.

## Studios dans le navigateur

Pour aller plus loin qu'un générateur — enregistrer, monter, mixer :

-  <!-- start-replace-cite key="logiciels/son/gridsound" -->[GridSound — station audionumérique dans le navigateur](../../../05-mediagraphie/logiciels/son/gridsound/ "Station audionumérique libre dans le navigateur (Web Audio API) : pistes, synthés, échantillonneurs, effets et export — projet libre AGPL.")<!-- end-replace-cite --> — DAW libre (AGPL), pistes et export.
-  <!-- start-replace-cite key="logiciels/son/audiosauna" -->[AudioSauna — studio de musique dans le navigateur](../../../05-mediagraphie/logiciels/son/audiosauna/ "Studio de musique dans le navigateur : deux synthétiseurs (analogique virtuel, FM), un échantillonneur avec couches et des effets en direct — gratuit, export a…")<!-- end-replace-cite --> — synthés, échantillonneur et effets.
-  <!-- start-replace-cite key="logiciels/son/opendaw" -->[openDAW](../../../05-mediagraphie/logiciels/son/opendaw/ "Studio audio libre AGPL qui tourne entièrement dans le navigateur — enregistrement, instruments, mixage, sans compte ni installation, pensé pour l'éducation :…")<!-- end-replace-cite --> — studio audio libre AGPL, sans installation.

## Choisir selon le besoin

| Besoin | Outils |
|---|---|
| Un effet rétro (jeu, impact, bip) | jsfxr, Bfxr, rFXGen, Leshy SFMaker |
| Une texture ou une ambiance | Campana, Maresono, KinetiTone |
| Un son complexe, multicouche | KinetiTone, bassimat |
| Composer, enregistrer, mixer | GridSound, AudioSauna, openDAW |

## Autovalidation

- [ ] Un bref est choisi (effet, ambiance ou jingle)
- [ ] **Trois outils** de familles différentes sont essayés
- [ ] Un son est exporté et comparé aux autres
- [ ] Le choix est justifié (timbre, intention, usage)
- [ ] Documenté au [journal de bord](../../../07-journal-de-bord/) : captures, réglages, comparaison.

## Voir aussi

- [Bruitage — sonoriser un geste](../exercices/03-bruitage/)
- [Transformer un son](../exercices/10-transformer-un-son/)
- [Paysage sonore](../exercices/08-paysage-sonore/)
- [Sonoriser une animation](../exercices/11-sonoriser-une-animation/)
- [Le corpus sonore](../corpus-sonore/)

## Références

<!-- start-replace-cite-page -->
- [openDAW](../../../05-mediagraphie/logiciels/son/opendaw/ "Studio audio libre AGPL qui tourne entièrement dans le navigateur — enregistrement, instruments, mixage, sans compte ni installation, pensé pour l'éducation :…")
- [AudioSauna — studio de musique dans le navigateur](../../../05-mediagraphie/logiciels/son/audiosauna/ "Studio de musique dans le navigateur : deux synthétiseurs (analogique virtuel, FM), un échantillonneur avec couches et des effets en direct — gratuit, export a…")
- [jsfxr — générateur de sons 8 bits](../../../05-mediagraphie/logiciels/son/jsfxr/ "Générateur de sons 8 bits dans le navigateur (portage web de SFXR, domaine public) : forme d'onde, enveloppe et bruit pour créer des effets rétro — export WAV.")
- [Leshy SFMaker — générateur d'effets sonores](../../../05-mediagraphie/logiciels/son/leshy-sfmaker/ "Générateur d'effets sonores en ligne inspiré de SFXR : formes d'onde, enveloppes et bruit — export WAV, sans installation.")
- [GridSound — station audionumérique dans le navigateur](../../../05-mediagraphie/logiciels/son/gridsound/ "Station audionumérique libre dans le navigateur (Web Audio API) : pistes, synthés, échantillonneurs, effets et export — projet libre AGPL.")
- [KinetiTone — générateur de sons génératif](../../../05-mediagraphie/logiciels/son/kinetitone/ "Générateur de sons génératif dans le navigateur (In The Void) : moteurs Classique, FM, Additive, Onde, Bruit et Physique, quatre couches, designer d'accords —…")
- [Bfxr — générateur d'effets sonores](../../../05-mediagraphie/logiciels/son/bfxr/ "Générateur d'effets sonores pour jeux, héritier de SFXR : formes d'onde, enveloppes, arpèges et presets — export WAV, dans le navigateur.")
- [Matteo Bassi (bassimat) — instruments génératifs](../../../05-mediagraphie/logiciels/son/bassimat/ "Instruments génératifs et transformation sonore de Matteo Bassi (bassimat) : Campana, Maresono, Filigrana, ALISEO — outils dans le navigateur, sources publiées.")
- [Campana — synthétiseur de cloches](../../../05-mediagraphie/logiciels/son/campana/ "Synthétiseur génératif de cloches dans le navigateur : synthèse additive, quatre textures (tubulaire, église, bol chantant, cristal), réverbération et delay —…")
- [Maresono — synthétiseur de vagues](../../../05-mediagraphie/logiciels/son/maresono/ "Synthétiseur génératif de vagues : apprend des enregistrements de tambours océaniques et produit des paysages marins infinis et non répétitifs — export audio.")
- [rFXGen — générateur d'effets sonores](../../../05-mediagraphie/logiciels/son/rfxgen/ "Générateur d'effets sonores rétro (raylib) : formes d'onde, enveloppes et bruit, avec export WAV — version web et application de bureau.")
<!-- end-replace-cite-page -->
