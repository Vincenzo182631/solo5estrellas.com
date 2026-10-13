# Montage chain page: notes

**Status:** draft for the existing collection page `/collection/93/` (publish in place; today it is indexed under `Montage-Hotels-Resorts.html` and `Montage_Hotels_&_Resorts.html`, 176 impressions in total). Files: `chain-montage.md`, `.html`, `.jsonld`, `preview.png`.

## Source
Perks and the hotel list come from our live collection page (6 hotels, 2 countries, which matches the page text). Montage International is based in southern California and was founded in 2002 by Alan Fuerstman, per the live page. Our own WhataHotel listings for Montage Los Cabos and Montage Deer Valley show the same perks (breakfast for two, priority upgrade, 100 USD credit once per contiguous stay, Wi-Fi). No prices, ratings or "best" claims. Schema: BreadcrumbList, CollectionPage, ItemList, FAQPage.

## Verify before publishing (most important first)
1. **The programme has no public name.** I found no Montage-specific advisor programme in public sources. Montage International says it partners with Preferred Hotel Group, and the Preferred Hotels & Resorts Platinum programme lists similar perks (breakfast for two, 100 USD credit, upgrade, welcome amenity) at about 300 hotels, on the best available rate only. Our own Preferred page (`/collection/25/`) uses that programme. Confirm with Montage which programme these Montage perks actually come from, and whether the two pages could contradict each other (Z46). The draft says "socio preferente de Montage".
2. **Hotel list:** public sources name Montage Kapalua Bay among top picks; it is not on our list, nor is any other Montage. Confirm which Montage hotels the perks apply to.
3. 100 USD credit "once per contiguous stay" (from our Deer Valley listing), the VIP recognition, the 2002 founding year; reviewer name, verification date and English URL for hreflang (`developer-spec/hreflang-map.csv` pattern: same ID on whatahotel.com).
