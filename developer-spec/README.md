# Developer handover: Solo5Estrellas.com SEO fixes

Everything here is read-only guidance written from public pages (no code or server access). Baseline on 8 Oct 2026: `verify.sh` 6 passed, 38 failed. Goal: 44 of 44.

## Files
| File | Use |
| --- | --- |
| `IN-PLACE-FIXES.md` | The 10 fixes, in release order, with snippets and checks |
| `verify.sh` | 44 read-only checks; run against staging with `./verify.sh https://staging-host` |
| `titles-descriptions.csv` | Title and description for every template (lengths checked) |
| `REDIRECT-MAPS.md` + 2 CSVs | Slug and legacy-URL redirect rules, with a test set |
| `../style-guide/` | Spanish style guide and place-name list (156 names) |
| `../content/` | Page drafts for the editor, not for the developer |

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

## Rollback
Releases 1 to 2 are template and server settings; revert the change. Release 3 is the only one that changes URLs: keep the old router behind a switch for 48 hours. Never remove a 301 once Google has seen it.

## What SEO checks after each release
| When | Check |
| --- | --- |
| Release day | `verify.sh` count; sitemap fetch status in Search Console |
| +14 days | Coverage: duplicates without a canonical (160 on 8 Oct) and discovered-not-indexed (933) falling |
| +28 days | Impressions and clicks for the Turks & Caicos country page (29 clicks, 8,384 impressions on the legacy URL) |
| +56 days | Average position (17.78 on 8 Oct) and US impressions |

## Questions I need answered
1. Staging URL, or who deploys?
2. English URL pattern on WhataHotel for hotels, cities, regions and countries (fix 8).
3. The slug rule your code uses today (my 270 derived slugs need checking).
4. Is GA4 linked anywhere? It isn't linked in the reporting tool.
5. Can sitemap.xml be generated from the database?
