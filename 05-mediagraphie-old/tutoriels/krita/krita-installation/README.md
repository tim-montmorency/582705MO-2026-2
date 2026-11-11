---
type: "webpage"
author: "Documentation Krita"
date: "2026"
title: "Krita — l'installation"
description: "Le chapitre du manuel Krita sur l'installation : télécharger, installer et mettre à jour selon les plateformes — Windows, macOS et Linux."
url: "https://docs.krita.org/fr/user_manual/getting_started/installation.html"
tags:
  - "image"
  - "krita"
  - "installation"
  - "demarrage"
  - "tutoriel"
status: "stable"
role: "cours"
---
<!-- start-replace-fm field="title" -->
# Krita — l'installation
<!-- end-replace-fm -->
<!-- start-replace-fm field="description" format="blockquote" -->
> Le chapitre du manuel Krita sur l'installation : télécharger, installer et mettre à jour selon les plateformes — Windows, macOS et Linux.
<!-- end-replace-fm -->

<!-- start-replace-mediagraphie-fiche -->
> **Référence** — Documentation Krita (2026). Krita — l'installation.. https://docs.krita.org/fr/user_manual/getting_started/installation.html. [↗](https://docs.krita.org/fr/user_manual/getting_started/installation.html)
>
> | **Type** | webpage |
> | **Auteur·e** | Documentation Krita |
> | **Date** | 2026 |
> | **Statut** | stable |
> | **Mots-clés** | image, krita, installation, demarrage, tutoriel |

**Citation (copier-coller)**

```citation
Documentation Krita (2026). Krita — l'installation.. https://docs.krita.org/fr/user_manual/getting_started/installation.html.
```
<!-- end-replace-mediagraphie-fiche -->

## Cité par

<!-- start-replace-mediagraphie-cited-by -->
- [Installation Krita](../../../../02-activites/00/01-installation/krita/)
<!-- end-replace-mediagraphie-cited-by -->

---
> 🇫🇷 **Traduction française** de la page officielle [Installation](https://docs.krita.org/fr/user_manual/getting_started/installation.html) — la page source n'est pas encore traduite. Adaptation : A26.

## Windows

Les utilisateurs de Windows téléchargent Krita depuis le site web, le Windows Store ou Steam. Les versions Store et Steam sont payantes, mais [fonctionnellement identiques](https://krita.org/en/item/krita-available-from-the-windows-store/) à la version (gratuite) du site web. Contrairement à la version du site, elles bénéficient de mises à jour automatiques à chaque nouvelle version. Après déduction des frais de la boutique, le prix d'achat finance le développement de Krita.

La dernière version est toujours sur notre [site web](https://krita.org/fr/telechargement/).

La page de téléchargement propose automatiquement la bonne architecture (64 ou 32 bits) ; « All Download Versions » donne plus de choix. Pour déterminer votre architecture : **Paramètres ‣ À propos** — l'architecture figure comme **Type du système** dans **Spécifications de l'appareil**.

Par défaut, Krita se télécharge en **installateur EXE**, mais une version **ZIP portable** existe aussi. Contrairement à l'installateur, la version portable n'active pas les aperçus dans l'Explorateur Windows : pour les obtenir, installer aussi l'**extension Windows Shell** de Krita (sur la page de téléchargement).

Ces fichiers sont aussi disponibles dans le [répertoire de téléchargement KDE](https://download.kde.org/stable/krita/).

Payant : Krita existe [sur le Windows Store](https://www.microsoft.com/store/productId/9N6X57ZGRW96) (Windows 10 requis), [sur Steam](https://store.steampowered.com/app/280680/Krita/) et [sur l'Epic Store](https://www.epicgames.com/store/en-US/p/krita).

Pour la version portable : [répertoire KDE](https://download.kde.org/stable/krita/), prendre le ZIP plutôt que le setup.exe.

> **NOTE** — Krita exige Windows 8.1 ou plus récent. La version Store exige Windows 10.

## Linux

Beaucoup de distributions Linux empaquettent la dernière version de Krita — parfois en activant un dépôt supplémentaire. Krita fonctionne bien sous la plupart des environnements de bureau (KDE, GNOME, LXDE, Xfce…) même s'il s'agit d'une application KDE qui a besoin des bibliothèques KDE. Selon la distribution, installer aussi le module de réglages système KDE pour ajuster le thème et les polices de l'interface.

### Nautilus/Nemo — extensions de fichiers

Depuis avril 2016, le gestionnaire de fichiers KDE Dolphin affiche les vignettes KRA et ORA par défaut ; Nautilus et ses dérivés ont besoin d'une extension. [Nous recommandons les extensions de Moritz Molch pour les vignettes XCF, KRA, ORA et PSD](https://moritzmolch.com/1749).

### AppImages

Pour Krita 3.0 et plus : essayer d'abord l'AppImage du [site officiel](https://krita.org/fr/telechargement/). **Dans 90 % des cas, c'est de loin le plus simple pour obtenir le dernier Krita.** Télécharger l'AppImage, la rendre exécutable via les propriétés du fichier ou `chmod`, double-cliquer — et c'est parti. (Ou la lancer dans un terminal : `./nomdelappimage.appimage`)

- Ouvrir un terminal dans le dossier de l'AppImage.
- La rendre exécutable :
```
chmod a+x krita-3.0-x86_64.appimage
```
- Lancer Krita !
```
./krita-3.0-x86_64.appimage
```

Les AppImages sont des ISO avec toutes les bibliothèques nécessaires embarquées : aucun bricolage de dépôts ni de dépendances, au prix d'un peu plus d'espace disque (qui ne serait même pas pris si vous utilisiez Plasma).

### Ubuntu et Kubuntu

Peu importe la version d'Ubuntu : Krita fonctionne. Mais la version des dépôts par défaut est très ancienne — préférer l'AppImage, le Flatpak ou le Snap de la logithèque Ubuntu. Un PPA maintenu fournit les dernières versions : instructions [ici](https://launchpad.net/~kritalime/+archive/ubuntu/ppa).

### OpenSUSE

Les versions stables récentes sont dans le dépôt KDE:Extra : [https://download.opensuse.org/repositories/KDE:/Extra/](https://download.opensuse.org/repositories/KDE:/Extra/)

> **NOTE** — Krita est aussi dans les dépôts officiels : installable via Yast.

### Fedora

Krita est dans les dépôts officiels — via packagekit (Ajouter/Supprimer des logiciels) ou en terminal :

```
dnf install krita
```

La logithèque (GNOME Software, Discover) fonctionne aussi.

### Debian

La dernière version disponible dans Debian est la 3.1.1. En terminal :

```
apt install krita
```

### Arch

Arch Linux fournit le paquet krita dans le dépôt Extra :

```
pacman -S krita
```

Un pkgbuild existe aussi dans les dépôts utilisateur (AUR), sans garantie d'être la dernière version git.

### Flatpak

Un Flatpak existe pour les versions stables, mais il n'est pas maintenu par les développeurs principaux : voir les [mainteneurs Flathub](https://flathub.org/apps/details/org.kde.krita).

Depuis Discover ou la logithèque de votre distribution : télécharger et ouvrir [le fichier flatpakrepo](https://flathub.org/repo/flathub.flatpakrepo), puis chercher Krita. En terminal :

```
flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak --user install flathub org.kde.krita
```

Il y a eu un dépôt KDE flatpak pour les builds nocturnes — abandonné depuis.

### Snaps

Des paquets snap existent, fournis par les développeurs snap d'Ubuntu — généralement pas à jour. Les développeurs de Krita ne les construisent pas eux-mêmes. Installer snapd (par défaut sur Ubuntu), puis Krita apparaît dans la logithèque, ou en terminal :

```
sudo snap install krita
```

> **NOTE** — Les builds Flatpak et Snap ne sont pas testés par les développeurs principaux de Krita : des bugs sont possibles.

## macOS

Le dernier binaire se télécharge sur notre [site web](https://krita.org/download/krita-desktop/). Il exige macOS 10.12 ou plus récent.

## Compiler depuis les sources

Compiler Krita depuis les sources est plus difficile qu'installer un paquet prêt — mais l'effort a ses avantages :

- Suivre le développement d'au plus près : en compilant régulièrement le dépôt de développement, on joue avec toutes les nouvelles fonctions en cours.
- Compiler optimisé pour **son** processeur — la plupart des paquets précompilés visent le plus petit dénominateur commun.
- Recevoir les corrections de bugs au plus vite.
- Aider les développeurs : retours sur les fonctions en cours, tests des corrections — ce qui vaut aux testeurs réguliers leur nom dans la boîte « à propos », au même titre que les développeurs.

Inconvénients : compiler depuis le dépôt de développement inclut les fonctions inachevées — instabilité possible temporaire, éléments d'interface non fonctionnels. En pratique, l'instabilité sérieuse est rare, et revenir à une révision fonctionnelle est facile.

Pour démarrer : les dernières instructions de compilation sont dans le guide [ici](https://docs.krita.org/fr/untranslatable_pages/building_krita.html).

En cas de problème, ou pour un premier essai de compilation, contacter les développeurs de Krita — trois canaux principaux :

- IRC : web.libera.chat, canal #krita
- [liste de diffusion](https://mail.kde.org/mailman/listinfo/kimageshop)
- [Krita Artists](https://krita-artists.org)
