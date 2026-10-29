# Solo5Estrellas SEO: start here (29 October 2026)

Everything the SEO work needs, in one place. Nothing here is live yet: these are drafts, specifications and reports. The developer release is the step that turns them into results.

## 1. What to do, by owner

### Developer (Matt): technical fixes
| Step | What | File |
| --- | --- | --- |
| 1 | Read the package README, then apply fixes in release order | `developer-spec/README.md`, `developer-spec/IN-PLACE-FIXES.md` (13 fixes) |
| 2 | Release 1 (template only): broken meta title tag, canonicals, Spanish titles and descriptions, hotel template (English titles, NULL perks, login wall) | Fixes 1, 2, 7, 12; titles in `developer-spec/page-metadata-drafts.csv` (233 pages), `titles-descriptions-chains.csv`, `titles-descriptions.csv` |
| 3 | Redirects: http to https 301, one host, one slug per ID, legacy `browse_*.cfm` URLs, The Plaza 301 | Fixes 3 to 5 and 13; `redirects-duplicate-slugs.csv`, `redirects-legacy-browse.csv`, `redirects-observed-search-console.csv` (1,404 URLs, test set), `REDIRECT-MAPS.md` |
| 4 | Sitemap, robots, hreflang, encoding, headers | Fixes 6, 8 to 10; `hreflang-map.csv` |
| 5 | Hotel schema | `SCHEMA-HOTEL.md` |
| 6 | Data fixes in the CMS | `CMS-DATA-ISSUES.md` |
| 7 | Check after every step | `verify.sh` (49 checks; 8 pass today) |
| | Everything above in one file to send | `dist/solo5estrellas-developer-package.zip` |

### Editor: decisions and review
| What | File |
| --- | --- |
| 37 decisions on hotel and country records (dropdowns) | `outreach/editor-decision-sheet.xlsx` |
| Review the Spanish drafts before publishing (style rules) | `style-guide/ES-STYLE-GUIDE-v1.md`, `style-guide/place-names-es.csv` |
| Review the top 20 hotel titles and descriptions | `content/hoteles-top20/` |

### Client (you): approvals and access
| What | File or note |
| --- | --- |
| Send the developer package to Matt | `dist/solo5estrellas-developer-package.zip` |
| Programme confirmation emails (16 programmes; recipients needed) | `outreach/programme-confirmation-pack.md` |
| Search Console data: SEO Gets Core Site or weekly exports (next due Mon 3 Nov) | `reports/2026-10-27-weekly-check.md` lists the exports |
| Open decisions list | `EOD/2026-10-29-EOD.md` |

### SEO / content: drafts ready to publish (after release 1)
| Page type | Count | Folder |
| --- | --- | --- |
| Brand (chain) pages | 62 | `content/<brand>/` (e.g. `content/four-seasons/`) |
| Region pages | 12 | `content/europa/`, `asia-pacifico/`, `africa/`, `oceania/`, `caribe/`, `centroamerica/`, `norteamerica/`, `sudamerica/`, `hawai/`, `mexico/`, `canada/`, `oriente-medio/` |
| Country pages | 131 | `content/paises/` (index: `content/paises/INDEX.md`) |
| Turks & Caicos country page | 1 | `content/islas-turcas-y-caicos/` |
| City pages | 4 | `content/londres/`, `paris/`, `nueva-york/`, `miami/` (notes: `content/city-hubs-NOTES.md`) |
| Hotel page | 1 | `content/four-seasons-madrid/` |
| Comparison guide | 1 | `content/four-seasons-vs-ritz-carlton/` |
| Missing content list | 1 | `content/z12-missing-content/` |
| All titles and descriptions | 233 pages | `content/page-metadata.csv` |
| Keyword to page map | | `content/keyword-page-map.csv` |

Each folder holds the copy (`.md`), ready HTML (`.html`), structured data (`.jsonld`), notes (`NOTES.md`) and, in the previews zip, a `preview.png`.

### Next content (planned)
| What | File |
| --- | --- |
| 9 content briefs (Turks & Caicos sections, 5-star city titles, brand pages, hotel layout, perks guide) | `content/briefs/2026-10-29-content-briefs.md` |
| Content calendar, 2 Nov 2026 to 25 Jan 2027 (16 items) | `content/briefs/content-calendar-nov-2026-jan-2027.md` / `.csv` |

## 2. Reports
| Report | File |
| --- | --- |
| SEO audit, 29 Oct (latest; summary, keywords, issues, action plan) | `reports/2026-10-29-seo-audit.md` |
| Full site audit and action plan (PDF and md) | `solo5estrellas.com-audit/` |
| Search Console audit, 20 Oct | `reports/2026-10-20-search-console-audit.md` |
| Weekly checks (17, 20, 27 Oct) and earlier reports | `reports/` |
| Search Console export used (27 Oct) | `reports/search-console-exports-2026-10-27/` |
| Daily EOD notes | `EOD/` |

## 3. Tracker
`Solo5Estrellas_SEO_Tracker.xlsx`: 172 findings (master tracker), completed work D1 to D110, page metadata, EOD log, dashboard.
