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

## Update 6 Nov: recount (tracker Z127)
The live Spain page lists 112 hotels; the draft had 107. Added the five missing hotels:
- Mallorca: Cap Vermell Grand Hotel (6824), Grand Hotel Son Net (7162). Mallorca is now 19, matching the live Mallorca city page.
- Marbella: Don Carlos Marbella (7165), Kimpton Los Monteros Marbella (7167), ME Marbella (2264). Marbella is now 5.

Updated the city table, the brand table, the totals and the ItemList (112 items). Brands come from WhataHotel's Spain list, which uses the same IDs: Leading Hotels +2, Preferred +1, The Signature Collection +1, InterContinental (IHG Destined) +1.
