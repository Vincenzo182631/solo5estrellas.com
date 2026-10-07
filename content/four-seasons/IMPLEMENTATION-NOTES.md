# Hoteles Four Seasons: implementation notes

Status: draft for review, not published. Files: `chain-four-seasons.md` (copy), `.html` (page with head tags and JSON-LD), `.jsonld` (schema only). Generated from the live chain page of 7 Oct 2026 (141 hotels).

## 1. What changed from the current page
| Current page (`/chains/2/four_seasons.html`) | New page |
| --- | --- |
| Title `Four Seasons Preferred Partner \| Official Excusive Perks \| Solo 5 Estrellas por Lorraine Travel` (English, typo, 96 chars) | `Hoteles Four Seasons: beneficios exclusivos \| Solo5Estrellas` (60 chars) |
| Meta description lost (unclosed `<meta name="title">`, see Y1) | Unique description, 151 chars |
| No canonical; same page at `/chains/2/...` and three `/collection/2/...` variants | One URL `/hoteles-four-seasons/` plus 301s |
| Heading `¿Qué es the Four Seasons (socio preferente) program?` (English leak) | Removed; facts moved to Datos clave and FAQ |
| Country and US state names in English (United States, Azerbaijan, District of Columbia) | Spanish names (Estados Unidos, Azerbaiyán, Distrito de Columbia) |
| Hotel cards with machine-translated or stale text | Name, city and link only (see section 5) |
| No Spain, Mexico or Latin America entry points | Destination blocks, with Spain and Mexico first |
| 141 hotels "en 46 países" | 141 hotels in 47 countries and territories (count of the country labels on the page; Anguila and Puerto Rico are listed separately) |

## 2. Search Console evidence
- `four seasons` family: 381 queries, 1,099 impressions, position 25, 0 clicks. 60% of impressions come from Spain (657), then Mexico (126), Argentina (69).
- Top queries: `four seasons madrid` (42), `four seasons puxi` (41), `four seasons` (37), `four seasons mykonos` (26), `four seasons puerto rico` (22), `hoteles four seasons en el mundo` (15).
- The chain page already appears under three URL variants (`/collection/2/Four-Seasons-.html` 172 impressions at position 13.5; `/collection/2/four-seasons.html` 63 at 10.8; `/collection/2/Four_Seasons.html` 22 at 24.4). Consolidating them is the first gain.
- Hotel pages with demand: Madrid (171 impressions, position 25), Shanghai Puxi (110), Mykonos (105), Cap-Ferrat (69), Taormina (61), Yacht (60).

## 3. URL, canonical, redirects
- Canonical: `https://solo5estrellas.com/hoteles-four-seasons/`.
- 301 to it: `/chains/2/four_seasons.html`, every `/collection/2/*` variant, `/chains/2/*`.
- hreflang: `es` self; `en` and `x-default` = `https://whatahotel.com/collection/2/Four-Seasons.html` (WhataHotel must return the reciprocal tag).
- Update links from the home page, the footer chain list, the Caribbean/Europe region pages and the 141 hotel pages (breadcrumb Inicio > Cadenas > Four Seasons).

## 4. Schema
`BreadcrumbList`, `CollectionPage` (about: Brand Four Seasons Hotels and Resorts), `ItemList` of 141 hotels, `FAQPage` (10 questions, text identical to the visible FAQ). Remove from the current chain schema the `TravelAgency` properties not shown on the page (`OpeningHoursSpecification`, `GeoCoordinates`, `PostalAddress`) unless the page displays them.

## 5. Needs a human check before publishing
1. Perks and amounts: desayuno para dos, crédito de 100 USD (100-200 USD en suites y residencias), mejora, detalle de bienvenida, Wi-Fi premium. First-party page text matches two public sources ([One Mile at a Time](https://onemileatatime.com/insights/four-seasons-loyalty-program/), [Prince of Travel](https://princeoftravel.com/hotel-programs/four-seasons-preferred-partner/)), but confirm with the Preferred Partner terms and date them.
2. "Four Seasons no tiene programa de puntos": supported by the same two sources; confirm it still holds.
3. American Express Fine Hotels + Resorts comparison (only selected hotels; card required; Preferred Partner upgrade priority): carried over from the current page, unsourced. Verify or soften.
4. Founding year (1960) and Toronto headquarters: carried over from the current page.
5. Spanish exonyms for cities (Ciudad de México, Londres, Estambul, Pekín (Beijing), Bombay (Mumbai), etc.): editor review of the list.
6. Reviewer name and date in the footer.
7. Destination groupings and "Qué elegir según el viaje" are editorial, built from hotel names and locations only; an advisor should confirm they reflect the product.

## 6. Hotel-page problems found on this chain (tracker Z14-Z17)
| ID | Problem |
| --- | --- |
| Z14 | Four Seasons Hotel Madrid (`/hotels/3897/`) has no expert text, FAQ or perks block (216 words of navigation), yet it is the top Four Seasons hotel for Spanish demand (171 impressions, position 25). |
| Z15 | Chain page hotel cards include stale or machine-translated text: The Ocean Club says it is closed until 30 September 2015 and names One&Only Ocean Club; Buenos Aires cites "Travel & Leisure 2015" awards; Sydney is spelled "Sidney"; Baku says "Bellas Artes hotel". |
| Z16 | Name or label glitches: `Four Seasons Golden TriangleALL INCLUSIVE` (missing space); `Anguilla, BWI` as a country; `French Polynesia (Tahiti)`. |
| Z17 | Page claims 46 countries; the country labels count 47. |

## 7. Measures
KPIs: clicks, CTR and position for the Four Seasons family (baseline 1,099 impressions, 0 clicks, position 25); impressions from Spain, Mexico and Argentina; number of chain-page URL variants in GSC (target 1); inquiries from the page. Check at 14, 30 and 90 days. No ranking is promised.
