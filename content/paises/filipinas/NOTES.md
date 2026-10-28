# Filipinas country page: notes

**Status:** draft for the existing country page `/countries/75/philippines.html` (Spanish site; publish in place at `/countries/75/filipinas.html`, 301 from the other slugs). Files: `hub.md`, `.html`, `.jsonld`, `preview.png`. Findings: Z111 to Z114.

## Source
Hotel list, cities and brands come from the country record (the same ID on WhataHotel, `https://www.whatahotel.com/countries/75/`), which matches what the Spanish page lists. Search Console (29 Jan to 18 Oct): `/browse_country.cfm?countryid=75` 4 impressions at 8.2; `/countries/75/Philippines.html` 3 impressions at 27.0. City names come from the CMS; most are in English and were translated where a Spanish name is standard.

## Counts
10 hotels; 0 without a brand or collection in the list.

## What I changed or flagged
- The live page's `<title>` is "Bienvenido | Solo 5 Estrellas", its H1 is a best-claim ("Los Mejores Hoteles de …"), the breadcrumb links to `browse_region.cfm`, and its hreflang tags point to the home pages (Z111). The draft fixes all four.

## Verify before publishing
1. Reviewer name and verification date.
2. Country slug: Spanish, lowercase (`filipinas`), agreed with the developer (Z72).
