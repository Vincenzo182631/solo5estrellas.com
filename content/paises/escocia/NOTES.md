# Escocia country page: notes

**Status:** draft for the existing country page `/countries/71/scotland.html` (Spanish site; publish in place at `/countries/71/escocia.html`, 301 from the other slugs). Files: `hub.md`, `.html`, `.jsonld`, `preview.png`. Findings: Z111 to Z114.

## Source
Hotel list, cities and brands come from the country record (the same ID on WhataHotel, `https://www.whatahotel.com/countries/71/`), which matches what the Spanish page lists. Search Console (29 Jan to 18 Oct): `/browse_country.cfm?countryid=71` 9 impressions at 4.9; `/countries/71/Scotland.html` 3 impressions at 32.3. City names come from the CMS; most are in English and were translated where a Spanish name is standard.

## Counts
19 hotels; 1 without a brand or collection in the list.

## What I changed or flagged
- The live page's `<title>` is "Bienvenido | Solo 5 Estrellas", its H1 is a best-claim ("Los Mejores Hoteles de …"), the breadcrumb links to `browse_region.cfm`, and its hreflang tags point to the home pages (Z111). The draft fixes all four.
- Escocia has its own country record (ID 71), separate from Reino Unido (ID 157); keep it or merge it into Reino Unido (editor decision).

## Verify before publishing
1. Reviewer name and verification date.
2. Country slug: Spanish, lowercase (`escocia`), agreed with the developer (Z72).
