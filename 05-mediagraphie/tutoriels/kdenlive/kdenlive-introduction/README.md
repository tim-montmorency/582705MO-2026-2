---
type: "webpage"
author: "Documentation Kdenlive"
date: "2026"
title: "Kdenlive — introduction"
description: "Présentation de Kdenlive : logiciel libre de montage vidéo non linéaire, fonctions d'édition, formats et codecs pris en charge."
url: "https://docs.kdenlive.org/en/getting_started/introduction.html"
tags:
  - "video"
  - "montage"
  - "kdenlive"
  - "introduction"
  - "tutoriel"
  - "cours"
status: "stable"
role: "cours"
---
<!-- start-replace-fm field="title" -->
# Kdenlive — introduction
<!-- end-replace-fm -->
<!-- start-replace-fm field="description" format="blockquote" -->
> Présentation de Kdenlive : logiciel libre de montage vidéo non linéaire, fonctions d'édition, formats et codecs pris en charge.
<!-- end-replace-fm -->

<!-- start-replace-mediagraphie-fiche -->
> **Référence** — Documentation Kdenlive (2026). Kdenlive — introduction.. https://docs.kdenlive.org/en/getting_started/introduction.html. [↗](https://docs.kdenlive.org/en/getting_started/introduction.html)
>
> | **Type** | webpage |
> | **Auteur·e** | Documentation Kdenlive |
> | **Date** | 2026 |
> | **Statut** | stable |
> | **Mots-clés** | video, montage, kdenlive, introduction, tutoriel, cours |

**Citation (copier-coller)**

```citation
Documentation Kdenlive (2026). Kdenlive — introduction.. https://docs.kdenlive.org/en/getting_started/introduction.html.
```
<!-- end-replace-mediagraphie-fiche -->

## Cité par

<!-- start-replace-mediagraphie-cited-by -->
- [Kdenlive — installation](../kdenlive-installation/)
<!-- end-replace-mediagraphie-cited-by -->

---

> 🇫🇷 **Traduction française** de la page officielle [Introduction](https://docs.kdenlive.org/en/getting_started/introduction.html) — la page source n'est pas encore traduite. Adaptation : A26.

Kdenlive est l'acronyme de **KDE Non-Linear Video Editor** (éditeur vidéo non linéaire de KDE).

C'est un **logiciel libre** (licence GPL) conçu d'abord pour Linux, mais qui fonctionne aussi sur BSD (Berkeley Software Distribution) : il ne dépend que de composants portables (Qt et le framework MLT). Des versions Windows existent, avec quelques limites (voir *Windows Issues*) ; un portage macOS est également disponible.

Grâce au framework MLT, Kdenlive intègre de nombreux effets de traitement et de création vidéo et audio. Il propose en outre un éditeur de titres puissant, le sous-titrage avec transcription automatique par IA, les timelines imbriquées (nouveau en 23.04), l'animation via l'intégration de Glaxnimate (nouveau en 22.08) — de quoi en faire un studio complet de création vidéo. Voir [What's New](https://docs.kdenlive.org/en/more_information/whats_new.html) pour les ajouts récents.

## Fonctions de montage

- Montage multipiste : timeline et nombre pratiquement illimité de pistes vidéo et audio ; possibilité de séparer l'audio et la vidéo d'un clip sur plusieurs pistes.
- Montage 3 points.
- **Rendu non bloquant** : on peut continuer à travailler pendant qu'un projet est transformé en fichier vidéo.
- Des dizaines d'effets et de transitions, utilisables simplement et enregistrables comme effets personnalisés avec leurs réglages pour d'autres projets.
- Effets animables par **images clés**, avec courbes linéaires ou lissées.
- Outils simples pour créer des clips de couleur, de texte et d'image.
- Création automatique de clips depuis un dossier d'images, avec fondus enchaînés entre les images.
- Raccourcis clavier, barres d'outils et dispositions d'interface configurables.
- Scopes audio et vidéo.
- Montage avec **proxys** pour les sources 4K et plus.
- Interface thémable, thèmes sombres.
- … et bien plus.

Voir la [feuille de route de Kdenlive](https://kdenlive.org/roadmap/) pour ce que l'avenir réserve.

## Formats et codecs pris en charge

Aucun besoin d'importer ou de convertir les rushes avant le montage : Kdenlive gère tous les formats et prend en charge les formats, types de fichiers et codecs suivants :

- Caméras et caméscopes basse résolution (DV), y compris le montage DV (Raw et AVI)
- MPEG4-ASP/MP3 (compatible DivX)
- VOB (DVD)
- Tailles d'image 4:3 et 16:9, systèmes PAL et NTSC
- Caméras haute (HD) et ultra-haute (UHD/4K) résolution : MPEG-2, MP4, Matroska, WebM, Apple ProRes 422, HDV
- H264 AAC HDV
- H265
- Montage HDV natif, 720 et 1080, entrelacé ou plein
- Codecs et formats récents : codec sans perte SNOW
- Ogg Vorbis, etc.
- Depuis la version 22.08 : animations LOTTIE et RAWR
- Mélange de sources de résolutions différentes dans un même projet ; Kdenlive adapte la résolution des sources à celle du projet.
- Toute cadence (de 15 à 60 i/s ou plus) ; Kdenlive duplique ou retire des images au besoin.
- Import d'images : PNG, GIF, JPEG (jp2, jpe, jpeg, jpg, jpg2), TGA, TIFF, SVG, WEBP
- Depuis la version 22.08 : AVIF, HEIF, HEIC, JPEG XL
- Export vers la plupart des formats, y compris tout ce que gère ffmpeg : DVD (PAL/NTSC), MPEG-2, MP4 (PAL, NTSC, HD, UHD/4K), Matroska-H264/H265, AAC, AC3, MP3, Apple ProRes 422
- Export en GIF animé ou en séquence d'images (BMP, DPX, JPEG, PNG, PPM, TGA, TIFF, WEBP)
- Sans perte/haute qualité : FFV1, H.264, HuffYUV, Ut Video
- Vidéo avec alpha (Alpha MOV, Alpha VP8, Alpha VP9, Ut Video)

## Voir aussi

- [Kdenlive — installation](../kdenlive-installation/)
- [Kdenlive — démarrage rapide](../kdenlive-quickstart/)
