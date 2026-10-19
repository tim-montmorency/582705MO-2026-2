# Architecture — sources of truth & component flows

One artifact, **one canonical repo**. Sites may consume it through different mechanisms, but the canonical repo is always where the code is authored and where fixes go first.

## Repo map

```
UPSTREAM (canonical)                          SITES (consumers)
─────────────────────                         ───────────────────────────
gllmAR/docsify-podcast-player   ──CDN──▶      both sites (player, ts2m4a import)
  (player, ts2m4a, sw.js)        ──copy──▶    sw.js only, in both sites
gllmAR/docsify-remote-repo      ──CDN──▶      both sites (script tag / docsh vendor)
gllmAR/docsify-basepath-fix     ──CDN──▶      both sites (script tag / docsh vendor)
gllm/docsh                      ──submodule─▶ course docsh/
                                ──subtree──▶  sn docsh/ (vendored in-repo)
gllm/balado                     ──submodule─▶ sn balado/ (local builds only)
tim-montmorency/plan-de-cours-typ ──submodule─▶ course plan-de-cours-typ/

tim-montmorency/multimedia-libre/mediagraphie.bib  (source unique BibTeX, `role: cours`)   
                                  ──export-bib──▶ course mediagraphie-cours.bib + 05-mediagraphie/ (hub dérivé, fiches régénérées)
tim-montmorency/sn/mediagraphie   (hub de recherche, modèle domaines — indépendant)

tim-montmorency/582705MO-2026-1   course site (Codeberg Pages)
tim-montmorency/sn                 podcast site (Codeberg Pages)
```

## Consumption mechanisms

| Mechanism | Used by | Update procedure |
|---|---|---|
| **Git submodule** | course: docsh, plan-de-cours-typ, vendor/docsify-podcast-player; sn: balado | `git submodule update --remote`, then bump gitlink + commit |
| **Médiagraphie (source BibTeX)** | course ← multimedia-libre/mediagraphie.bib (export `role: cours`) | `docsh mediagraphie --export-bib mediagraphie-cours.bib --filter role=cours` puis `docsh run` (régénère les fiches) ; `--check` sonde les liens (CI) |
| **Vendored in-repo (git subtree)** | sn: docsh | `make docsh-pull` (subtree merge from `gllm/docsh`) |
| **CDN (gllmar.github.io)** | both: player, remote-repo, basepath-fix (script tags / `docsh vendor`); sw.js `importScripts` ts2m4a from the CDN | push new release to the upstream repo → GitHub Pages → next build/SW update picks it up |
| **Tracked copies** | both sites: `sw.js` only (the SW script must be same-origin) | edit in `docsify-podcast-player`, copy `sw.js` here, commit |

## Source of truth per artifact

| Artifact | Canonical repo | Course site | sn site |
|---|---|---|---|
| player JS | `gllmAR/docsify-podcast-player` | CDN (index.html, generated) | CDN via `docsh vendor` |
| `ts2m4a.js` | `gllmAR/docsify-podcast-player` | CDN (SW `importScripts`) | CDN (SW `importScripts`) |
| `sw.js` | `gllmAR/docsify-podcast-player` (reference) | tracked, SW registered | tracked, SW registered |
| remote-repo | `gllmAR/docsify-remote-repo` | CDN script tag | CDN via `docsh vendor` |
| basepath-fix | `gllmAR/docsify-basepath-fix` | CDN script tag | CDN via `docsh vendor` |
| docsh | `gllm/docsh` | submodule | subtree (vendored in-repo) |
| balado | `gllm/balado` | not used | submodule (episode builds) |
| plan-de-cours-typ | `tim-montmorency/plan-de-cours-typ` | submodule | not used |

## Médiagraphie — flot d'inclusion

```
multimedia-libre/mediagraphie.bib ──export-bib (role=cours)──▶ 05-mediagraphie/mediagraphie-cours.bib
                                        (source maîtresse)      (source unique du cours, committée)
```

À chaque `docsh run`, la passe `mediagraphie` (après `subnav`, **avant**
`includes`) régénère depuis le `.bib` :

1. **les fiches** — frontmatter dérivé, corps préservé ; renommage
   sécuritaire (clé + `alias`) ; fiches orphelines (plus dans le
   `.bib`) **retirées avec `prune`** (`prune = true` dans
   `.docsh.toml` — `[generators.mediagraphie]`), dossiers vides
   nettoyés ;
2. **`annexe-bib.md`** — liste APA triée, références seulement ;
3. **l'index et le graphe** — index du hub, cartes, Cité par,
   Références liées ; les clés canoniques des pages scannées
   (`scan = …`) deviennent des liens relatifs et **chaque lien vers
   une fiche devient une entrée « Cité par »** (lien vers la page
   citante) ;
4. **les citations par clé** — la forme courte
   `[](mediagraphie/<clé>)` devient la citation APA liée (bloc `cite`
   régénérable, une ligne) et le bloc `cite-page` génère la section
   Références de la page (tout ce qu'elle cite).

Le plan de cours inclut `05-mediagraphie/annexe-bib.md`
(`start-replace-include`, `level="1"`) : le site **et** le PDF
embarquent la liste bibliographique. La CI exécute
`docsh mediagraphie --check` (4xx/5xx = échec).

## Download feature (TS→M4A) — where each piece lives

```
player button (canonical: docsify-podcast-player)
  └─ href: same-origin .m4a URL (default .m3u8 → .m4a transform; remote-repo
     resolves codeberg media through Pages URLs)
       ├─ SW in scope (sw.js, tracked) intercepts .m4a
       │    └─ ts2m4a (CDN importScripts) remuxes HLS segments → attachment
       └─ no SW / out of scope → main-thread fallback remux (ts2m4aCdn)
```

## Rules of thumb

1. Fix code **upstream first** (player/remote-repo/docsh/balado repos), then propagate: bump submodule, `make docsh-pull`, `docsh vendor`, or copy the tracked file — whichever mechanism that site uses.
2. Plugins ship from the upstream GitHub repos to the gllmar.github.io CDN automatically (GitHub Pages from `main`); sites reference the CDN or `docsh vendor` — the **only tracked copy in sites is `sw.js`** (a SW script must be same-origin; ts2m4a is `importScripts`-imported).
3. All pushes upstream go over SSH (see AGENTS.md remotes map).
