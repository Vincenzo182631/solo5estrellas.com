# Fairmont chain page: notes

**Status:** draft for the existing collection page `/collection/1/` (publish in place). Files: `chain-fairmont.md`, `.html`, `.jsonld`, `preview.png`. Today the slug is `Fairmont_Hotels_under_Accor's_HERA_Program.html` (plus a second variant); the draft's canonical uses a clean slug and the old ones should 301 to it (finding Z33). Indexed impressions: 328 + 108, position 40.

## Source
Perks, programme wording and the hotel list come from our live collection page; context from Hotels magazine and Historic Hotels (first Fairmont opened in San Francisco in 1907). No prices, ratings or "best" claims. Schema: BreadcrumbList, CollectionPage, ItemList, FAQPage.

## Verify before publishing (most important first)
1. **Programme name.** The live page calls it "Accor Hera". Public sources describe HERA as Accor's rewards programme for travel advisors (it replaced Famous Agents); the client-facing perks (100 USD credit, breakfast for two, upgrade, early check-in and late check-out) appear under "Accor Preferred" (formerly STEP). The draft says "programa de Accor para asesores de viaje" and avoids the name until you confirm it (Z37).
2. Whether bookings via an advisor still earn Accor ALL points and status nights. The live page says yes; I could not confirm it from public sources, so the draft attributes it to "la página de cada hotel".
3. 100 USD credit, breakfast for two and the "minimum stay" wording on the current partner page; verification date and reviewer name are placeholders.
4. English URL for the hreflang pair (TODO in `chain-fairmont.html`).

## Data findings
- **Z38:** the list includes "Orient Express Sailing Yachts" (Athens), which is not a Fairmont hotel. The live text says 79 hotels in 29 countries, the header says "80" and the list shows 80 in 30. The draft excludes the yachts: 79 hotels, 29 countries and territories.
- **Z37:** programme naming (above).
- The live title has a typo ("Excusive") and an English title.
