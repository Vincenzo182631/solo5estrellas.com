# Action Plan: solo5estrellas.com

Critical > High > Medium > Low. Each item states the evidence it rests on and the check that would show it failed.

| # | Priority | Action | Evidence | Done when (falsifiable check) | Effort |
| --- | --- | --- | --- | --- | --- |
| 1 | Critical | Fix head template: close meta title quote, repair hreflang es tag | 289/300 hotel pages, all collections/cities/chains | A crawl finds a meta description on 100% of pages; URL Inspection shows the description | S |
| 2 | Critical | Self-referencing canonical on all templates | 0/399 pages; GSC 492 duplicates | Canonical present on 100%; GSC duplicate flag falls | S |
| 3 | Critical | One slug per hotel ID, 301 variants, 404 unknown IDs | 3,080/3,235 IDs with 2 variants; GSC 81 IDs | Crawl finds 1 URL per ID | M |
| 4 | Critical | 301 legacy browse_*.cfm?id URLs; rebuild Turks & Caicos hub | 29 of 124 clicks on countryid=64 | Legacy URLs return 301; clicks on Turks & Caicos queries rise | M |
| 5 | High | Segmented sitemap index and Sitemap: in robots.txt | 14 URLs; 5,221 not indexed | Submitted vs indexed by type in GSC | M |
| 6 | High | Spanish title and description templates; translate English titles; fix 'Excusive' | 67/68 titles; 7 'Bienvenido' | 0 duplicate or English titles in crawl | S |
| 7 | High | Fix encoding of JSON-LD text; add Hotel schema; rebuild Organization graph | 206 pages with U+FFFD | Rich Results Test clean; no U+FFFD in crawl | M |
| 8 | High | Reciprocal es/en hreflang with WhataHotel | 0 self-referencing es tags | hreflang validator: 0 errors | M |
| 9 | High | Hotel template: contextual links, breadcrumbs, server-rendered hero image with alt | 43 links, 1 img per hotel page | Crawl shows breadcrumbs and 3+ contextual links | M |
| 10 | High | Thin hotel pages: expert text or noindex | 94/300 under 300 words | No indexable page under 300 words | M |
| 11 | Medium | Cache city pages; headers (HSTS, cache); session cookies | 2.5 s TTFB; no cache headers | City TTFB under 0.8 s | M |
| 12 | Medium | Confirm robots-blocked URLs in GSC | 1,646 pages | Examples are /booking/ only | S |
| 13 | Low | Optional llms.txt | 404 | Not needed for Google; optional | S |