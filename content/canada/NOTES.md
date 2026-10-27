# Canadá region page: notes

**Status:** draft for the existing region page `/regions/16/canada.html` (publish in place with a clean slug). Files: `hub.md`, `.html`, `.jsonld`, `preview.png`. Findings: Z106 to Z109.

## Source
The hotel list comes from the live region page; each hotel's country comes from the hotel records used on the chain pages, because the live page has no country headings. No impressions recorded. No prices, ratings or "best" claims: the live H1 says "Los Mejores Hoteles", which the draft replaces.

## Counts
39 hotels in 1 country (the list is the truth). 0 hotels have no brand or collection in the list.

## What I changed or flagged
- Sonora Resort is listed with markup in its name and slug; Norteamérica lists 8 further Canadian hotels that are not on this page.
- **Country headings:** the live page puts every hotel under one country heading; the draft groups by the hotel's country (or by city for single-country regions).
- **Hreflang:** the live page's English tag points to a WhataHotel `/region/…` address that returns 404; the working URL is in `developer-spec/hreflang-map.csv` (Z107).
- No country links: country URLs are not published consistently (Z72). Sibling links point to the current region URLs, which will 301 after release.

## Verify before publishing
1. Reviewer name and verification date.
2. Region membership and hotel records in the decision sheet.
3. Brand pages linked from the table exist at the clean slugs after release 3.
