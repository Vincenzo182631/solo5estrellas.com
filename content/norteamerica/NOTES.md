# Norteamérica region page: notes

**Status:** draft for the existing region page `/regions/10/north_america.html` (publish in place with a clean slug). Files: `hub.md`, `.html`, `.jsonld`, `preview.png`. Findings: Z106 to Z109.

## Source
The hotel list comes from the live region page; each hotel's country comes from the hotel records used on the chain pages, because the live page has no country headings. `north_america.html` has 113 impressions at position 29.1. No prices, ratings or "best" claims: the live H1 says "Los Mejores Hoteles", which the draft replaces.

## Counts
812 hotels in 6 countries and territories (the list is the truth). 35 hotels have no brand or collection in the list.

## What I changed or flagged
- The page lists 812 hotels, 793 in the United States, and also Canada (8), Mexico (8), Puerto Rico (1) and one hotel in France (La Caserne Chanzy, Reims); The Ritz-Carlton Residences Mexico City is a residence; five hotel URLs contain markup; 35 hotels have no brand.
- **Country headings:** the live page puts every hotel under one country heading; the draft groups by the hotel's country (or by city for single-country regions).
- **Hreflang:** the live page's English tag points to a WhataHotel `/region/…` address that returns 404; the working URL is in `developer-spec/hreflang-map.csv` (Z107).
- No country links: country URLs are not published consistently (Z72). Sibling links point to the current region URLs, which will 301 after release.

## Verify before publishing
1. Reviewer name and verification date.
2. Region membership and hotel records in the decision sheet.
3. Brand pages linked from the table exist at the clean slugs after release 3.
