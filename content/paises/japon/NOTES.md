# Japón country page: notes

**Status:** draft for the existing country page `/countries/35/japan.html` (Spanish site; publish in place at `/countries/35/japon.html`, 301 from the other slugs). Files: `hub.md`, `.html`, `.jsonld`, `preview.png`. Findings: Z111 to Z114.

## Source
Hotel list, cities and brands come from the country record (the same ID on WhataHotel, `https://www.whatahotel.com/countries/35/`), which matches what the Spanish page lists. Search Console (29 Jan to 18 Oct): `/countries/35/Jap-n.html` 6 impressions at 5.3, 1 click; `/countries/35/Japan.html` 1 impressions at 5.0. It has clicks, so the ranking URL gets one 301 step and the content is replaced only after the release is checked. City names come from the CMS; most are in English and were translated where a Spanish name is standard.

## Counts
77 hotels; 3 without a brand or collection in the list.

## What I changed or flagged
- The live page's `<title>` is "Bienvenido | Solo 5 Estrellas", its H1 is a best-claim ("Los Mejores Hoteles de …"), the breadcrumb links to `browse_region.cfm`, and its hreflang tags point to the home pages (Z111). The draft fixes all four.
- Wrong-country records: The Westin Miyako Kyoto (recorded in China) (Z104, Z109).

## Verify before publishing
1. Reviewer name and verification date.
2. Country slug: Spanish, lowercase (`japon`), agreed with the developer (Z72).
