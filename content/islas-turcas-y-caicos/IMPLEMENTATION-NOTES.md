# Islas Turcas y Caicos hub: implementation notes

Status: draft for review. Nothing here is published. Files: `hub-islas-turcas-y-caicos.md` (copy), `.html` (page with head tags and JSON-LD), `.jsonld` (schema only).

## 1. Page
- URL: `/hoteles-de-lujo/islas-turcas-y-caicos/` (Spanish path, per proposal section 12.3).
- Title (57 chars): Hoteles de lujo en Islas Turcas y Caicos | Solo5Estrellas
- Description (146 chars): 15 hoteles de lujo en Islas Turcas y Caicos (Turks and Caicos): Grace Bay, islas privadas y villas. Compare zonas y reserve con desayuno para dos.
- H1: Hoteles de lujo en Islas Turcas y Caicos (Turks and Caicos). Spanish and English names appear in the H1, first paragraph, FAQ and anchors because Search Console shows 130 query variants (`turks and caicos hoteles`, `turcos y caicos`, `turk and caicos`).
- Canonical: self-referencing. hreflang `es` self; add `en` + `x-default` once the English WhataHotel URL is confirmed.

## 2. Redirects (301)
| From | To |
| --- | --- |
| `/browse_country.cfm?countryid=64` (29 of 124 clicks, 8,384 impressions) | `/hoteles-de-lujo/islas-turcas-y-caicos/` |
| any `/countries/64/*` variant | same |
Do not remove the legacy URL until the new page is live, indexed and returning 200; then redirect and request indexing. Watch GSC clicks daily for two weeks.

## 3. Internal links
- In: Caribbean region page, hotel pages in the group (breadcrumb Inicio > El Caribe > Islas Turcas y Caicos), chain pages (Ritz-Carlton, Aman).
- Out: each of the 15 hotel pages; Caribbean region; Ritz-Carlton and Aman chain pages.
- Add the hub to the footer destinations list and to the Caribbean region page above the 1,000+ link list.

## 4. Schema
`BreadcrumbList`, `CollectionPage` + `ItemList` (15 hotels), `FAQPage` (8 questions, text identical to the visible FAQ). No `Hotel`, `Review` or `AggregateRating` (the 4.6-4.9 ratings on hotel pages are labeled AI-generated).

## 5. Facts that need a human check before publishing
All hotel facts come from the hotel pages on Solo5Estrellas.com, which are partly AI-generated, plus three public sources (Visit Turks and Caicos, Aman). Check each against the hotel's own site or partner documents:
1. Perks per hotel and the "Verificado el" date (breakfast for two at 12 of 15 hotels; credit amounts).
2. Spa names (Katharina Spa, Awa Spa, COMO Shambhala), restaurant names, "19 kilómetros" for Grace Bay.
3. Parrot Cay boat time (35 min), Amanyara drive (25 min, from Aman), South Caicos charter requirement.
4. Flight times and daily routes (from Visit Turks and Caicos; confirm with an airline schedule).
5. Entry requirements by nationality (Mexico, Argentina, Chile, Colombia, Peru, Spain): not stated on the page beyond "confirm".
6. Reviewer name and date in the footer line.

## 6. Data errors found on the hotel pages (fix at source; tracker Z9-Z13)
| ID | Hotel / record | Problem |
| --- | --- | --- |
| Z9 | Ambergris Cay - All Inclusive (6860) | Expert text describes Belize (Hol Chan, Shark Ray Alley, Lamanai, Great Blue Hole) but the property is on Big Ambergris Cay, Turks and Caicos; city is labeled "Ambergris Caye" (the Belize spelling). Excluded from the hub until corrected. |
| Z10 | Wymara (3901) | Expert text says adults only; the page FAQ says family-friendly and children 11 and under stay free. |
| Z11 | Grace Bay Club (956) | Text says mainly adults with a family wing; pros and cons say adults only. Resort credit appears as "hasta $500" and as "$100 a $300" on the same page. |
| Z12 | Amanyara (1523), Ritz-Carlton Residences (6705), Villa Mani (4180) | No expert text or no perks block. Amanyara page has only navigation text. Villa Mani location is vague. |
| Z13 | The Shore Club (3281), Salterra (6684) | Shore Club is in Long Bay but the pros say direct access to Grace Bay Beach; Salterra text claims a UNESCO salt-trade designation that is unverified. |

## 7. Measures
- KPI: clicks, CTR and position for the 130 Turks and Caicos query variants (baseline 5,813 impressions, 6 clicks, position 13.7); impressions by market (Mexico, Argentina, Chile, Spain).
- Check at 14, 30 and 90 days in GSC (page + query filters).
- Success is not guaranteed: it depends on indexing, ranking and the fixes in Y1 (meta description) and Y2 (canonical).

## 8. Quality checks done
Spanish: usted, sentence case, accents, USD stated, no translated hotel names. FAQ answers 24-49 words (the currency answer is short by design). No prices published (a trivago price forecast returned no 5-star data). No claim uses the AI-generated ratings.

## Update 8 Oct: publish in place
`browse_country.cfm?countryid=64` is Islas Turcas y Caicos and is the top organic landing page (29 clicks, 8,384 impressions) while serving the home page content. Publish this hub on that country page (`/countries/64/{slug}`), reached by a `301` from the legacy URL, instead of the new `/hoteles-de-lujo/islas-turcas-y-caicos/` URL proposed above. See `developer-spec/REDIRECT-MAPS.md`.
