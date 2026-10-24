# Europa region page: notes

**Status:** draft for the existing region page (publish in place with a clean slug). Files: `hub.md`, `.html`, `.jsonld`, `preview.png`. Findings: Z102, Z104, Z105.

## Source
The hotel list comes from the live region page; each hotel's country comes from the hotel records used on the chain pages, because the live page has no country headings. `Europe.html` has 1,022 impressions at position 13.8 and `europe.html` 293 at 22.8, so both get one 301 step to the clean slug and the content is replaced only after the release is checked. No prices, ratings or "best" claims: the live H1 says "Los Mejores Hoteles", which the draft replaces.

## Counts
981 hotels in 39 countries and territories (the list is the truth). 34 hotels have no brand or collection in the list.

## What I changed or flagged
- **Country headings:** the live page puts every hotel under one country heading (Alemania on the Europe page, Arabia Saudita on the Asia page); the draft groups by the hotel's country.
- **Wrong country in the hotel record** (moved to the country of the city, Z104): Le Louise Brussels - MGallery (recorded in Germany; Brussels).
- 4 hotels have an empty city ("FALTA DE INFORMACIÓN"); Turks & Caicos, Azerbaijan, Georgia and Kazakhstan sit in the Europe list; Scotland is grouped under Reino Unido.
- **Hreflang:** the live page's English tag points to `/region/…` on WhataHotel, which returns 404; the working English URL is in `developer-spec/hreflang-map.csv` (Z105).
- No country page links: country URLs are not published consistently (Z72); add them once the country slugs are fixed.

## Verify before publishing
1. Reviewer name and verification date.
2. Hotel records in the decision sheet (wrong country, empty city).
3. Brand pages linked from the table exist at the clean slugs after release 3.
