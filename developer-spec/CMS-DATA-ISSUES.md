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
