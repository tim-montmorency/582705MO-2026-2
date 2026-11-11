---
type: "webpage"
author: "Documentation Krita"
date: "2026"
title: "Krita — les formats de fichiers"
description: "Le chapitre du manuel Krita sur les formats de fichiers : compression, métadonnées, ouverture — formats de travail (.kra, .ora, .exr) contre formats de diffusion (JPEG, PNG, WebP), et le cas particulier du vectoriel (SVG)."
url: "https://docs.krita.org/fr/general_concepts/file_formats.html"
tags:
  - "image"
  - "krita"
  - "formats"
  - "compression"
  - "export"
  - "tutoriel"
  - "cours"
status: "stable"
role: "cours"
---
<!-- start-replace-fm field="title" -->
# Krita — les formats de fichiers
<!-- end-replace-fm -->
<!-- start-replace-fm field="description" format="blockquote" -->
> Le chapitre du manuel Krita sur les formats de fichiers : compression, métadonnées, ouverture — formats de travail (.kra, .ora, .exr) contre formats de diffusion (JPEG, PNG, WebP), et le cas particulier du vectoriel (SVG).
<!-- end-replace-fm -->

<!-- start-replace-mediagraphie-fiche -->
> **Référence** — Documentation Krita (2026). Krita — les formats de fichiers.. https://docs.krita.org/fr/general_concepts/file_formats.html. [↗](https://docs.krita.org/fr/general_concepts/file_formats.html)
>
> | **Type** | webpage |
> | **Auteur·e** | Documentation Krita |
> | **Date** | 2026 |
> | **Statut** | stable |
> | **Mots-clés** | image, krita, formats, compression, export, tutoriel, cours |

**Citation (copier-coller)**

```citation
Documentation Krita (2026). Krita — les formats de fichiers.. https://docs.krita.org/fr/general_concepts/file_formats.html.
```
<!-- end-replace-mediagraphie-fiche -->

## Cité par

<!-- start-replace-mediagraphie-cited-by -->
- [Matriciel — résolution et compression](../../../../03-savoirs/01-reconnaitre/03-criteres-qualite-fichiers/01-image/01-matriciel/)
<!-- end-replace-mediagraphie-cited-by -->

---
> 📄 **Réhébergement** — le contenu ci-dessous est la reproduction intégrale de la page officielle [Krita — les formats de fichiers](https://docs.krita.org/fr/general_concepts/file_formats.html) de la documentation Krita, déjà publiée en français par l'équipe de Krita. La source fait foi et est mise à jour en premier ; cette copie peut dater.

## Formats de fichiers

Cette catégorie est spécifique aux formats pour fichiers graphiques. Bien que la plupart des formats de fichiers soient décrits dans Wikipedia, ceci ne donne aucune explication sur le format qui peut être utilisé et quels en sont les avantages et inconvénients.

Dans cette catégorie, les formats vont être détaillé d'une manière compréhensible par les personnes débutantes.

En général, les personnes doivent prêter attention aux les fonctionnalités suivantes selon les formats de fichiers :

### Compression

La compression est une technique pour qu'un format de fichier tente de représenter une image avec aussi peu de données que possible. Ainsi, le fichier résultant est aussi petit que possible sans perdre de qualité.

Comme règle générale, les formats peu volumineux en stockage disque soit réduisent la qualité de l'image, soit ou demande à votre ordinateur beaucoup de temps pour réaliser correctement le rendu de votre image.

Les formats vectoriels de fichiers comme « svg » sont un exemple typique de ces derniers. Ils sont de petite taille car la technologie utilisée pour leur création repose sur les mathématiques. Ainsi, ils n'enregistrent que des variables mathématiques et peuvent fournir une très haute qualité. La contre-partie est que l'ordinateur a besoin de passer beaucoup de temps pour la préparation du rendu et quelquefois, différents programmes possèdent des façons différentes d'interpréter les valeurs. De plus, les formats vectoriels de fichiers nécessitent l'utilisation de graphiques vectoriels, ce qui est une façon différente de travailler, qui n'est pas la spécialité de Krita.

Les [formats de fichiers avec perte](file_formats/lossy_lossless.html#lossy-compression), comme « jpg » et « WebP » sont des exemples pour des images de faible taille sur disque, mais au prix d'une perte de qualité. Ils sont adaptés pour des types bien particuliers d'images. « Avec perte » signifie alors que le format de fichier permet un traitement rapide mais avec des pertes dans la description de votre image pour réduire sa taille.

Les [Formats sans perte ou avec perte](file_formats/lossy_lossless.html#lossless-compression), comme « PNG », « GIF » ou « BMP » sont en comparaison, plus volumineux en stockage disque mais beaucoup plus à même de garantir la qualité.

Then, there's proper working file formats like Krita's ``KRA``, Photoshop's ``PSD``, but also interchange formats like ``ORA`` and ``EXR``. These are the heaviest on the hard-drive and often require special programs to open them up, but on the other hand these are meant to keep your working environment intact, and keep all the layers and guides in them.

### Métadonnées

Les métadonnées dans un format de fichier offrent une possibilité d'embarquer des informations en dehors du contenu actuel de l'image. Elles peuvent être des données lisibles par des personnes, comme une date de création, un nom d'auteur, une description d'image, mais aussi, des données utilisables uniquement par un ordinateur, comme un profil de couleurs « ICC », fournissant à l'ordinateur des informations sur comment restituer les couleurs intégrées dans le fichier.

### Ouverture

Celui-ci est d'une qualité un peu variable. Mais, il est facile à ouvrir ou à réparer et aussi largement pris en charge.

La plupart des formats de fichiers internes, comme « psd » sont totalement fermés. Ceci rend difficile pour des personnes extérieures, l'accès aux données internes sans ouvrir Photoshop. Un autre exemple concerne les fichiers bruts d'appareils photo, possédant des caractéristiques différentes selon leurs fabricants.

Le format de fichier vectoriel « svg » est à l'autre bout du spectre. Il peut être ouvert avec n'importe quel éditeur de texte et modifié.

La plupart des formats sont le résultat de compromis. Il y a aussi un point important concernant la prise en charge large du format. Les formats « jpg » et « png » ne peuvent être lus ou modifiés par une personne humaine. Cependant, une large majorité de programmes peuvent les ouvrir, offrant ainsi un accès facile pour leur propriétaire.

### Contenus

- [*.bmp](file_formats/file_bmp.html)

- [*.csv](file_formats/file_csv.html)

- [*.exr](file_formats/file_exr.html)

- [*.gbr](file_formats/file_gbr.html)

- [*.gif](file_formats/file_gif.html)

- [*.gih](file_formats/file_gih.html)

- [*.heif et *.avif](file_formats/file_heif.html)

- [*.jpg](file_formats/file_jpeg.html)

- [*.jxl](file_formats/file_jxl.html)

- [*.kpl](file_formats/file_kpl.html)

- [*.kra](file_formats/file_kra.html)

- [*.ora](file_formats/file_ora.html)

- [*.pbm, *.pgm et *.ppm](file_formats/file_pbgpm.html)

- [*.pdf](file_formats/file_pdf.html)

- [*.png](file_formats/file_png.html)

- [*.psd](file_formats/file_psd.html)

- [*.hdr](file_formats/file_radiance_hdr.html)

- [*.svg](file_formats/file_svg.html)

- [*.tiff](file_formats/file_tif.html)

- [*.webp](file_formats/file_webp.html)

- [Compressions d'images destructive et sans perte](file_formats/lossy_lossless.html)
