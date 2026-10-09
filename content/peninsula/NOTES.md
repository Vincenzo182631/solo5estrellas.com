# The Peninsula chain page: notes

**Status:** draft for the existing collection page `/collection/9/` (publish in place with a clean slug; today it is indexed under `Peninsula_Hotels.html` with 512 impressions and `Peninsula-Hotels-under-the-Peninsula-Pen-Club-Program.html` with 187). Files: `chain-peninsula.md`, `.html`, `.jsonld`, `preview.png`.

## Demand
The Peninsula family has 65 queries and 474 impressions, **mostly in English**: "peninsula hotels" 82 (position 37), "the peninsula hotels" 57 (21.5), "peninsula hotel locations" 54 (44.9), "peninsula hotel" 47 (16.7), "peninsula pen club" 35 (61.3). Only "hoteles peninsula" (26, position 21.5) is Spanish. English searchers should land on WhataHotel; the hreflang pair (fix 8) matters more here than on most chain pages (finding Z3). The title uses "Peninsula" (not "The Peninsula") to fit 60 characters and to match how people search; the H1 keeps "The Peninsula".

## Source
Perks, programme wording and the hotel list come from our live collection page (12 hotels, 8 countries). One Mile at a Time and Prince of Travel confirm the core PenClub perks (breakfast for two, a 100 USD credit that varies by hotel, 6:00 check-in and 22:00 check-out, blackout dates) and that PenClub is an advisor programme, not a consumer loyalty programme. No prices, ratings or "best" claims. Schema: BreadcrumbList, CollectionPage, ItemList, FAQPage.

## Left out on purpose
The live page says all 12 hotels received a MICHELIN Key in 2025, and mentions "The Peninsula Promise". I could not verify either, so the draft omits them.

## Verify before publishing
1. **Upgrade wording:** the live page says the upgrade is confirmed at booking; public sources differ (some say subject to availability at check-in). The draft says "según la página, se confirma en el momento de reservar".
2. **6:00 check-in and 22:00 check-out:** some sources say these ("Peninsula Time") also apply to direct and advisor bookings, with blackout dates around holidays. The comparison table does not claim they are exclusive.
3. Corporate rates may not be eligible; the draft says so in the FAQ and fine print.
4. The 100 USD credit, 1928 opening date, hotel list; reviewer name, verification date, English URL for hreflang (TODO in the HTML).

## Data findings
- **Z41:** Peninsula demand is mostly English-language and the Spanish chain page ranks at positions 37 to 45 for it.
