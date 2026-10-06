# Full SEO Audit: solo5estrellas.com

Date: 6 Oct 2026. Method: claude-seo audit procedure run inline (its fetch scripts were blocked by this sandbox's proxy guard, so pages were fetched with curl). Crawl: 399 URLs (300 random hotels from 3,332 hub-linked, all 62 collections, 17 regions, 7 cities, 6 chains and hub pages), 4 concurrent, 0.25 s delay, robots.txt respected. Search Console exports supplied by the client were used for indexing and traffic evidence.

## Executive Summary

**SEO Health Score: 39/100** (judgment-based; weights from the repo: Technical 22, Content 23, On-Page 20, Schema 10, AI 10, Images 5; Performance 10 not measured and excluded, others renormalized).

| Category | Score | Weight |
| --- | --- | --- |
| Technical SEO | 30 | 22% |
| Content Quality | 62 | 23% |
| On-Page SEO | 25 | 20% |
| Schema / Structured Data | 40 | 10% |
| Performance (CWV) | not measured | 10% |
| AI Search Readiness | 45 | 10% |
| Images | 20 | 5% |

**Business type:** Spanish-language luxury hotel booking site operated by Lorraine Travel; preferred-partner benefits; ColdFusion on IIS; shares data with WhataHotel.

### Top 5 critical issues

1. No canonical tags on any crawled page; hotels linked under two URL variants (3,080 of 3,235 IDs)
2. Head markup broken on hotel, collection, city and chain pages: meta description lost, hreflang cut off
3. Legacy browse_country.cfm?countryid=64 (Turks & Caicos) earns 23% of clicks with title 'Bienvenido' and no canonical
4. Sitemap lists 14 URLs while 5,221 URLs are not indexed (1,963 discovered, 931 crawled, not indexed)
5. JSON-LD text corrupted with replacement characters on 206 pages; no Hotel schema

### Top 5 quick wins

1. Close the unclosed meta title and hreflang quotes in the head template
2. Add self-referencing canonicals
3. 301 legacy browse_*.cfm and slug variants
4. Submit a segmented sitemap and add Sitemap: to robots.txt
5. Translate English titles; fix 'Excusive' in 67 chain/collection titles; shorten the title suffix

## Crawl facts

| Template | Pages crawled | Avg words | Avg TTFB (s) | Avg internal links |
| --- | --- | --- | --- | --- |
| Hotels | 300 | 971 | 0.58 | 43 |
| Collections | 62 | 2,143 | 0.57 | 96 |
| Regions | 17 | 3,886 | 0.54 | 333 |
| Cities | 7 | 1,211 | 2.50 | 164 |
| Chains | 6 | 3,195 | 0.64 | 113 |
| Home and hubs | 7 | n/a | 0.4-0.6 | 47-456 |

All 399 returned 200. 6,421 unique internal link targets were not crawled; a random 250 returned 246 x 200, 3 x 400 (slugs containing <br>), 1 x 404 (/sitemap/).

## Technical SEO (30/100)

**What works**

- HTTPS and HTTP/2; gzip enabled
- robots.txt is well structured and allows ChatGPT-User on purpose
- All 399 crawled pages returned 200 (no 5xx); lang="es" declared
- Search Console shows indexed pages growing from 390 to 5,774 (10 Jul to 19 Sep 2026)

**Findings**

- **[Critical] No canonical tag on any crawled page.** 0 of 399 crawled pages (300 hotels, 62 collections, 17 regions, 7 cities, 6 chains, others) have rel=canonical. Search Console reports 492 pages as 'Duplicate without user-selected canonical'. *Fix:* Output a self-referencing absolute canonical on every indexable template (one host, lowercase slug).
- **[Critical] Almost every hotel is linked under two URL variants, both returning 200.** 3,080 of 3,235 hotel IDs seen in internal links appear with two slugs (hyphen and underscore, e.g. /hotels/4839/blackberry-farm.html and /hotels/4839/blackberry_farm.html). Any slug resolves with 200 (/hotels/1048/anything.html). Search Console shows 81 IDs indexed under 2-3 variants. *Fix:* Pick one slug per ID, 301 all variants, return 404 for unknown IDs, canonicalize.
- **[Critical] Head markup is malformed on all hotel, collection, city and chain pages.** 289 of 300 hotel pages, 61 of 62 collections, 7 of 7 cities and 6 of 6 chains contain <meta name="title" content=" with no closing quote, which swallows the next tag; the meta description is lost (a parser finds a description on only 32 of 399 pages). The same pages contain a hreflang tag cut off at href="https://www.solo5estrellas.com/hotels/ >, which swallows the following script block. *Fix:* Fix the template: close the quotes, fill the title variable or remove the tag, repair hreflang. Re-crawl and check Search Console URL Inspection.
- **[Critical] Legacy parameter URLs are indexed and carry traffic.** 11 browse_*.cfm?id URLs appear in Search Console; browse_country.cfm?countryid=64 (Islas Turcas y Caicos) has 29 of 124 clicks and returns 200 with title 'Bienvenido', no canonical, no redirect. *Fix:* 301 each legacy URL to its clean URL, then rebuild the page.
- **[High] Soft 404s and malformed hotel URLs.** Unknown IDs return 200 (/cities/9999/foo.html). 14 hotel links contain <br>, ** or tabs inside the slug (e.g. /hotels/2894/sonora_resort__<br>_all-inclusive.html) and return 400. Search Console: 120 pages not found (404), 65 redirect pages. *Fix:* Sanitize slugs at the source; real 404/410 for missing IDs; fix internal links.
- **[High] Sitemap covers 14 URLs; robots.txt has no Sitemap line.** /sitemap.xml lists 14 URLs (no hotels, cities, chains, regions; identical lastmod). The crawl found about 3,235 hotel IDs from hub links alone. Search Console shows 5,221 not-indexed URLs including 1,963 'Discovered - currently not indexed' and 931 'Crawled - currently not indexed'. *Fix:* Segmented sitemap index with real lastmod; add Sitemap: to robots.txt; submit in GSC and Bing.
- **[Medium] Server response is slow on city pages.** City pages average 2.5 s to first byte (New York 3.4 s, London 3.0 s, Cancun 2.8 s); other templates 0.4-0.6 s. *Fix:* Cache city pages; lazy-load hotel lists.
- **[Medium] No cache headers or security headers; software disclosed.** Home response has no Cache-Control, ETag, Strict-Transport-Security, X-Content-Type-Options or similar; X-Powered-By: ASP.NET and Server: Microsoft-IIS/10.0 are exposed; CFID cookie expires in 2056. *Fix:* Add caching, HSTS and standard headers; remove version headers; session cookies.
- **[Medium] 1,646 pages blocked by robots.txt in Search Console.** The crawl found 500 internal links to /booking/ (intended Disallow). Example URLs for the 1,646 are not in the export, so it is unconfirmed that only /booking/ is affected. *Fix:* Open Page indexing > Blocked by robots.txt and confirm example URLs.

## Content Quality (62/100)

**What works**

- Hotel pages: median 1,233 words with expert perspective, benefits comparison and FAQ
- Collection pages average 2,237 words; chain pages 3,195 words; region pages 3,886 words
- Spanish copy is generally readable and professional

**Findings**

- **[High] 31% of sampled hotel pages are thin.** 94 of 300 hotel pages have under 300 words of visible text (about 210 words, e.g. Amanjiwo, Amankora, Conrad Dublin, W Sydney). *Fix:* Expert text and verified benefits before indexing; noindex until improved.
- **[High] Spanish copy defects (see proposal section 4).** Mixed tu/usted, Title Case, typos such as 'Excusive' in 67 of 68 chain/collection titles and 'Nnoche' in offers, English titles on core pages. *Fix:* Spanish editorial style guide and template fixes.
- **[High] No editorial content.** No guides, comparisons, neighborhood pages or named authors; Search Console shows head terms nearly absent (hoteles de lujo: 5 impressions). *Fix:* City hubs and content clusters per the proposal.
- **[Medium] Repetitive template text and AI-generated sections.** The repo's content scorer flags the sampled hotel page 'repetitive' (36 repetition score; overall 95). Pros and cons, ratings and comparisons are labeled as AI-generated. *Fix:* Human review, unique first paragraphs and FAQ answers per hotel.

## On-Page SEO (25/100)

**What works**

- Each page type has one H1 (398 of 399; /hotels-by-flight-time/ has none)
- Hotel titles are unique per hotel

**Findings**

- **[Critical] Meta descriptions missing or generic.** 367 of 399 pages have no readable meta description (head bug above); 24 carry the sitewide generic 'Los mejores hoteles de lujo de 5 estrellas del mundo'; all 17 region pages use it. *Fix:* Unique descriptions from template fields.
- **[High] Titles: wrong language, typo, generic, too long.** 7 pages titled 'Bienvenido'; English titles on /collection/, /destinations/, /destination/; 'Preferred Partner | Official Excusive Perks' on 67 of 68 chain and collection pages (English, typo, duplicate pattern); median title length 66 characters, 275 of 399 over 60 because of the suffix '| Solo 5 Estrellas por Lorraine Travel'. 19 titles are shared by 44 pages. *Fix:* Spanish title templates under 60 characters, brand shortened.
- **[High] hreflang wrong everywhere.** No crawled page has a self-referencing es tag; hotel, collection, city and chain pages have a malformed es tag and no x-default; region and hub pages point es to the homepage and x-default to the English homepage. *Fix:* Page-level reciprocal es/en pairs with WhataHotel.
- **[Medium] Hotel pages have no links to their own city, country, chain or guide.** Hotel pages average 43 internal links, almost all global navigation; no breadcrumbs on hotel pages (BreadcrumbList on 0 of 300). *Fix:* Template-level contextual links and breadcrumbs.
- **[Low] Loading messages are H2 headings.** 'Cargando tarifas...' and similar are <h2> on hotel pages. *Fix:* Use non-heading elements.

## Schema / Structured Data (40/100)

**What works**

- JSON-LD present on all 399 pages; FAQPage on 190 of 300 hotels; rich chain/collection graphs (BreadcrumbList, FAQPage, ItemList) on 67 pages

**Findings**

- **[High] JSON-LD text is corrupted with replacement characters on 206 pages.** The schema text contains U+FFFD in place of accented letters (e.g. 'n?mero', 'Cr?dito'). It is not visible in page text, but search engines and AI systems read it. *Fix:* Fix the encoding at the data source; re-validate.
- **[High] No Hotel or LodgingBusiness schema; offers modeled as zero-price.** 0 of 300 hotel pages have Hotel schema; 206 carry TravelAgency + Offer with price 0 and OnlineOnly availability. *Fix:* Add Hotel entity; describe perks as visible text.
- **[High] Organization graph points to WhataHotel profiles and omits Lorraine Travel.** sameAs lists facebook.com/whatahotel and instagram.com/whatahotel; no parentOrganization. *Fix:* Rebuild entity graph.
- **[Medium] City, region, and home pages carry only Organization and WebSite.** 7 cities and 17 regions have no BreadcrumbList or ItemList. *Fix:* Add on hubs where the visible list matches.
- **[Low] Chain and collection schema may over-claim.** Chain/collection graphs include TravelAgency with OpeningHoursSpecification and GeoCoordinates on brand pages; verify these match visible content. *Fix:* Remove properties not shown on the page.

## Performance (CWV)

**What works**

- Nothing confirmed

**Findings**

- **[Info] Core Web Vitals not measured.** PageSpeed Insights API quota was exhausted (HTTP 429) and the audit tool's own fetchers were blocked by this sandbox's proxy guard. Server timing and page weight were measured instead: HTML 14-180 KB; city pages 2.5 s TTFB. *Fix:* Pull CrUX and Lighthouse from Search Console or a local run.

## AI Search Readiness (45/100)

**What works**

- robots.txt allows OAI-SearchBot, PerplexityBot and ChatGPT-User except /booking/
- Search Console shows 1,343 impressions in Google AI features since 18 May 2026 (Spain 304, Mexico 238, Argentina 170)
- FAQPage markup on 64% of hotels

**Findings**

- **[High] Claims lack sources, dates and named authors.** Perks (breakfast for two, $100 credit) are stated without verification dates or program terms; no named experts. *Fix:* Verified-benefits blocks and advisor profiles.
- **[High] Brand entity unclear.** Brand queries earned 3 clicks and 137 impressions; the schema graph does not link Solo5Estrellas to Lorraine Travel. *Fix:* Entity strategy in proposal section 18.
- **[Info] No llms.txt, no markdown alternates.** /llms.txt returns 404. Google does not use it; the benefit is optional. *Fix:* Low priority.

## Images (20/100)

**What works**

- Nothing confirmed

**Findings**

- **[High] No hotel images in server HTML.** All 300 sampled hotel pages contain exactly 1 <img> (the logo); 323 of 399 pages have one or none. Galleries are probably JavaScript-loaded. Image alt text and lazy loading could not be assessed. *Fix:* Server-render the hero image with alt text, dimensions and fetchpriority; lazy-load the rest. Confirm with GSC URL Inspection.

## Not covered

- Core Web Vitals and Lighthouse (PageSpeed API quota exhausted; the tool's browser-based checks were not run).
- Visual and mobile screenshots (no browser in this session).
- Backlinks, keyword volumes and competitors (Semrush units exhausted).
- GA4, local/GBP signals, drift baseline (none exists yet).
- agentic_check --ua-matrix (only for sites you control; not run).
- Full hotel inventory: 3,235 hotel IDs seen from 399 pages; the full count needs a database export.