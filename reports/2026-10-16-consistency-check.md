# Consistency check: 39 content drafts (16 October 2026)

**Scope:** every draft in `content/` (22 chain pages, 8 Hyatt brand pages, the Hyatt hub, Le Méridien, Six Senses, 4 city hubs, the Turks & Caicos hub, the Four Seasons Madrid hotel page, the Four Seasons vs Ritz-Carlton guide), the Page Metadata file (41 rows), the internal links, and the tracker. A script ran the checks; I read the results and fixed what was objectively wrong. Nothing is live.

## Passed
| Check | Result |
| --- | --- |
| Title 60 characters or fewer; description 155 or fewer | All pages |
| Duplicate titles, descriptions or H1s | None |
| One H1 and a canonical tag per page | All pages |
| JSON-LD parses; `ItemList` count = hotel links = count in H1 = count in description | 30 of 32 list pages; the other two are structural, not errors (Four Seasons lists its hotels twice; the Autograph link count includes one related link). The 7 hub-type pages use another structure and were checked by hand |
| FAQ schema count = FAQ questions in the copy | All pages |
| Page Metadata file matches the HTML (title, H1, description, lengths) | All 41 rows |
| Reviewer and perks-date line is a placeholder | All pages (nothing is signed off) |
| Prices, euro or dollar amounts, tuteo ("tú" forms), "best" in English | None in the copy (credit amounts in USD are perks, not prices) |
| Hyatt hub total = sum of the 8 brand pages | 285 = 72 + 53 + 51 + 29 + 24 + 22 + 18 + 16 |
| Internal "Siga explorando" links (43 unique) | 40 return 200; 3 do not (below) |

## Fixed in the drafts (committed)
1. **Place names (about 236 hotel lines).** The same city appeared in English on one page and Spanish on another: Dubai and Dubái, Paris and París, Venice and Venecia, Kyoto and Kioto, Singapore and Singapur, New York and Nueva York, Los Angeles and Los Ángeles, Maldives and Maldivas, and about 60 more (Seville, Malaga, Cancun, Merida, Moscow, Nice, Berlin, Stockholm, Tuscany and others). Normalised to the Spanish form in the copy and the HTML. One of my mappings was wrong (it turned Bale, Croatia, into Basilea); I caught and corrected it.
2. **"(NULL)" shown as a hotel location.** 10 hotel lines printed "(NULL)" from empty location records (Grand Hyatt Al Khobar, Hyatt Regency Zadar, Hyatt Regency Dar es Salaam, Six Senses Yao Noi, Six Senses Ninh Van Bay, Grand Bohemian Lodge Greenville and others). The text is removed; the record needs fixing (Z71).
3. **Section heading.** Eight earlier chain pages (Aman, Bulgari, Dorchester, Fairmont, Kimpton, Peninsula, Raffles, Taj) said "Los hoteles X por destino" without a count; they now read "Los N hoteles X por destino", matching the "Los N hoteles X por país" heading used on the newer pages. They keep "destino" because their groups mix regions and countries.
4. **Broken internal link.** `/hotels/3897/` (Four Seasons Hotel Madrid) returned 404 because the site needs a slug; it now points to `/hotels/3897/four-seasons-hotel-madrid.html` (200).
5. All 38 previews were re-rendered.

## Needs a decision (not changed)
| # | Issue | Pages | Suggested decision |
| --- | --- | --- | --- |
| 1 | Claim-like "best" wording; the style rule says no "best" claims: "es la mejor base para visitar Madrid a pie" (Four Seasons Madrid), "Es la mejor base para un primer viaje" and "uno de los mejores puntos para ver ballenas jorobadas" (Turks & Caicos hub), "Es la mejor opción si quiere caminar a todo" (Nueva York), "La mejor zona para viajes de negocios" (Miami) | 4 pages | Reword to neutral ("una base cómoda para…") |
| 2 | "Hotel de lujo de cinco estrellas" in the Four Seasons Madrid description (star rating wording) | 1 page | Keep only if the hotel's official classification is confirmed |
| 3 | FAQ questions that ask "¿Cuál es el mejor hotel…?" and answer "Depende…" (city hubs, TC hub, Four Seasons, comparison) | 8 pages | Keep: they match real queries and make no claim |
| 4 | Peninsula states times as guaranteed ("Entrada garantizada desde las 6:00", "Salida garantizada hasta las 22:00") | 1 page | Confirm with PenClub (on the programme-confirmation list) |
| 5 | Key-facts rows differ by page age: 14 earlier pages have no "Estancia mínima" row; the "Fidelización" sentence is worded two ways; unnamed programmes appear as "Aman Preferred Partner", "Socio preferente de Montage" and "Programa de socios preferentes de X" | about 20 pages | One wording per type; I can apply it in one pass |
| 6 | Four Seasons lists hotels twice (a featured "por destino" section of 191 links and the full list of 141) | 1 page | Keep the full list; shorten the featured section |
| 7 | The English hreflang tag is a TODO comment on every page (the English URL is in `developer-spec/hreflang-map.csv`) | all | Expected until the developer adds the tags |

## Links to URLs that do not exist yet
`/countries/64/` (Turks & Caicos hub, linked from the Aman page) and `/hoteles-hyatt/` (Hyatt hub, linked from the 8 Hyatt brand pages) return 404 today. Publish the hubs before, or in the same release as, the pages that link to them (Z72).

## Data defects found (for the editor and developer)
- **Z71:** hotel records with empty locations (`NULL`); 11 live hotel URLs begin with a hyphen (for example `/hotels/6989/-hyatt-regency-zadar.html`); "Savanna" for Savannah in one record.
- Known and already tracked: count labels that differ between header, text and list (Z42 and the chain findings), unconfirmed perks (Z37, Z44 to Z48, Z57, Z59 to Z61, Z63 to Z65, Z68, Z70).
