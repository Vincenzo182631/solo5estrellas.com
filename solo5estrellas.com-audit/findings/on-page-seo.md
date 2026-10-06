# On-Page SEO (25/100)

## What works

- Each page type has one H1 (398 of 399; /hotels-by-flight-time/ has none)
- Hotel titles are unique per hotel

## Findings

### Meta descriptions missing or generic [Critical]

367 of 399 pages have no readable meta description (head bug above); 24 carry the sitewide generic 'Los mejores hoteles de lujo de 5 estrellas del mundo'; all 17 region pages use it.

**Fix:** Unique descriptions from template fields.

### Titles: wrong language, typo, generic, too long [High]

7 pages titled 'Bienvenido'; English titles on /collection/, /destinations/, /destination/; 'Preferred Partner | Official Excusive Perks' on 67 of 68 chain and collection pages (English, typo, duplicate pattern); median title length 66 characters, 275 of 399 over 60 because of the suffix '| Solo 5 Estrellas por Lorraine Travel'. 19 titles are shared by 44 pages.

**Fix:** Spanish title templates under 60 characters, brand shortened.

### hreflang wrong everywhere [High]

No crawled page has a self-referencing es tag; hotel, collection, city and chain pages have a malformed es tag and no x-default; region and hub pages point es to the homepage and x-default to the English homepage.

**Fix:** Page-level reciprocal es/en pairs with WhataHotel.

### Hotel pages have no links to their own city, country, chain or guide [Medium]

Hotel pages average 43 internal links, almost all global navigation; no breadcrumbs on hotel pages (BreadcrumbList on 0 of 300).

**Fix:** Template-level contextual links and breadcrumbs.

### Loading messages are H2 headings [Low]

'Cargando tarifas...' and similar are <h2> on hotel pages.

**Fix:** Use non-heading elements.
