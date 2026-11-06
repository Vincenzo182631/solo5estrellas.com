# Rosewood chain page: notes

**Status:** draft for the existing collection page `/collection/10/` (publish in place with a clean slug). Files: `chain-rosewood.md`, `.html`, `.jsonld`, `preview.png`. Title: Hoteles Rosewood: beneficios exclusivos | Solo5Estrellas (56). Description: Reserve 42 hoteles Rosewood en 23 países con desayuno para dos, crédito de hotel y mejora de categoría, a la misma tarifa publicada. (132).

## Demand
About 185 impressions in Search Console across its slug variants (see the keyword map and Z39). Hotels and countries come from the displayed list (42 hotels, 23 countries), not from the page text (see Z42).

## Source
Perks, programme wording and the hotel list come from our live collection page. Rosewood Elite and the absence of a points programme were confirmed from One Mile at a Time and Prince of Travel; the 100 USD credit and early check-in are property-dependent; benefits apply to published rates and featured offers. The live page's claim that Rosewood Hong Kong was number one in The World's 50 Best Hotels 2025 is **not used** (unverified). No prices, ratings or "best" claims. Schema: BreadcrumbList, CollectionPage, ItemList, FAQPage.

## Verify before publishing
1. Perks, programme name and the hotels that take part, with the programme.
2. Reviewer name, verification date and English URL for hreflang: the pair is in `developer-spec/hreflang-map.csv` (the English page exists and returns 200).
3. Page counts: the live text and header may disagree with the list (Z42); the draft uses the list.

## Update 6 Nov: perks and names corrected (tracker Z125)
- **Perks:** now follow the official Rosewood Elite brochure (daily breakfast for up to two, a one-category upgrade on arrival subject to availability, and a welcome note and amenity from the hotel's managing director).
  - Removed: the 100 USD credit, early check-in, late check-out and Wi-Fi as standard perks. The credit is described as "según el hotel" (some hotels add one; e.g. Rosewood Mayakoba's live page shows 125 USD).
  - H1, description and page metadata updated.
- **Names and places:**
  - Rosewood Miramar Beach (Montecito)
  - Rosewood Sand Hill (Menlo Park)
  - Las Ventanas al Paraíso, A Rosewood Resort
  - Rosewood Mandarina (Riviera Nayarit)
  - Rosewood Mayakoba (Riviera Maya)
  - Rosewood San Miguel de Allende
  - Hôtel de Crillon, A Rosewood Hotel
  - Rosewood Matakauri
- **Brand size:** about 44 properties worldwide (official, May 2026), replacing "más de 20 países".
