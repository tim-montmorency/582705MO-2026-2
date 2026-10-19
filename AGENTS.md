# AGENTS.md — 582705MO-2026-1 (Cégep Montmorency, cours multimédia)

## Project overview

Docsify 5 course website. Built with [docsh](https://codeberg.org/gllm/docsh) preprocessor. **Cross-repo layout, sources of truth and component flows: see [ARCHITECTURE.md](./ARCHITECTURE.md).** Corpus (`10-corpus/`) and podcast (`07-balado/`) content live in the [sn](https://codeberg.org/tim-montmorency/sn) remote repo and are served at runtime via `docsify-remote-repo` — no local copies, no submodule clones.

Pour créer un nouveau cours : voir [docsify-gabarit-cours/AGENTS.md](https://codeberg.org/tim-montmorency/docsify-gabarit-cours) (procédure de création, `docsh init`, migration d'un cours existant).

## Build & dev commands

```bash
# Setup docsh (first time)
cd docsh && python3 -m venv .venv && . .venv/bin/activate && pip install -e .
# macOS 26 (Tahoe): brew python's venv/pip is broken (truststore mac_ver bug);
# use uv instead:  cd docsh && uv venv .venv && uv pip install -e .

# Regenerate site: sidebar, sitemap, TOML variables, subnav
. docsh/.venv/bin/activate && docsh run

# Regenerate index.html, theme.css, OG image (NOT done by docsh run)
. docsh/.venv/bin/activate && python3 -c "
import sys; sys.path.insert(0, 'docsh/src')
from docsh.init import generate, InitConfig
from pathlib import Path
desc = ('Ce cours de création multimédia vise à réaliser des projets artistiques '
        'en utilisant des logiciels de création Libres ou gratuits.')
generate(Path('.'), config=InitConfig(
    name='Introduction à la création multimédia',
    title='Introduction à la création multimédia',
    description=desc,
    author='Guillaume Arseneault',
    theme_color='#ff5555',
    lang='fr',
    base_path='/582705MO-2026-1',
    repo='https://codeberg.org/tim-montmorency/582705MO-2026-1',
))
"
```

## Remote content (docsify-remote-repo)

All corpus + balado content is fetched from `codeberg.org/tim-montmorency/sn` at runtime via the `docsify-remote-repo` plugin (CDN script tag, before docsify) — no local copies, no submodule clones. Everything is served through explicit `/remote/` paths (the plugin resolves routes relative to the remote repo root):

```markdown
* [Corpus multimédia libre](/remote/codeberg.org/tim-montmorency/sn/corpus/)
* [SN — Balado](/remote/codeberg.org/tim-montmorency/sn/)
```

The `sn` repo is the single upstream for that content; fixes go there first (SSH push), the site picks them up on next load.

## Plan de cours PDF — output naming

The plan-de-cours PDF is compiled by `docsh run`/`docsh typst` from `00-plan-de-cours/plan-de-cours.typ` and named from `variable_expansion.toml` via `[generators.typst] pdf_name`:

```
{numero}-{titre}-{session}-{auteur}.pdf
→ 582705MO-Introduction-a-la-creation-multimedia-A26-GA-EGL.pdf
```

- `{numero}` — `NUMERO_COURS`, sanitized (spaces removed)
- `{titre}` — `TITRE`, slugified (no accents, hyphens)
- `{session}` — `SESSION` as season code + 2-digit year (A automne, H hiver, E été, P printemps)
- `{auteur}` — `AUTEUR` initials

The `pdf:` frontmatter key on `00-plan-de-cours/README.md` drives the docsify-pdf-link download button and must match the generated name.

## Download links (TS→M4A)

Remote-repo resolves codeberg media through same-origin Pages URLs, so the download button's default `.m3u8 → .m4a` transform yields a valid link. `sw.js` (tracked; ts2m4a imported from the plugin CDN) answers `.m4a` URLs by remuxing the HLS segments. When the link is outside the controlling SW's scope (e.g. `/sn/…` on this site), the player falls back to a main-thread remux. No `.m4a` is stored in any repo. See `docsify-podcast-player` README.

## Critical conventions

### Links must point to directories, never to README.md

```
# WRONG
[Article](./foo/README.md)
# CORRECT
[Article](./foo/)
```

### TOML variable markers: indentation matters

The closing `<!-- %; -->` must have the **exact same indentation** as the opening `<!-- %: KEY -->`.

### Subnav template=table syntax

```
<!-- start-replace-subnav template=table col-title="Article" col-subtitle="En bref" -->
<!-- end-replace-subnav -->
```

Subtitles are auto-extracted from `> **bold text** — description`.

## Source of truth

- `variable_expansion.toml` — all course metadata (title, dates, evaluations, blocks). Everything derives from this.
- No duplicate TOML keys.

## Médiagraphie — gestion

La source unique de la médiagraphie du cours est le fichier
**`05-mediagraphie/mediagraphie-cours.bib`** (BibTeX) : docsh régénère les fiches du
hub local (`05-mediagraphie/`) à chaque run — le frontmatter dérive du
`.bib`, le corps des fiches (contenu afférent, liens enrichis) est
préservé. Ne pas éditer le frontmatter des fiches ici : éditer le
`.bib` (ou la source, multimedia-libre).

Champs du `.bib` ↔ frontmatter OKF (table complète dans
`multimedia-libre/AGENTS.md`) : `author`→author, `year`→date,
`title`, `abstract`→description, `url`→url/resource, `publisher`,
`keywords`→tags, `status`, `role`, `selection` (annexe essentiel),
`genre` (tri APA), `docsh_type`/`docsh_slug`/`secteur` (dossier),
`alias` (renommage), et les champs OKF `sources` (pipe `;`),
`verified` (`at:by`), `generated`, `stale_after` — tous conservés à la
régénération (docsh ≥ 95a0441).

```bash
# après un changement dans multimedia-libre/mediagraphie.bib :
cd ../multimedia-libre && docsh mediagraphie --export-bib ../582705MO-2026-1/05-mediagraphie/mediagraphie-cours.bib --filter role=cours && cd -
docsh run                       # régénère les fiches depuis le .bib
docsh mediagraphie --check      # sortie non nulle si lien mort — étape CI
                                # optionnelle, désactivée par défaut
                                # (variable de dépôt MEDIAGRAPHIE_CHECK=1)
```

- **Renommage sécuritaire** : changer la clé dans le `.bib` + ajouter
  `alias = {ancienne-clef}` — docsh déplace la fiche, le corps voyage
  intact et l'ancienne clé résout encore.
- **Fiches orphelines** : `prune = true` (`[generators.mediagraphie]`)
  retire à chaque run les fiches absentes du `.bib` — inutile de les
  supprimer à la main.
- **Annexe APA** : `05-mediagraphie/annexe-bib.md` est générée depuis
  le .bib (liste triée par genre — tutoriels groupés par logiciel,
  références seulement ; chaque objet est lié vers sa fiche, l'URL
  cliquable vers la source) — le plan de cours l'inclut ; le PDF
  embarque la liste au format académique.

### Comment citer dans les pages du cours

**Règle d'or : clés canoniques, jamais de chemins.** Toute référence à
une fiche passe par sa clé (`videos/rip-a-remix-manifesto`,
`livres/itten-art-de-la-couleur`) ; docsh résout la clé → lien relatif
depuis la page citante (repli par slug si la fiche bouge).

| Intention | Syntaxe | Rendu |
|---|---|---|
| Citation complète (APA) | `[](mediagraphie/k)` | `[Gaylor, Brett (2008) - RIP!…](chemin) [ONF](url)` |
| Entité (logiciel, personne…) | `[](mediagraphie/logiciels/3d/blender)` | `[Titre](chemin)` — jamais d'APA |
| Lien de navigation (pas une citation) | `[label](mediagraphie/k)` (forme clé) | label conservé, cible recalculée |

Le slug terminal seul suffit quand il est unique ; `docsh mediagraphie
--cite <clé>` imprime la forme courte et la citation rendue.

**Section Références d'une page** — liste auto de tout ce que la page
cite (biblio seulement, dédupliqué, trié auteur/date) ; les pages des
savoirs qui citent des références portent cette section :

```markdown
## Références

<!-- start-replace-cite-page -->
<!-- end-replace-cite-page -->
```

Attribut optionnel `keys="k1,k2"` pour compléter avec des fiches non
liées dans le corps. Les entités sont ignorées par la liste. Le graphe
« Cité par » est automatique : chaque lien du corps vers une fiche (y
compris les citations inline) enregistre la page citante.

**Règles** : clé irrésolue → avertissement, contenu intact (corriger la
clé, pas le rendu) ; jamais de citation dans un bloc généré ;
`docsh run` deux fois → 0 modification la seconde.

## File structure

| Directory | Purpose |
|---|---|
| `00-plan-de-cours/` | Course syllabus |
| `01-deroulement/` | 15 weekly session pages — each lists the essential knowledge (D.I.) covered, linked to its learning block |
| `02-activites/` | 4 TP pages |
| `03-savoirs/` | Essential knowledge — one folder per competency element (`01-reconnaitre/`, `02-utiliser/`), one subfolder per savoir (D.I.-strict page + application subfolders) |
| `04-evaluations/` | 12 evaluation pages (formatives + sommatives) + one `grille/` per EVS (criteria distributed over competency elements and D.I.) |
| `05-mediagraphie/` | Local OKF médiagraphie hub (docsh-generated index and citation graph) |
| `06-piea/` | Institutional policy |
| `07-journal-de-bord/` | Student logbook — guide, entry template, directory, essay presentation surface (Markdown repos rendered via docsify-this.net) |
| `docsh/` | Git submodule — docsh preprocessor |
| `plan-de-cours-typ/` | Git submodule — Typst PDF template |
| `sw.js` | Tracked service worker — synthesizes `.m4a` downloads from sn HLS segments (ts2m4a imported from the plugin CDN) |

## Plugins (CDN par défaut — « upstream online first »)

**Par défaut, on ne vende PAS les plugins** : rien n'est téléchargé,
aucun sous-module de plugin, aucune étape CI — les plugins (player,
remote-repo, basepath-fix…) sont servis depuis le CDN
`gllmar.github.io` et `docsh init` régénère les `<script>` dans
`index.html` (aller-retour préservant la config ; `--podcast-download-sw`
émet l'enregistrement du sw.js). L'auto-hébergement est un choix
**explicite**, réservé aux cas particuliers (hébergement hors réseau,
site figé) :

```bash
docsh vendor                    # télécharge les assets CDN → vendor/
docsh vendor --revert           # restaure les URL CDN (annule)
```

## Submodule workflow

```bash
# docsh changes (in docsh/)
cd docsh
git add -A && git commit -m "..." && git push origin HEAD:main
cd ..
git add docsh && git commit -m "docsh: bump submodule"
```

## Upstream contributions — always SSH

Every push to an upstream repo goes over SSH (no https/token pushes). Remotes map:

| Repo | Owner | SSH URL |
|---|---|---|
| `582705MO-2026-1`, `sn`, `plan-de-cours-typ` | tim-montmorency (Codeberg) | `ssh://git@codeberg.org/tim-montmorency/<repo>.git` |
| `docsh` | gllm (Codeberg) | `ssh://git@codeberg.org/gllm/<repo>.git` |
| `docsify-remote-repo`, `docsify-podcast-player`, `docsify-basepath-fix` | gllmAR (GitHub, aka gllmar) | `git@github.com:gllmAR/<repo>.git` |

`git submodule sync` keeps submodule remotes aligned with `.gitmodules`; never commit a submodule URL change without syncing local clones.

### Stay latest & upstream-synced

Submodules track the `main` branch of their upstream. Routine sync:

```bash
# pull latest superproject, then advance every submodule to upstream main
git pull --ff-only
git submodule update --init --depth=1 docsh plan-de-cours-typ
git submodule update --remote   # advance checkouts to origin/main
git add docsh plan-de-cours-typ  # record the new gitlinks
git commit -m "sync: bump submodules to latest upstream"
git push origin main            # SSH
```

Rules:
- Only `--ff-only` pulls; rebase local work instead of merge commits.
- Bump the superproject gitlink in the same commit as any regenerated output (run `docsh run` when docsh itself changed).
- Upstream fixes go to the plugin repo first (`git push` from inside the submodule), then the bump commit lands here.
