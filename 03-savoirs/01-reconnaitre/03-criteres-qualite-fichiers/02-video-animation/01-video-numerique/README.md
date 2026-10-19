---
title: "La vidéo numérique — codec, contenant, compression"
description: "Images par seconde, codec vs contenant, compression intra et temporelle — comprendre le fichier vidéo."
tags:
  - "video"
  - "animation"
  - "codec"
  - "formats"
---

# La vidéo numérique — codec, contenant, compression

> Une vidéo numérique, c'est une suite d'images (et souvent du son) découpée dans le temps, puis **compressée** dans un fichier — comprendre **codec**, **contenant** et **compression**.

## Une vidéo, c'est du temps découpé

- Une **cadence** (12, 24, 30 i/s) : le nombre d'images par seconde.
- Chaque image est une image numérique **matricielle** — comme une photo.
- Le **son** est une piste à part, **échantillonnée**.
- Le tout est **compressé** : sans compression, une minute de vidéo HD pèserait plusieurs Go.

## Codec ≠ contenant

| | **Codec** | **Contenant** |
|---|---|---|
| Rôle | **compresser/décompresser** les images et le son | **emboîter** les flux (vidéo, audio, sous-titres, métadonnées) |
| Exemples | H.264, H.265/HEVC, VP9, AV1, ProRes | MP4, MKV, WebM, MOV |
| Analogie | la langue | l'enveloppe |

-  <!-- start-replace-cite key="termes/codec" -->[Codec](../../../../../05-mediagraphie/termes/codec/ "Algorithme de compression/décompression — H.264, AV1, Opus… le cœur des formats médias.")<!-- end-replace-cite --> — l'algorithme qui compresse et décompresse.
-  <!-- start-replace-cite key="termes/contenant" -->[Contenant (container)](../../../../../05-mediagraphie/termes/contenant/ "Le fichier qui emboîte les flux encodés — MP4, MKV, WebM… avec leurs codecs.")<!-- end-replace-cite --> — le fichier qui emboîte les flux.

**L'erreur la plus courante** : confondre le **codec** et le **contenant** à cause de l'**extension de fichier**. L'extension (`.mp4`, `.webm`, `.mkv`) désigne le **contenant**, pas le codec. Un même `.mp4` peut contenir du **H.264**, du **H.265** ou de l'**AV1** ; un même codec peut vivre dans plusieurs contenants. D'où la formulation précise : « **H.264 dans MP4** ».

## La compression vidéo : intra et temporelle

Une vidéo est une suite d'images **très proches** les unes des autres. Deux stratégies complémentaires (fiche <!-- start-replace-cite key="termes/compression-video" -->[Compression vidéo](../../../../../05-mediagraphie/termes/compression-video/ "Réduire le poids d'une vidéo : compression intra-image (spatiale, chaque image indépendante) et inter-image (temporelle, on ne stocke que les différences) — im…")<!-- end-replace-cite -->) :

- **Compression intra-image (spatiale)** : chaque image est compressée **indépendamment**, comme une image fixe (JPEG). On la retrouve dans les codecs de montage (ProRes, DNxHD) et les réglages « all-intra » : facile à découper image par image, mais **plus lourd**.
- **Compression inter-image (temporelle)** : on ne stocke que les **différences** entre images. On distingue :
  - l'**image I** (*intra*, l'**image clé**) : une image complète, point de départ ;
  - l'**image P** (*prédictive*) : décrite à partir de l'image précédente ;
  - l'**image B** (*bidirectionnelle*) : décrite à partir des images avant **et** après ;
  - le **GOP** (*Group of Pictures*) : le groupe d'images entre deux images I (fiche <!-- start-replace-cite key="termes/gop" -->[GOP (Group of Pictures)](../../../../../05-mediagraphie/termes/gop/ "GOP (Group of Pictures) : le groupe d'images entre deux images clés — la structure de la compression temporelle, avec images I (intra), P (prédictives) et B (b…")<!-- end-replace-cite -->).

La compression temporelle **pèse beaucoup moins lourd**, mais rend le découpage plus délicat : couper au milieu d'un GOP oblige le logiciel à recalculer. C'est pourquoi on monte « sur les images clés ».

- **Avec perte** (H.264, AV1) ou **sans perte** (rare en vidéo).
- Le **débit** (*bitrate*) : la quantité de données par seconde — **constant (CBR)** ou **variable (VBR)**. Plus le débit est élevé, meilleure est la qualité… et plus le fichier est lourd.

## En pratique pour le cours

- **Exporter en MP4/H.264** : le meilleur compromis pour le **web** (lu partout — navigateurs, mobile).
- **GIF** : pour une animation simple, qui boucle (voir [Le GIF](../02-gif/)).
- Vérifier **cadence**, **résolution** et **débit** : voir [Optimiser une vidéo](../../../../02-utiliser/05-optimisation-medias/02-video-animation/) et [Critères de qualité — vidéo et animation](../).

## Références

<!-- start-replace-cite-page -->
- [Codec](../../../../../05-mediagraphie/termes/codec/ "Algorithme de compression/décompression — H.264, AV1, Opus… le cœur des formats médias.")
- [Compression vidéo](../../../../../05-mediagraphie/termes/compression-video/ "Réduire le poids d'une vidéo : compression intra-image (spatiale, chaque image indépendante) et inter-image (temporelle, on ne stocke que les différences) — im…")
- [Contenant (container)](../../../../../05-mediagraphie/termes/contenant/ "Le fichier qui emboîte les flux encodés — MP4, MKV, WebM… avec leurs codecs.")
- [GOP (Group of Pictures)](../../../../../05-mediagraphie/termes/gop/ "GOP (Group of Pictures) : le groupe d'images entre deux images clés — la structure de la compression temporelle, avec images I (intra), P (prédictives) et B (b…")
<!-- end-replace-cite-page -->
