# Solo5Estrellas SEO fixes: one-page summary for Matt

*7 November 2026. Lorraine Travel (SEO). Everything below is in this package; the details and code snippets are in `IN-PLACE-FIXES.md`.*

## Why this matters
Google showed solo5estrellas.com about 45,400 times in three months (26 Jul to 25 Oct 2026) but it earned only 94 clicks. Most of the loss comes from a few template problems that every page shares. Fixing them is mostly template work, and nothing in releases 1 and 2 changes a URL.

## What to do, in order

| Release | Fixes | What it changes | Effort |
| --- | --- | --- | --- |
| **1. Template (no URL changes)** | 1, 2, 7, 12, 13 | Remove the broken `<meta name="title">` tag (it swallows the description and the hreflang tag). Add one canonical per page. Use the Spanish titles and descriptions in `page-metadata-drafts.csv` (345 pages). Fix the hotel template: no English titles, no "NULL" in the perks block, no login wall in front of hotel content. Change The Plaza (1920) to a 301. | About a day |
| **2. Host and crawl** | 3, 6 | `http://` and the second host return 301 (today 302) to one HTTPS host. Add a Sitemap line to robots.txt and a full XML sitemap. | Hours |
| **3. URLs (watch closely)** | 4, 5, 14 | One lowercase slug per ID with 301s from the others (650 IDs have several URLs). Legacy `browse_*.cfm` URLs get a 301. Unknown IDs return 404. Closed or renamed hotels redirect to their successor record (e.g. 3302 → 7026, 2841 → 7123, 1553 → 6719). | A few days |
| **4. Clean-up** | 8, 9, 10 | hreflang pairs with WhataHotel (`hreflang-map.csv`), encoding, security headers (HSTS) and cookies. | Hours |

Fix 11 (Amanyara booking hidden until it reopens) is a client decision; it ships whenever the client says so.

## How to check each release
Run `./verify.sh https://your-staging-host` (52 read-only checks; today 8 pass on the live site). Each fix lists the checks it should turn green. After release 3, keep a copy of the old rewrite rules and watch Search Console coverage for two weeks.

## Data fixes in the CMS (no code)
`CMS-DATA-ISSUES.md` lists record problems found while drafting. Examples: hotels that closed or were renamed, wrong cities, "Méjico" instead of "México", duplicate country records, and breakfast listed as a perk on all-inclusive hotels. These can be done by whoever edits hotel records. The hotel ones are now in a single checklist, in order of work: `HOTEL-RECORD-CLEANUP.md` (80 fixes on 70 records, plus 20 pages behind a login wall).

## Not yet (please don't)
Don't launch new URLs from the content drafts, change robots.txt Disallow rules, or noindex anything until releases 1 to 3 are live and Google has re-crawled.

## Contact
Questions about any fix: reply to the email this came with; we can talk through the rules before release 3.
