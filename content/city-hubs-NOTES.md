# Miami and New York city hubs: notes

Drafts: `content/nueva-york/` (hub.md, hub.html, hub.jsonld) and `content/miami/`. Both are written for the **existing** city URLs (`/cities/192/new_york.html` and `/cities/168/Miami.html`), not new ones. Status: draft, not live.

## What is new compared with the live pages
Both live pages are a bare list of hotels (titled "Bienvenido", no description, no canonical). The drafts add a direct answer, hotels grouped by zone with a short guide to each zone, a "which zone for which trip" table, when to go, how to get there and around, perks, 8 FAQ, schema, internal links and sources.

## Evidence (Search Console, 29 Jan to 3 Oct 2026)
- New York: 60 query variants, 114 impressions, 0 clicks; the city page `/cities/192/New-York.html` has 6 impressions at position 10.7. Top queries are hotel names (`hotel plaza new york` 13, `aman new york` 12, `casa cipriani new york` 6), not `hoteles de lujo en nueva york`.
- Miami: 39 query variants, 96 impressions, 0 clicks; `/cities/168/Miami.html` position 8.5, `/cities/972/South-Beach-Miami.html` position 10.5 (6 impressions each).
- Head terms are nearly absent in Spanish, so the opening is sized by Semrush volume (still to validate), not by current traffic.

## Findings while building them (tracker Z18-Z21)
| ID | Finding |
| --- | --- |
| Z18 | Miami is split over several city records: "Miami" (20 hotels), "South Beach, Miami" (6), and hotels labeled "Miami Beach" (The Miami Beach EDITION, Fontainebleau, Faena, Four Seasons at the Surf Club) and "Coral Gables" (The Biltmore, Loews) that appear on neither Miami page. The Miami hub lists all 32 (incl. Bal Harbour), which needs a "related areas" block in the city template, and the South Beach page competes with the Miami page for the same queries. |
| Z19 | The New York page says "67 hoteles" but links 74 hotel URLs (duplicates), and Google lists `/cities/192/` under three URL variants. |
| Z20 | The collection is described as "5 estrellas" but includes hotels that are not five-star (for example Hotel Indigo, Hyatt Centric, Marriott Marquis, The Standard). The drafts say "hoteles de lujo" and never claim a star count. Use a stored star rating or drop the claim in titles and descriptions. |
| Z21 | The city listing shows live "Habitaciones desde" nightly rates (for example 1,107 to 10,800 USD in New York). The copy does not quote prices because they are undated and volatile. |

## Zones and facts: how they were sourced
Zones follow each hotel's public location (for example The Plaza and The Pierre on Central Park, The Carlyle and The Mark on the Upper East Side, Four Seasons Downtown near the World Trade Center, The Setai in South Beach, Fontainebleau and Faena in Mid-Beach, The Surf Club in Surfside); the hotel list and names come from the site's own city pages. Neighborhood character, seasons, hurricane dates and airport times come from the sources listed on each page (Lonely Planet, NYC Tourism, Blade, the City of Miami Beach, Four Seasons Miami, Inside Our Suitcase, The Hotel Guru). The two blogs behind the Miami airport times and neighborhoods are not official; replace them with MIA, Miami-Dade or Greater Miami Convention and Visitors Bureau pages when you review.

## Check before publishing
1. Confirm each hotel's zone (especially The Fifth Avenue Hotel and The Chatwal, which were left out because their location was not confirmed).
2. Confirm travel times and seasons with an official source and date them.
3. Perks: the pages promise perks "según el hotel"; confirm the hotel-level perks block and add the verification date.
4. Reviewer name and date in the footer; hreflang `en` URL for each city.
5. Add the "related areas" block (Miami) and a link from each hotel page to its city hub (the hotel pages do not link to their city today).

## Measure
Clicks, impressions, position for the city page and for the family of queries (`hoteles de lujo en miami`, `hoteles cinco estrellas nueva york`, hotel-name queries); inquiries from the pages. Check at 14, 30 and 90 days. No ranking is promised.
