# Search Console monitoring and audit: 20 October 2026

*Data: 29 Jan to 18 Oct 2026 (SEO Gets). Last 36 hours excluded. Nothing of ours is live, so none of this reflects our work. Page-level sums (54,741 impressions) differ slightly from the site total (54,183) because of how Google attributes rows.*

## 1. Monitoring snapshot
| Metric | 6 Oct baseline | 18 Oct |
| --- | --- | --- |
| Clicks | 124 | 133 |
| Impressions | 47,405 | 54,183 |
| CTR | 0.26% | 0.25% |
| Position | 17.78 | 17.65 |

Indexing sample (5,000 URLs): 2,477 indexed; 1,318 discovered not indexed; 608 unknown to Google; 281 crawled not indexed; 257 duplicate without canonical; 48 redirect; 10 not found; 1 server error; **66 at risk** (not crawled in 90+ days).

## 2. Where the traffic comes from
| Cut | Clicks | Impressions | Position | Read |
| --- | --- | --- | --- | --- |
| Spain | 40 | 15,672 | 17.97 | Largest market |
| Mexico | 16 | 9,501 | 15.56 | |
| United States | 15 | 5,734 | **24.75** | Weakest position of the priority markets |
| Argentina | 11 | 4,941 | 11.30 | |
| Peru, Colombia, Chile, Costa Rica, Ecuador | 22 | ~6,400 | 10 to 14 | Good positions, small volume |
| Mobile | 72 | 20,993 | 12.48 | CTR 0.34% |
| Desktop | 58 | 32,765 | 21.01 | CTR 0.18% |

Latin America ranks on page 1 to 2 (position 10 to 14); the US ranks about 25. The US Hispanic market is the one furthest from page 1.

## 3. Page families
| Family | Pages with impressions | Clicks | Impressions |
| --- | --- | --- | --- |
| Hotels | 2,876 | 62 | 28,650 |
| Chain pages (`/collection/`) | 123 | 11 | 9,069 |
| Legacy `browse_*.cfm` | 61 | 30 | 9,037 |
| Cities | 305 | 1 | 2,445 |
| Regions | 13 | 4 | 2,153 |
| Countries | 74 | 2 | 606 |
| Home | 1 | 17 | 104 |

- **One legacy URL carries the site:** `browse_country.cfm?countryid=64` (Turks & Caicos) has 8,750 impressions (16% of all) and 29 clicks (22% of all) at position 11.85. This is why it gets a single 301 and unchanged content (standing rule).
- **Home** is the only branded win: 17 clicks on 104 impressions (CTR 16.35%, position 5.97).
- **Hotels** are 2,876 pages, 52% of impressions and 47% of clicks, almost all at position 20 or worse.

## 4. Queries
Search Console shows 7,840 queries, but only 32,449 impressions and 17 clicks sit in named queries; the rest are anonymised, so query data is partial.

- **Turks & Caicos cluster:** about ten spelling variants ("hoteles en islas turcas y caicos" 1,333, "hoteles en turks and caicos" 386, "islas turcas y caicos hoteles" 369, "hoteles turks and caicos" 344, "hoteles en turcos y caicos" 344 and others), all at position 10 to 12, with 1 click in total. The page sits at the page 1/page 2 border, so a small gain in position would matter. "mejores hoteles en turks and caicos" is the best performer: 4 clicks, 94 impressions, position 4.4.
- **Chain brand queries in English:** "renaissance hotels" 614 (position 9.6), "aman hotels" 250 (19.8), "fairmont hotels" 215 (54.8), "dorchester collection" 187 (17.5), "kimpton hotels" 150 (33.9), "le meridien hoteles" 174 (9.2): 0 clicks. Searchers are mostly looking for the official hotel brand sites, so expect low CTR even on page 1.
- **City queries:** "hoteles de 5 estrellas en parís" 183 (24.0), "hoteles de 5 estrellas en londres" 150 (14.0).
- **Single-hotel queries:** "mayflower hotel" 323 (9.6), "habitaciones en the chesterfield mayfair" 164 (7.3), "w atlanta downtown" 160 (9.1).
- **Brand-like queries** (about 155 variants of "solo 5 estrellas" and similar): 1,018 impressions, 1 click in named queries.

## 5. Findings from the audit
1. **Duplicate URLs split the signal.** 650 of 2,639 page IDs appear under more than one URL (583 hotels, 48 chain pages, 12 cities, 4 countries, 3 regions). Those IDs hold **24,776 impressions, 45% of the site's total**. Examples: Europe (`Europe.html` 1,022 / `europe.html` 293), Peninsula (3 slugs), Renaissance (3), Necker Island (3), Fairmont (3), Aman (`/collection/21/` as well as `/chains/21/`). This confirms Z1 (no canonicals) and the one-slug-per-ID plan with 301s, and gives it a number.
2. **Legacy `browse_*.cfm` URLs still rank** (61 pages, 9,037 impressions, 30 clicks): needs the redirect map to be released before they drop out.
3. **Position of the pages we drafted** (existing URLs, still unchanged live): Renaissance 9.5 and Mayflower 9.5 are the closest to the top; Peninsula 20, Dorchester 26, Kimpton 35, Fairmont 51.6 are page 2 to 6.
4. **Indexing:** duplicates without a canonical keep rising (160 on 8 Oct, 257 now), 66 pages at risk are mostly hotel pages last crawled between 13 Jun and 21 Jul (list in the Search Console overview), and 1,318 URLs are discovered but not indexed.
5. **Coverage of fixes:** all of the above depend on the developer package (canonicals, redirects, head markup); verify.sh is still 8 of 44.

## 6. What is worth doing, in order
| # | Action | Needs |
| --- | --- | --- |
| 1 | Release the canonical and redirect plan (fixes finding 1 and 2) | Matt / staging |
| 2 | Turks & Caicos: after the single 301, consider a title/description test for the "hoteles en islas turcas y caicos" cluster, with a before/after check at 14, 28 and 56 days | Your decision (page already ranks; risk) |
| 3 | US Hispanic market: no action until the technical release lands, then measure US position again | Release |
| 4 | Re-crawl request for the 66 at-risk pages after release | Release |
| 5 | Link GA4 to measure engagement | Access |

## 7. Limits
Query data covers about 60% of impressions; indexing figures come from a rolling 5,000-URL sample; causes of ranking moves cannot be determined from this data.
