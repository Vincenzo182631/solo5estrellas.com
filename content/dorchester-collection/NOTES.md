# Dorchester Collection chain page: notes

**Status:** draft for the existing collection page `/collection/37/` (publish in place with a clean slug; today the 406 impressions sit on `The_Dorchester_Collection.html`, plus a program-named slug with 20). Files: `chain-dorchester.md`, `.html`, `.jsonld`, `preview.png`.

## Demand
24 queries, 322 impressions: "dorchester collection" 147 (position 19.1), "dorchester collection hotels" 49 (28.5), "dorchester hotels" 45 (50.6), "dorchester diamond club" 19 (38.0). Mostly English; the Spanish pages for The Dorchester (London hub), Le Meurice and Plaza Athénée (París hub) already link to this chain page. The page title uses the shorter variant ("Hoteles Dorchester Collection | Solo5Estrellas") because the long form is 69 characters.

## Source
Perks, programme wording and the hotel list come from our live collection page (9 hotels, 5 countries, which matches the page text). Prince of Travel and Fora confirm the programme name, the 100 USD credit, daily breakfast and upgrades when available, that perks vary by property, and the ineligible rates (prepaid, online agencies, award stays, corporate or discounted) and no combining with other agency programmes. No prices, ratings or "best" claims. Schema: BreadcrumbList, CollectionPage, ItemList, FAQPage.

## Verify before publishing
1. **Early check-in and late check-out:** our live page lists them; public sources do not mention them for Diamond Club. The draft keeps them as "sujetas a disponibilidad". Remove if the programme does not include them.
2. **Hotel list:** public sources describe about 10 properties; the live list has 9 (no Coworth Park, no Dorchester Collection property outside these cities). Confirm which hotels take part.
3. The "bienvenida de la dirección" wording, the 100 USD credit and the ineligible-rate FAQ against the current programme terms.
4. Reviewer name, verification date and English URL for hreflang (TODO in the HTML).

## Data findings
- The page header says "6 hoteles" while the page text and the list show 9. This is the same header-count error that affects 23 chain pages (see Z42).
