---
type: "webpage"
author: "Documentation Krita"
date: "2026"
title: "Krita — l'audio pour l'animation"
description: "Importer une bande sonore dans Krita pour synchroniser l'animation : dialogue ou musique, lecture pendant la scrutation, volume et export avec audio."
url: "https://docs.krita.org/fr/reference_manual/audio_for_animation.html"
tags:
  - "image"
  - "son"
  - "krita"
  - "animation"
  - "audio"
  - "synchronisation"
  - "tutoriel"
status: "stable"
role: "cours"
---
<!-- start-replace-fm field="title" -->
# Krita — l'audio pour l'animation
<!-- end-replace-fm -->
<!-- start-replace-fm field="description" format="blockquote" -->
> Importer une bande sonore dans Krita pour synchroniser l'animation : dialogue ou musique, lecture pendant la scrutation, volume et export avec audio.
<!-- end-replace-fm -->

<!-- start-replace-mediagraphie-fiche -->
> **Référence** — Documentation Krita (2026). Krita — l'audio pour l'animation.. https://docs.krita.org/fr/reference_manual/audio_for_animation.html. [↗](https://docs.krita.org/fr/reference_manual/audio_for_animation.html)
>
> | **Type** | webpage |
> | **Auteur·e** | Documentation Krita |
> | **Date** | 2026 |
> | **Statut** | stable |
> | **Mots-clés** | image, son, krita, animation, audio, synchronisation, tutoriel |

**Citation (copier-coller)**

```citation
Documentation Krita (2026). Krita — l'audio pour l'animation.. https://docs.krita.org/fr/reference_manual/audio_for_animation.html.
```
<!-- end-replace-mediagraphie-fiche -->

## Cité par

<!-- start-replace-mediagraphie-cited-by -->
- [Corpus sonore — montage et audio](../../../../02-activites/03/corpus-sonore/)
- [Exercice — Synchronisation son/image](../../../../02-activites/03/exercices/09-synchronisation-son-image/)
- [Exercice — Sonoriser une animation](../../../../02-activites/03/exercices/11-sonoriser-une-animation/)
<!-- end-replace-mediagraphie-cited-by -->

---

> 🇫🇷 **Traduction française** de la page officielle [Audio for Animation](https://docs.krita.org/fr/reference_manual/audio_for_animation.html) — la page source n'est pas encore traduite. Adaptation : A26.

Dans Krita, on peut charger un **fichier audio** dans le document pour synchroniser l'animation avec un dialogue ou une musique. La fonction est accessible depuis le **menu audio** de la barre de titre du panneau **Chronologie d'animation**.

## Importer un fichier audio

Krita prend en charge plusieurs types de fichiers audio : **WAV, FLAC, OGG, MP3** et d'autres.

Pour charger un fichier audio dans le document, ouvrir d'abord la **chronologie d'animation** (*Animation Timeline*).

À droite de la barre d'outils de la chronologie se trouve le bouton **Menu audio**, avec une icône en forme de **haut-parleur**. C'est là qu'on gère l'audio de Krita : charger et retirer les pistes, régler le volume de lecture.

Le menu audio propose :

- **Load Audio File** — charger un fichier audio ;
- **Remove Audio File** — retirer le fichier audio ;
- **Mute Audio** — couper le son ;
- un **curseur de volume**.

> **Attention** — Krita n'enregistre dans le document que **l'emplacement (le chemin) du fichier audio**. Si le fichier est déplacé ou renommé après avoir été référencé dans une animation, Krita ne le retrouve plus : il faut le **recharger manuellement**. Krita signale le fichier déplacé ou supprimé à la prochaine ouverture du fichier `.kra`.

## Utiliser l'audio

Une fois l'audio importé, on peut **parcourir les images** (*scrub*) de la chronologie : Krita joue le fragment audio associé à l'image demandée. En lecture, l'audio se joue en même temps que l'animation — le son est **synchronisé** avec les changements d'image.

À ce jour, l'interface de Krita n'affiche **pas de forme d'onde** : on cale les images clés **à l'oreille**, en s'aidant de la scrutation et des repères du son.

## Exporter avec l'audio

Pour inclure l'audio dans la vidéo exportée, cocher **Inclure l'audio** (*Include Audio*) dans les options de **Fichier ‣ Rendre l'animation**. Vérifier la case avant de rendre — et c'est prêt.

> **Note du cours** — Krita lit une piste audio pour **caler les images**, mais n'affiche pas de forme d'onde et son export audio reste sommaire. Pour un **montage sonore synchronisé**, préférer un éditeur vidéo — **Kdenlive** ou **Shotcut** : on y voit les pistes, on cale le son et l'image, on vérifie la synchronisation et on exporte. Krita reste l'outil de l'animation ; l'éditeur vidéo, celui du montage final (voir [l'intégration](../../../../03-savoirs/02-utiliser/04-exploitation-logiciels/04-integration/)).

> **VOIR AUSSI** — [La chronologie d'animation](../krita-animation-timeline/) · [Krita — le rendu de l'animation et FFmpeg](../krita-render-animation/) · [Krita — l'animation 2D](../krita-animation-2d/)
