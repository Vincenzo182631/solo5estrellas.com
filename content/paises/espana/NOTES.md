# España country page: notes

**Status:** draft for the existing country page `/countries/58/spain.html` (Spanish site; publish in place at `/countries/58/espana.html`, 301 from the other slugs). Files: `hub.md`, `.html`, `.jsonld`, `preview.png`. Findings: Z111 to Z114.

## Source
Hotel list, cities and brands come from the country record (the same ID on WhataHotel, `https://www.whatahotel.com/countries/58/`), which matches what the Spanish page lists. Search Console (29 Jan to 18 Oct): `/browse_country.cfm?countryid=58` 4 impressions at 8.2. City names come from the CMS; most are in English and were translated where a Spanish name is standard.

## Counts
107 hotels; 8 without a brand or collection in the list.

## What I changed or flagged
- The live page's `<title>` is "Bienvenido | Solo 5 Estrellas", its H1 is a best-claim ("Los Mejores Hoteles de …"), the breadcrumb links to `browse_region.cfm`, and its hreflang tags point to the home pages (Z111). The draft fixes all four.

## Verify before publishing
1. Reviewer name and verification date.
2. Country slug: Spanish, lowercase (`espana`), agreed with the developer (Z72).
