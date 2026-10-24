# Asia y el Pacífico region page: notes

**Status:** draft for the existing region page (publish in place with a clean slug). Files: `hub.md`, `.html`, `.jsonld`, `preview.png`. Findings: Z103, Z104, Z105.

## Source
The hotel list comes from the live region page; each hotel's country comes from the hotel records used on the chain pages, because the live page has no country headings. `Asia_Pacific.html` has 377 impressions at position 18.7; the other slug has 11 and lost the accent (`Pac-fico`). No prices, ratings or "best" claims: the live H1 says "Los Mejores Hoteles", which the draft replaces.

## Counts
626 hotels in 34 countries and territories (the list is the truth). 14 hotels have no brand or collection in the list.

## What I changed or flagged
- **Country headings:** the live page puts every hotel under one country heading (Alemania on the Europe page, Arabia Saudita on the Asia page); the draft groups by the hotel's country.
- **Wrong country in the hotel record** (moved to the country of the city, Z104): The Westin Miyako Kyoto (China, Kyoto), Andaz Singapore (China), Grand Hyatt Singapore (Malaysia), The Majestic Hotel Kuala Lumpur (India), Aleenta Resort & Spa Phuket (Malaysia), Yiu Teung Mansion (Saint Lucia, Chengdu).
- 7 hotels have an empty city; the list includes Middle East, Turkey, Russia and other territories that the live page puts in this region; "Thermi" is recorded as the city of Six Senses Bhutan.
- **Hreflang:** the live page's English tag points to `/region/…` on WhataHotel, which returns 404; the working English URL is in `developer-spec/hreflang-map.csv` (Z105).
- No country page links: country URLs are not published consistently (Z72); add them once the country slugs are fixed.

## Verify before publishing
1. Reviewer name and verification date.
2. Hotel records in the decision sheet (wrong country, empty city).
3. Brand pages linked from the table exist at the clean slugs after release 3.
