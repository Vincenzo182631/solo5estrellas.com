# Weekly Search Console check: 17 October 2026

*Data pulled 17 Oct. Search Console runs to 15 Oct (the last 36 hours are incomplete). Nothing of ours is live, so none of the changes below comes from our work.*

## Totals (29 Jan to date)
| Metric | 6 Oct baseline | To 13 Oct | To 15 Oct |
| --- | --- | --- | --- |
| Clicks | 124 | 128 | 130 |
| Impressions | 47,405 | 51,617 | 52,621 |
| CTR | 0.26% | 0.25% | 0.25% |
| Average position | 17.78 | 17.62 | 17.60 |

Since the baseline: +6 clicks, +5,216 impressions, position 0.18 better. Last 7 days (9 to 15 Oct): 4 clicks, on 9, 11, 14 and 15 Oct (1 each); daily impressions 384 to 928.

## Week on week (page-level sums, 9 to 15 Oct against 2 to 8 Oct)
| Page family | 2 to 8 Oct (impressions) | 9 to 15 Oct (impressions) |
| --- | --- | --- |
| Hotels | 2,375 | 2,455 |
| Chain pages (`/collection/`) | 1,398 | 638 |
| Regions | 94 | 224 |
| Cities | 63 | 153 |
| Turks & Caicos legacy page (`browse_country.cfm?countryid=64`) | 182 | 202 |
| Total | 4,230 | 3,795 (clicks 3 to 4) |

**Biggest risers:** North America region page (0 to 94), The Mayflower hotel (115 to 181), New York city page (0 to 60), Necker Island (11 to 56), Mallorca city page (0 to 38). **Biggest fallers:** Renaissance (407 to 108), Rosewood (146 to 17), Autograph (102 to 9), Le Méridien (88 to 17), Montage (69 to 30).

## The chain-page fall is a spike ending, not a ranking drop
The standing rule says to investigate a drop on chain pages before drafting more. Daily data for the two largest fallers:
- **Renaissance** (`/collection/70/`): 163 and 169 impressions on 7 and 8 Oct against 10 to 23 on a normal day; back to 5 to 13 since. Position 8 to 10 throughout.
- **Rosewood** (`/collection/10/`): 20 to 42 impressions on 2 to 6 Oct (position 2.6 to 9) against 1 to 13 on other days.

So the week before was inflated by short bursts; the normal level is low and positions held. Autograph, Le Méridien and Montage are the same pattern at lower volume (their positions moved by 4 to 5 places on 9 to 30 impressions, which is noise at that volume). Cause of the bursts cannot be determined from the data.

**Pages that already rank:** Turks & Caicos legacy page 191 impressions at position 13.6 (166 at 13.8 a week earlier); the query "taj hotels" holds position 8.0 (8 impressions; 3 the week before). The Taj collection page (`/collection/26/Taj_Hotels.html`) shows 23 impressions at position 12.5. No change to react to.

## Indexing (rolling 5,000-URL sample)
| Status | 8 Oct | 12 Oct | 15 Oct | 17 Oct |
| --- | --- | --- | --- | --- |
| Indexed | 2,099 | 2,477 | 2,475 | 2,474 |
| Discovered, not indexed | 933 | 1,242 | 1,239 | 1,319 |
| URL unknown to Google | 396 | 702 | 700 | 614 |
| Crawled, not indexed | 202 | 287 | 289 | 283 |
| Duplicate without canonical | 160 | 233 | 237 | 251 |
| Redirect / 404 / 5xx | | 48 / 10 / 0 | 48 / 10 / 1 | 48 / 10 / 1 |
| Not crawled in 90+ days | 42 | 70 | 67 | 68 |

Indexed is flat at about 2,475. Discovered-not-indexed rose by 80 in two days, and unknown fell by 86, so URLs are moving from unknown to discovered. Duplicates without a canonical keep creeping up (160 to 251 in nine days), the same pattern the missing canonicals (Z1) predict. The sample rolls, so read it as direction only.

## Production checks
- **`verify.sh`: 8 of 44** (36 failed), the same as 15 Oct and two runs today; the 13 Oct record said 6. Nothing has been released.
- **Spot check:** `/hotels/1523/amanyara.html`, `/collection/1/`, `/chains/2/four_seasons.html` and the legacy Turks & Caicos page return 200 with no canonical tag; `/collection/26/` timed out once and returned 200 on retry. The Amanyara page still shows its login wall (fix 11 not released).
- **GA4:** not linked.

## Nothing to act on this week
No ranking drop on Taj, Turks & Caicos or the chain pages. Next check: 24 Oct.
