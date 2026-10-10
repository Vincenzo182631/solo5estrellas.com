# Taj chain page: notes

**Status:** draft for the existing collection page `/collection/26/` (today indexed as `Taj_Hotels.html`, 294 impressions, and `taj-hotels.html`). Files: `chain-taj.md`, `.html`, `.jsonld`, `preview.png`.

## Demand, and a caution
29 queries, 193 impressions. **This page already ranks well:** "taj hotels" 112 impressions at position 7.6, "hoteles taj" 17 at 6.3, "taj hotel" 25 at 18.9. Unlike the other chain pages, the priority is not to rank but to **not lose the ranking**: keep the content for "Taj Hotels" and the hotel list intact, redirect the `Taj_Hotels.html` and `taj-hotels.html` variants to one canonical in a single step, and watch Search Console for 14 days after release 3 (see the developer README).

## Source
Perks and the hotel list come from our live collection page (12 hotels, 6 countries, which matches the page text). Taj Hotels is the Indian Hotels Company brand and began with the Taj Mahal Palace in Bombay in 1903 (per the live page). No prices, ratings or "best" claims. Schema: BreadcrumbList, CollectionPage, ItemList, FAQPage.

## Verify before publishing
1. **The advisor programme has no name on the live page** ("socio preferente de Taj"). I found no public source for a named Taj advisor programme, its 100 USD credit, breakfast for two or upgrade, so every perk comes from our own page and needs confirmation from Taj. Until then the draft calls it "socio preferente de Taj".
2. **Loyalty:** the live page says "NeuPass". The programme is now **Taj InnerCircle - NeuPass**, and its terms say points are earned on bookings made through Taj's own channels (website, app, reservation offices). The draft therefore does not promise points; it says to ask before booking (the live page also says "se confirma al hacer la reserva").
3. Hotel list (The Pierre, New York, and the Indian palaces are Taj-managed per our list); reviewer name, verification date and English URL for hreflang (TODO in the HTML).

## Data findings
- **Z44:** loyalty programme named "NeuPass" on the live page; the current name is Taj InnerCircle - NeuPass, and advisor bookings may not earn points.
