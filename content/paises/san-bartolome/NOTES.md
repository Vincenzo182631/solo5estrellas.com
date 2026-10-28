# San Bartolomé country page: notes

**Status:** draft for the existing country page `/countries/131/st-barts.html` (Spanish site; publish in place at `/countries/131/san-bartolome.html`, 301 from the other slugs). Files: `hub.md`, `.html`, `.jsonld`, `preview.png`. Findings: Z111 to Z114.

## Source
Hotel list, cities and brands come from the country record (the same ID on WhataHotel, `https://www.whatahotel.com/countries/131/`), which matches what the Spanish page lists. Search Console (29 Jan to 18 Oct): `/countries/131/St-Barts.html` 251 impressions at 12.9, 1 click. It has clicks, so the ranking URL gets one 301 step and the content is replaced only after the release is checked. City names come from the CMS; most are in English and were translated where a Spanish name is standard.

## Counts
5 hotels; 0 without a brand or collection in the list.

## What I changed or flagged
- The live page's `<title>` is "Bienvenido | Solo 5 Estrellas", its H1 is a best-claim ("Los Mejores Hoteles de …"), the breadcrumb links to `browse_region.cfm`, and its hreflang tags point to the home pages (Z111). The draft fixes all four.

## Verify before publishing
1. Reviewer name and verification date.
2. Country slug: Spanish, lowercase (`san-bartolome`), agreed with the developer (Z72).
