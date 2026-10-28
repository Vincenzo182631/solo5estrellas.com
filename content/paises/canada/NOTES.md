# Canadá country page: notes

**Status:** draft for the existing country page `/countries/15/canada.html` (Spanish site; publish in place at `/countries/15/canada.html`, 301 from the other slugs). Files: `hub.md`, `.html`, `.jsonld`, `preview.png`. Findings: Z111 to Z114.

## Source
Hotel list, cities and brands come from the country record (the same ID on WhataHotel, `https://www.whatahotel.com/countries/15/`), which matches what the Spanish page lists. Search Console (29 Jan to 18 Oct): `/countries/15/Canada.html` 20 impressions at 56.8; `/countries/15/Canad-.html` 19 impressions at 23.2. City names come from the CMS; most are in English and were translated where a Spanish name is standard.

## Counts
47 hotels; 0 without a brand or collection in the list.

## What I changed or flagged
- The live page's `<title>` is "Bienvenido | Solo 5 Estrellas", its H1 is a best-claim ("Los Mejores Hoteles de …"), the breadcrumb links to `browse_region.cfm`, and its hreflang tags point to the home pages (Z111). The draft fixes all four.
- Overlaps with the Canadá region page (`/regions/16/`); decide which one is canonical (Z113).

## Verify before publishing
1. Reviewer name and verification date.
2. Country slug: Spanish, lowercase (`canada`), agreed with the developer (Z72).
