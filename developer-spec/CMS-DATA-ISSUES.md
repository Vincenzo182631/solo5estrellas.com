# Data issues in the CMS records (not template changes)

Found while drafting 62 chain pages and 11 other pages. The editor decides what to do with each record (`../outreach/editor-decision-sheet.xlsx`, 32 rows); the developer fixes the rules below.

## For the developer
1. **Counts typed by hand.** On about 14 chain pages the header, call-out and text counts differ from the hotel list (for example Signature Collection says 436, 429 and lists 435). Generate every count from the list when the page renders.
2. **Slug typos and hyphens.** `/collection/67/` has "progam" and `/collection/80/` has "porgram" in the slug; 11 hotel URLs start with a hyphen. One slug per ID, built by the rule in `REDIRECT-MAPS.md`.
3. **Markup in hotel names.** Nine records contain line-break tags or asterisks in the name (Tamarind Barbados, Treasure Beach Art Hotel, The Westin Playa Vallarta, Canyon Ranch Tucson, The Green O, The Ranch at Rock Creek, The Lodge at Woodloch, Curtain Bluff and one more), and their slugs contain "br". Strip the markup in the name and rebuild the slug.
4. **Empty locations.** Records whose location field reads "NULL" (at least 13, for example Grand Hyatt Al Khobar and Conrad Urumqi). The page should not print "NULL"; the editor fills the field.
5. **Same-hotel duplicates.** Pure Salt Port Adriano (4 IDs), Grand Hyatt Erawan Bangkok, Grand Hyatt Dubai and JW Marriott Marina each exist more than once. Decide which ID is canonical and 301 the others.

## For the editor (see the decision sheet)
Wrong brand assignment (about 25 records), residences, villas and estates listed as hotels, hotels in Russia and Ukraine, a wrong city (Kea Island in "Atenas") and one brand-name spelling.

## Region pages (added 27 Oct)
All twelve region pages show every hotel under one country heading; add country headings. English hreflang on every region page points to WhataHotel `/region/{id}/…`, which returns 404; use `/regions/{id}/…` (see `hreflang-map.csv`). Region membership is inconsistent (Z106): decide the region of each country and assign hotels by country.

## Country pages (added 28 Oct)
Every Spanish country page has the title "Bienvenido | Solo 5 Estrellas", hreflang tags pointing to the home pages, a breadcrumb to `browse_region.cfm` and an English slug (`/countries/58/spain.html`). Fix the template head and use one Spanish lowercase slug per ID (Z111). Duplicate country IDs (Kuwait 141/145/147, Bhutan 74/82, Serbia 143/148, Mongolia 154/155) should 301 to one ID, and the 19 empty country IDs should return 404 (Z112).

## Hotel records (added 29 Oct)
- **1816 The Omni Homestead Resort:** perks field is empty and prints "NULL"; fill the perks from the programme (The Signature Collection) or leave empty once fix 12 hides the block. Name on the page is "Omni Homestead"; the description says "The Homestead". Use one name: "The Omni Homestead Resort".
- **1816, 1094:** English meta description in the CMS; replace with the Spanish drafts in `page-metadata-drafts.csv`.
- **2528 Hotel Barriere Le Majestic Cannes:** the hotel's name is "Barrière" (with the accent).
- **2648 Paradisus Playa del Carmen, La Esmeralda:** perks list "Desayuno Gratis para 2 cada Día", but breakfast is already in the all-inclusive rate (client confirmed 29 Oct). Remove that perk line and the breakfast row of the comparison table on this hotel; keep the upgrade, the 50-minute massage, internet and late check-out.
- **964 Necker Island:** perks text has typos ("Un Masaje de u1 Hora", "Crédito del Hesort", "An un Costo Adicional"); the last two come from the shared comparison table and appear on other hotel pages too.
- **1920 The Plaza Hotel New York:** no longer in the collection; see fix 13.
- **6179 Altstadt Vienna:** the hotel's site says breakfast is included for all guests, but the perks block lists "Desayuno Continental Gratis para 2" as a perk. Client confirmed 30 Oct: remove that perk line and the breakfast row of the comparison table; keep the upgrade, the 50 USD credit, Wi-Fi, late check-out and the 2-night minimum.
- **964 Necker Island:** the perks block lists "TODO INCLUIDO" and "semanas de celebración" as perks. Every Necker stay is all-inclusive, and the official site now calls these "Individual stays" (fixed dates), not Celebration Weeks. Client confirmed 30 Oct: remove "TODO INCLUIDO" and the celebration-week line from the perks; keep only the massage for two, Wi-Fi and late check-out.
- **6684 Salterra, a Luxury Collection Resort:** the AI text places the hotel on Salt Cay ("enclavado en las prístinas orillas de Salt Cay", Salt Cay salt ponds "a pocos pasos del resort"). Salterra is on South Caicos (Marriott, code XSCLC). Rewrite the expert text, the "Qué lo hace especial" block and "No te lo pierdas" (added 30 Oct; tracker Z117).
- **4180 Villa Mani:** live page says Grace Bay; other sources place it at Turtle Tail / Royal Palm Island, with different room counts, and it was listed for sale in 2020. Confirm the villa is still bookable and correct the location, or remove it (added 30 Oct; tracker Z118).
- **6860 Ambergris Cay:** all-inclusive, but the perks block lists "Desayuno para dos todos los días". Remove the breakfast perk line and the breakfast row of the comparison table, as for Paradisus and Necker. The Belize text fix is in `content/islas-turcas-y-caicos/ambergris-cay-corrected-text.md` (Z9) (added 30 Oct).

## Added 4 Nov
- **Country name "Méjico":** shown as the country label on Mexican hotel and city pages (e.g. Mayakoba, Paradisus 2648, the Mayakoba hotels) and 26 times on `/countries/40/`. Use "México" in every Spanish template (tracker Z120).
- **7026 Alila Mayakoba:** city is "Playa del Carmen"; set it to Mayakoba so the Mayakoba city page lists it (Z119).
- **Renamed hotels** (Z121): rename 2648 to "Paradisus Playa del Carmen" (ex La Esmeralda), 6608 to "Sofitel Barú Cartagena Beach Resort", 5052 to "Katikies Santorini", 2927 to "Grace Hotel, Auberge Collection" and 1655 to "Caruso, A Belmond Hotel". Also: 2616 is now "JW Marriott Guanacaste Beach Resort" on marriott.com (confirm before renaming).
- **Closed or replaced** (fix 14): 3302 → 7026, 2841 → 7123, 1553 → 6719. Remove the old records from brand, city and country lists. 6719 Alila Shanghai shows no perks.
- **Data errors** (Z122): "Yiu Teung Mansion" (6176, Chengdu, China) is listed under Saint Lucia. "Hotel Xcaret México" (5039) has `<br>` tags in its name.
- **7028 Horseshoe Bay Resort:** city is "Austin"; the resort is in Horseshoe Bay, Texas, about an hour from Austin.
- **Login wall** (Z115): also on 2314 Banyan Tree Mayakoba, 1717 Fairmont Mayakoba and 4823 Fairmont Heritage Place.
