# Solo5Estrellas.com: SEO / AEO / GEO / localization report (15 October 2026)

> **Data status.** The monitoring numbers below (Search Console, indexing, `verify.sh`, GA4) were pulled on 15 Oct and are real; Search Console data runs to 13 Oct (the last 36 hours are incomplete). The email to Matt, the programme email, the Aman date and the extra chain page have **not** happened, so they are shown as open, not filled in. The tracker was not changed for this report.

## 1. Summary
- **Nothing is live.** All work is drafts and specifications in the repo (`claude/cool-dirac-wid2k3`) until Matt (or another developer) gets access. No traffic change can be attributed to our work yet.
- **Site health is unchanged:** the 6 Oct crawl findings still stand (no canonicals, a broken title tag that cuts off the Spanish hreflang, duplicate slugs, legacy URLs, soft 404s). `verify.sh` returned **8 of 44** on 15 Oct (it was recorded as 6 of 44 on 13 Oct; see section 2).
- **Content is ready for the pages that matter most:** the Turks & Caicos hub, 4 city hubs, 1 comparison guide and 22 chain pages, each with copy, head tags, JSON-LD, preview and notes.
- **The blockers are people, not work:** Matt's address and sign-off, programme confirmations, the Aman reopening date, and your decisions.

## 2. Search performance (Google Search Console)
| Metric (29 Jan to date) | 6 Oct baseline | To 12 Oct (pulled 13 Oct) | To 13 Oct (pulled 15 Oct) |
| --- | --- | --- | --- |
| Clicks | 124 | 128 | 128 |
| Impressions | 47,405 | 50,662 | 51,617 |
| CTR | 0.26% | 0.25% | 0.25% |
| Average position | 17.78 | 17.52 | 17.62 |

Last 8 days (6 to 13 Oct): 4 clicks (1 each on 7, 8, 9 and 11 Oct); daily impressions 384 to 879; daily position 12.3 to 23.0 (13 Oct: 879 impressions at position 23.0). Clicks did not change in the last two days of data, and impressions rose by 955 since the 12 Oct pull.

Top landing page: `browse_country.cfm?countryid=64` (Islas Turcas y Caicos), 29 clicks and 8,384 impressions as of 13 Oct. Pages that already rank (Taj at position 7.6, Turks & Caicos) are protected: a single 301 and unchanged content.

**Indexing overview (rolling 5,000-URL sample):**
| Status | 8 Oct | 12 Oct | 15 Oct |
| --- | --- | --- | --- |
| Indexed | 2,099 | 2,477 | 2,475 |
| Discovered, not indexed | 933 | 1,242 | 1,239 |
| Crawled, not indexed | 202 | 287 | 289 |
| Duplicate without canonical | 160 | 233 | 237 |
| Not crawled in 90+ days | 42 | 70 | 67 |

Other states on 15 Oct: URL unknown to Google 700 (702 on 12 Oct), redirect 48, not found 10, one server error (5xx, new) and one "unknown". The sample is 5,000 URLs and it rolls, so read it as direction only; none of these changes comes from our work because nothing has been released.

**`verify.sh` on production (15 Oct): 8 passed, 36 failed.** The 13 Oct record was 6 passed. The script has not changed (one commit), and two runs today gave the same 8. The passes are the home page and the Europe page (title tag closed, description present, hreflang `es` well formed), the 1 Hotel Brooklyn Bridge title tag, and no U+FFFD in the sample hotel page. I cannot tell from the data whether two checks flipped because the live site changed or because of how the 13 Oct run was recorded; worth asking whether anyone changed the home or Europe templates. Every other check still fails: no canonicals, both hosts answer 200, legacy `browse_*.cfm` URLs return 200, the sitemap has 14 entries, `robots.txt` has no Sitemap line, no HSTS, `X-Powered-By` is exposed.

**Spot-check (4 URLs, 15 Oct):** `/`, `/hotels/1523/amanyara.html`, the Autograph collection page and the Ritz-Carlton Residences page all return 200 with no canonical tag. The Amanyara page still shows the login wall (booking is not hidden yet; fix 11 has not been released).

**GA4:** still not linked. The Search Console tool returns search metrics only and says no GA4 property is linked.

## 3. What has been produced (verified in the repo)
| Area | Count / detail |
| --- | --- |
| Drafted pages | 1 country hub (Islas Turcas y Caicos), 4 city hubs (Nueva York, Miami, Londres, París), 1 comparison guide (Four Seasons vs Ritz-Carlton), 22 chain pages (Four Seasons, Aman, Fairmont, Raffles, Bulgari, Peninsula, Kimpton, Dorchester Collection, Taj, InterContinental, Renaissance, Rosewood, Montage, EDITION, Oberoi, Westin, Autograph, Preferred Hotels & Resorts, Leading Hotels of the World, SLH, Relais & Châteaux, plus Four Seasons Madrid) |
| Hotel text | Corrected text for Ambergris Cay, Wymara and Grace Bay Club; factual blocks for Amanyara, Ritz-Carlton Residences and Villa Mani (Z12) |
| Metadata | Page Metadata tab with 28 pages; title and description set for 21 templates and 62 collection pages |
| Developer package | `dist/solo5estrellas-developer-package.zip`: README with a 4-release plan, `IN-PLACE-FIXES.md` (11 fixes), `verify.sh` (44 checks), redirect maps (949 duplicate-slug and 48 legacy rows), hreflang map (22 pages), schema spec, Spanish style guide and place names |
| Tracker | `Solo5Estrellas_SEO_Tracker.xlsx`: 118 findings, Completed Work D1 to D52, EOD Log, GSC tabs; 0 formula errors |
| EOD notes | 6, 7 to 10 and 13 to 15 Oct |

## 4. Findings (tracker, 15 Oct)
- **118 findings:** 86 Identified, 24 Waiting for Client, 6 Waiting for Developer, 1 Approved (Z50, hide Amanyara booking), 1 Completed.
- **By priority:** 18 Critical, 49 High, 35 Medium, 16 Low. By category: 54 Content, 20 Technical, 16 Indexing, 7 Localization, 5 Metadata.
- **Most owners:** Dev 45, Editor 35, Client 11, plus shared ownership.
- **Recurring patterns in the drafts:** counts that differ between header, text and list (Z42, Z55, Z58, Z60, Z62); perks or programme names that no public source confirms (Z37, Z44 to Z48, Z57, Z59, Z61, Z63); duplicate or mislabelled hotel records (Z34, Z36, Z38, Z49, Z56).

## 5. The 16 October plan: status on 15 Oct
| Task | Status |
| --- | --- |
| A1 Search Console refresh | Done (section 2) |
| A2 Indexing overview | Done (section 2) |
| A3 `verify.sh` on production + spot-check | Done: 8 of 44; 4 URLs checked (section 2) |
| A4 GA4 link check | Done: not linked |
| B1 Email to Matt, zip attached | **Not done.** Needs his address and your go-ahead. Draft is in `vincentlancingames31@gmail.com`. |
| B2 Programme-confirmation email | **Not done** (not drafted yet) |
| B3 Aman reopening date (Z54) | **Not done.** No answer; needs someone to ask Aman. Amanyara booking stays visible until fix 11 is released. |
| C1 Next chain page | **Not done** (you choose which) |
| C2 Consistency check across the 22 chain drafts | **Not done** |
| D1 to D2 Tracker and 16 Oct EOD | **Not done**, by your instruction not to update the tracker with this report |

## 6. Risks and open items
1. **Nothing ships without a developer.** Until Matt or another developer has access, the baseline will not move. Every week without a release is a week of the same crawl and indexing problems.
2. **`verify.sh` moved from 6 to 8 of 44 with no release.** Confirm whether anyone changed a template, so the baseline is right before the first release.
3. **Facts to verify before any draft is published:** programme names and perks, the Amanyara reopening date, Villa Mani and Residences wording (Z50 to Z53).
4. **Placeholders in every draft:** reviewer name, perks verification date, English URL for hreflang.
5. **Editor decisions:** duplicate hotel records and the Ukraine hotel in the Preferred list (Z56), hotel zones for París and Londres.
6. **Access gaps:** GA4, GTM and Semrush units (so no conversion data and no keyword tracking yet).

## 7. Recommended next steps
1. Send the developer package (fix 11 first, then fixes 1, 2 and 7 on staging).
2. Release plan: staging with `verify.sh`; production fixes 1, 2, 7; redirects 3 to 5 with a rollback copy; then fixes 6, 8, 9, 10.
3. After the first release, run `verify.sh` and check Search Console at **14, 28 and 56 days**.
4. Publish drafts in the order of ranking risk: Turks & Caicos hub and Taj last (single 301, content unchanged), new chain pages first.
5. Link GA4 and set up conversion events so the effect of changes can be measured.
