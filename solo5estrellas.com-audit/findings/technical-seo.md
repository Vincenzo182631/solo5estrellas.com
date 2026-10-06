# Technical SEO (30/100)

## What works

- HTTPS and HTTP/2; gzip enabled
- robots.txt is well structured and allows ChatGPT-User on purpose
- All 399 crawled pages returned 200 (no 5xx); lang="es" declared
- Search Console shows indexed pages growing from 390 to 5,774 (10 Jul to 19 Sep 2026)

## Findings

### No canonical tag on any crawled page [Critical]

0 of 399 crawled pages (300 hotels, 62 collections, 17 regions, 7 cities, 6 chains, others) have rel=canonical. Search Console reports 492 pages as 'Duplicate without user-selected canonical'.

**Fix:** Output a self-referencing absolute canonical on every indexable template (one host, lowercase slug).

### Almost every hotel is linked under two URL variants, both returning 200 [Critical]

3,080 of 3,235 hotel IDs seen in internal links appear with two slugs (hyphen and underscore, e.g. /hotels/4839/blackberry-farm.html and /hotels/4839/blackberry_farm.html). Any slug resolves with 200 (/hotels/1048/anything.html). Search Console shows 81 IDs indexed under 2-3 variants.

**Fix:** Pick one slug per ID, 301 all variants, return 404 for unknown IDs, canonicalize.

### Head markup is malformed on all hotel, collection, city and chain pages [Critical]

289 of 300 hotel pages, 61 of 62 collections, 7 of 7 cities and 6 of 6 chains contain <meta name="title" content=" with no closing quote, which swallows the next tag; the meta description is lost (a parser finds a description on only 32 of 399 pages). The same pages contain a hreflang tag cut off at href="https://www.solo5estrellas.com/hotels/ >, which swallows the following script block.

**Fix:** Fix the template: close the quotes, fill the title variable or remove the tag, repair hreflang. Re-crawl and check Search Console URL Inspection.

### Legacy parameter URLs are indexed and carry traffic [Critical]

11 browse_*.cfm?id URLs appear in Search Console; browse_country.cfm?countryid=64 (Islas Turcas y Caicos) has 29 of 124 clicks and returns 200 with title 'Bienvenido', no canonical, no redirect.

**Fix:** 301 each legacy URL to its clean URL, then rebuild the page.

### Soft 404s and malformed hotel URLs [High]

Unknown IDs return 200 (/cities/9999/foo.html). 14 hotel links contain <br>, ** or tabs inside the slug (e.g. /hotels/2894/sonora_resort__<br>_all-inclusive.html) and return 400. Search Console: 120 pages not found (404), 65 redirect pages.

**Fix:** Sanitize slugs at the source; real 404/410 for missing IDs; fix internal links.

### Sitemap covers 14 URLs; robots.txt has no Sitemap line [High]

/sitemap.xml lists 14 URLs (no hotels, cities, chains, regions; identical lastmod). The crawl found about 3,235 hotel IDs from hub links alone. Search Console shows 5,221 not-indexed URLs including 1,963 'Discovered - currently not indexed' and 931 'Crawled - currently not indexed'.

**Fix:** Segmented sitemap index with real lastmod; add Sitemap: to robots.txt; submit in GSC and Bing.

### Server response is slow on city pages [Medium]

City pages average 2.5 s to first byte (New York 3.4 s, London 3.0 s, Cancun 2.8 s); other templates 0.4-0.6 s.

**Fix:** Cache city pages; lazy-load hotel lists.

### No cache headers or security headers; software disclosed [Medium]

Home response has no Cache-Control, ETag, Strict-Transport-Security, X-Content-Type-Options or similar; X-Powered-By: ASP.NET and Server: Microsoft-IIS/10.0 are exposed; CFID cookie expires in 2056.

**Fix:** Add caching, HSTS and standard headers; remove version headers; session cookies.

### 1,646 pages blocked by robots.txt in Search Console [Medium]

The crawl found 500 internal links to /booking/ (intended Disallow). Example URLs for the 1,646 are not in the export, so it is unconfirmed that only /booking/ is affected.

**Fix:** Open Page indexing > Blocked by robots.txt and confirm example URLs.
