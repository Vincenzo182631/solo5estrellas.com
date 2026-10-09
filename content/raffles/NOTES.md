# Raffles chain page: notes

**Status:** draft for the existing collection page `/collection/11/` (publish in place with a clean slug; today the slug is `raffles-hotels-under-the-accor-hera-program.html`). Files: `chain-raffles.md`, `.html`, `.jsonld`, `preview.png`.

## Demand
Raffles queries are small: about 50 impressions across "raffles makati", "raffles bali", "raffles istanbul", "raffles makkah palace" and similar, at positions 20 to 33. Other chain pages rank higher on impressions (Bvlgari 521, Peninsula 512 + 187, Kimpton 487 + 218, Dorchester Collection 406, Taj 294). Raffles is useful mainly as a link target from the Paris and London hubs (Le Royal Monceau - Raffles Paris and Raffles London at The OWO).

## Source
Perks, programme wording and the hotel list come from our live collection page (21 hotels, 16 countries, which matches the page text). Raffles Singapore opened in 1887, per the page. No prices, ratings or "best" claims. Schema: BreadcrumbList, CollectionPage, ItemList, FAQPage.

## Verify before publishing
1. **Programme name** (same issue as Fairmont, Z37): the live page says "Accor Hera"; public sources show client perks under "Accor Preferred". The draft says "programa de Accor para asesores de viaje".
2. Accor ALL points claim (attributed to "la página de cada hotel"), the 100 USD credit, breakfast for two (the live page says about 100 USD of value), welcome gift and Wi-Fi.
3. "Historic" tags (Raffles Europejski Warsaw, Le Royal in Phnom Penh, Grand Hotel d'Angkor) and the 1887 date, on the hotels' own sites.
4. Reviewer name, verification date and the English URL for the hreflang pair (TODO in the HTML).

## Data findings
- **Z39:** about 40 collection URLs carry a partner-programme name in the slug (for example `...-under-the-accor-hera-program`), so changing a programme name later would change URLs. Use clean brand slugs with 301s from all variants (extends Z33).
