# Redirect maps (fixes 4 and 5)

Files built from Search Console (29 Jan to 6 Oct 2026, plus an 18 Oct refresh) and the crawl. Read-only inputs for the developer; nothing here is live.

## 1. `redirects-duplicate-slugs.csv` (949 rows, fix 4)
Hotel, city and region URLs that Google has indexed under more than one slug for the same ID (403 IDs in the sample; countries are excluded, see below). Together these URLs hold 10,045 impressions that should consolidate.
- Rule: the ID decides the page; the slug is cosmetic. One slug per ID: lowercase, hyphens, no commas or ampersands (`/hotels/962/hotel-ritz-paris.html`). Any other slug returns `301` to it.
- `canonical_source`: `site link` (655) = the slug the site already links to internally; `indexed variant` (24) = the only clean slug Google has; `derived` (270) = lowercased and hyphenated by me, **verify against the slug your code generates**.
- Implement as a rule in the router (look up the ID, rebuild the slug, redirect on mismatch), not as 949 static rules. Use the CSV as the test set: every `from` must return `301` to `to_301`.

## 2. `redirects-legacy-browse.csv` (48 rows, fix 5)
`browse_hotel.cfm?hotelID=`, `browse_city.cfm?cityid=` and `browse_country.cfm?countryid=` URLs that Google still lists.
- 32 rows have a target. 16 say `{slug from database}`: I can't read the IDs behind them from public pages (all country pages return a "Bienvenido" page to my fetches), so the developer fills the slug from the database.
- **`browse_country.cfm?countryid=64` is Islas Turcas y Caicos** (confirmed by its queries: "hoteles en islas turcas y caicos" 1,291 impressions, "hoteles en turks and caicos" 372). It is the top organic landing page (29 of 124 clicks, 8,384 impressions), and today it returns the home page content with the title "Bienvenido".

## What to build
1. Router rule: ID decides the page; wrong slug returns `301`; unknown ID returns `404`.
2. `browse_*.cfm` returns `301` to `/{hotels|cities|countries|regions}/{id}/{slug}.html` for a valid ID, `404` otherwise.
3. Countries: confirm the slug pattern. Google has indexed country slugs in Title-Case and in both languages (`Islandia` and `Iceland` for ID 97; `Jap-n` and `Japan` for ID 35). Pick one Spanish, lowercase slug per country and redirect the rest.

## Checks (add to `verify.sh` once the slug pattern is agreed)
```
curl -sI "https://solo5estrellas.com/browse_country.cfm?countryid=64" | grep -i '^location'
curl -sI "https://solo5estrellas.com/hotels/962/Hotel-Ritz-Paris.html" | grep -iE '^HTTP|^location'
```

## Protect the pages that already rank
`/collection/26/Taj_Hotels.html` ranks at position 7.6 for "taj hotels" (112 impressions) and at 6.3 for "hoteles taj". When release 3 consolidates slugs, redirect `Taj_Hotels.html` and `taj-hotels.html` to **one** canonical in a **single 301 step** (no chains), keep the page content unchanged in the same release, and check Search Console for 14 days afterwards. Do the same for any page ranked in the top 10 (the Turks & Caicos country page is the other one).

## 3. `redirects-observed-search-console.csv` (added 23 Oct, test set for fix 4)
Every URL that Search Console shows for a page ID that has more than one URL: 1,404 URLs for 650 IDs (583 hotels, 48 chain pages, 12 cities, 4 countries, 3 regions), 25,588 impressions to 18 Oct. For each ID the first row is the variant with the most impressions, marked as the *suggested target*; the others should return `301` to the one canonical slug. **Verify the target against the slug rule your code generates**; the suggestion only says which variant Google already prefers. `/chains/{id}/` and `/collection/{id}/` are the same page (for example Aman, ID 21): treat them as one ID.

## Pages that already rank: one 301 step, content unchanged until the release is checked
| Page | Why |
| --- | --- |
| `/collection/26/` Taj | ranks for "taj hotels" |
| `browse_country.cfm?countryid=64` (Turks & Caicos) | 29 clicks, 8,750 impressions |
| `/collection/30/` Langham | 1 click, position 18 |
| `/collection/31/` W Hotels | lowercase slug ranks at 8.5 with a click |
| `/collection/79/` Signature Collection | 2 clicks |
| `/collection/94/` Regent | `Regent-Hotels.html` ranks at 9.7 |
| `/collection/14/` Rocco Forte | ranking page |
