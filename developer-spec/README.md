# Developer handover: Solo5Estrellas.com SEO fixes

Everything here is read-only guidance written from public pages (no code or server access). Baseline: `verify.sh` 8 passed, 36 failed on 23 Oct 2026 (6 and 38 on 8 Oct; the script is unchanged and I could not establish what moved the two checks). Nothing has been released. Goal: 44 of 44.

*Package refreshed 23 Oct 2026.*

## Files
| File | Use |
| --- | --- |
| `IN-PLACE-FIXES.md` | The 11 fixes, in release order, with snippets and checks |
| `verify.sh` | 44 read-only checks; run against staging with `./verify.sh https://staging-host` |
| `titles-descriptions.csv` | Title and description for every template (lengths checked) |
| `titles-descriptions-chains.csv` | Title and description for all 62 chain and collection pages (all 62 now drafted; counts taken from the hotel lists), with flags and the draft folder |
| `page-metadata-drafts.csv` | Title, description, H1 and target URL for every drafted page (71 rows) |
| `SCHEMA-HOTEL.md` | Hotel and breadcrumb JSON-LD, social tags, what to remove |
| `REDIRECT-MAPS.md` + 3 CSVs | Slug and legacy-URL redirect rules, with test sets; `redirects-observed-search-console.csv` is the newest (23 Oct): 1,404 URLs for 650 page IDs, with impressions |
| `hreflang-map.csv` | English WhataHotel URL for every drafted page (213 rows; the live English tag works on the chain pages, returns 404 on the 12 region pages and points to the home page on the 131 country pages; the working URL is listed) |
| `CMS-DATA-ISSUES.md` | Data problems that sit in the CMS records, not in templates (slug typos, markup in names, empty locations, hand-typed counts) |
| `../style-guide/` | Spanish style guide and place-name list (156 names) |
| `../content/` | 62 chain pages, 12 region pages, 131 country pages (`content/paises/`, index in `INDEX.md`), hub and city drafts: for the editor, not for the developer |

## Release plan
| Release | Contents | Done when |
| --- | --- | --- |
| 1 (same day, low risk) | Fix 1 head markup, fix 2 canonical, fix 7 titles and descriptions | View source shows one valid description, one canonical, a Spanish title on a hotel, a city and a chain page |
| 2 | Fix 3 host and HTTPS 301, fix 6 sitemap and robots | `http` and the other host return 301; robots has a Sitemap line; sitemap lists the real pages |
| 3 | Fix 4 slugs and 404s, fix 5 legacy URLs (see `REDIRECT-MAPS.md`) | Redirect test set passes; unknown IDs return 404 |
| 4 | Fix 8 hreflang, fix 9 encoding, fix 10 headers and cookies | `verify.sh` 44 of 44 |

Order reason: release 1 fixes what every page shares and can't break a URL; release 3 changes URLs, so it ships alone and gets watched.

## Checklist for each release
1. Run `verify.sh` on staging; save the output.
2. Spot-check 5 URLs: home, a city, a hotel, a chain, a legacy `browse_*` URL.
3. Check the page still renders and booking still loads (these fixes touch only the head, headers and routing).
4. Deploy; run `verify.sh` on production; send the output to SEO.
5. Request a recrawl in Search Console for the home page and one page of each template.

Pages that already rank (Taj, Turks & Caicos, Langham, W Hotels, Signature Collection, Regent, Rocco Forte) get a single 301 step and unchanged content in release 3; the list is in `REDIRECT-MAPS.md`.

## What the 23 Oct audit adds
- **650 page IDs are served under more than one URL** (583 hotels, 48 chain pages, 12 cities, 4 countries, 3 regions) and hold about 25,600 impressions, around 45% of the site. This is the strongest argument for release 1 (canonical) and release 3 (one slug per ID).
- The legacy `browse_country.cfm?countryid=64` page carries 16% of impressions and 22% of clicks: handle it first and alone.
- Position in the United States is about 25, against 10 to 14 in Latin America; re-measure after release 1.

## Rollback
Releases 1 to 2 are template and server settings; revert the change. Release 3 is the only one that changes URLs: keep the old router behind a switch for 48 hours. Never remove a 301 once Google has seen it.

## What SEO checks after each release
| When | Check |
| --- | --- |
| Release day | `verify.sh` count; sitemap fetch status in Search Console |
| +14 days | Coverage: duplicates without a canonical (160 on 8 Oct, 257 on 17 Oct) and discovered-not-indexed (933 on 8 Oct, 1,318 on 17 Oct) falling |
| +28 days | Impressions and clicks for the Turks & Caicos country page (29 clicks, 8,750 impressions on the legacy URL to 18 Oct) |
| +56 days | Average position (17.78 on 6 Oct, 17.65 on 18 Oct) and US impressions |

## Questions I need answered
1. Staging URL, or who deploys?
2. English URL pattern on WhataHotel (fix 8). Public pages already emit `hreflang="en"` pointing to the same ID on WhataHotel (e.g. `/collection/21/aman-hotels-resorts.html` points to `https://whatahotel.com/collection/21/Aman-Hotels-Resorts.html`, status 200), so the pattern is `{type}/{id}/{English-Slug}.html`. What is missing is the matching `es` self tag and `x-default`; please confirm the English slug is stored per record.
3. The slug rule your code uses today (my 270 derived slugs need checking).
4. Is GA4 linked anywhere? It isn't linked in the reporting tool.
5. Can sitemap.xml be generated from the database?
