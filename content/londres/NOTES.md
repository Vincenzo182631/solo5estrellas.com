# Londres hub: notes

**Status:** draft for the existing page `/cities/150/london.html` (publish in place, with the Spanish name "Londres"). Files: `hub.md`, `hub.html`, `hub.jsonld`, `preview.png`.

## Why
London queries (Mayfair, Dorchester, Chesterfield, "londres") total 1,038 impressions at position 21 across Spanish and English, and the city page has no guide copy. The page lists 82 hotels; this draft groups 81 by zone.

## What it contains
Direct answer, 8 zones with the hotel list, a "which zone" table, when to go, getting around, perks block, 8 FAQ, internal links, schema (BreadcrumbList, CollectionPage, ItemList, FAQPage). No prices (the live page shows GBP rates; see Z21).

## Sources
Heathrow Express journey time; Heathrow trains page; GOV.UK ETA page. Everything else (zones, neighbourhood descriptions) is general knowledge and must be checked.

## Verify before publishing
1. **Zone placement of each hotel** (assigned from my knowledge of London, not from the site): especially The St. Regis London (placed in Mayfair), The Emory, The Peninsula London, Cambridge House, Great Scotland Yard, Hotel Cafe Royal, Royal Lancaster.
2. Transfer times (Heathrow Express about 15 minutes to Paddington; Elizabeth line to Bond Street 30 to 40 minutes; Gatwick to Victoria about 30 minutes) against the operators' pages.
3. ETA wording: US and EU (including Spain) travellers need an ETA; other nationalities, including Mexico, were not confirmed and the page tells readers to check GOV.UK. No fee is quoted.
4. Perks wording and the verification date; reviewer name and date.
5. English URL for the hreflang pair (one TODO in `hub.html`).

## Data findings
- **Z34:** Hanbury Manor Marriott is listed under London but is in Hertfordshire, outside London. Left out of the hub.
- The live city label is "London" (English) on a Spanish page; the hub uses "Londres".
