# Hotel page structured data and social tags (add to fix 1 and fix 9)

Checked on `/hotels/6494/1-hotel-brooklyn-bridge.html` (8 Oct 2026). Same template for all hotel pages.

## What the page has today
| Block | Problem |
| --- | --- |
| `Organization` + `WebSite` | Fine. Name reads "Solo 5 Estrellas"; use `Solo5Estrellas` everywhere |
| `hasOfferCatalog` object | No `@context` and no `@type` on the root object, so it is not valid JSON-LD. It also marks "noche gratis" as an `Offer` with price 0 and uses "Nnoche" (typo) |
| `FAQPage` | Valid; answers say "WhataHotel!" on the Spanish site; check that every answer also appears on the page |
| **No `Hotel` entity** | The one schema type that describes the page is missing |
| No `BreadcrumbList` | Missing |
| `og:description` | Global string on every page ("Los mejores hoteles de lujo de 5 estrellas del mundo") |
| Accents | `n?mero`, `Cr?dito` in the offer text (fix 9) |

## Replace with (per hotel page)
```json
{"@context":"https://schema.org","@graph":[
 {"@type":"Hotel","@id":"https://solo5estrellas.com/hotels/6494/1-hotel-brooklyn-bridge.html#hotel",
  "name":"1 Hotel Brooklyn Bridge",
  "url":"https://solo5estrellas.com/hotels/6494/1-hotel-brooklyn-bridge.html",
  "image":"https://solo5estrellas.com/content/hotels/6494/1_Hotel_Brooklyn_Bridge_Riverhouse_Suite_Swing.jpg",
  "address":{"@type":"PostalAddress","addressLocality":"Nueva York","addressCountry":"US"},
  "inLanguage":"es"},
 {"@type":"BreadcrumbList","itemListElement":[
  {"@type":"ListItem","position":1,"name":"Inicio","item":"https://solo5estrellas.com/"},
  {"@type":"ListItem","position":2,"name":"Nueva York","item":"https://solo5estrellas.com/cities/192/new-york.html"},
  {"@type":"ListItem","position":3,"name":"1 Hotel Brooklyn Bridge"}]}
]}
```
Field sources and rules:
- `name`, `url` (the canonical), `image` (the same image as `og:image`): already in the data.
- `address`: `addressLocality` = Spanish city name, `addressCountry` = ISO code. Add `streetAddress` and `postalCode` **only if stored**; do not guess.
- Keep the existing `FAQPage` block, output separately; fix the "WhataHotel!" wording in the FAQ source text.
- Remove the `hasOfferCatalog` block. The perks are already visible in "Bonificaciones exclusivas"; mark them up only as plain text on the page.
- Do not add `AggregateRating` or `Review`. The 4.8 on the page is AI-generated, not a guest rating.
- Do not add price or `priceRange` (rates are live and vary by date).
- Output every string as UTF-8; build JSON with a serializer, not string concatenation, so quotes and accents can't break it.

## Social tags
```html
<meta property="og:type" content="website">
<meta property="og:title" content="{SEO title}">
<meta property="og:description" content="{meta description}">
<meta property="og:locale" content="es_ES">
<meta name="twitter:card" content="summary_large_image">
```
`og:title` and `og:description` reuse the page's `<title>` and meta description (see `titles-descriptions.csv`); `og:url` must equal the canonical.

## Checks
```
curl -s <hotel page> | grep -c '"@type":"Hotel"'          # 1
curl -s <hotel page> | grep -c 'hasOfferCatalog'           # 0
curl -s <hotel page> | grep -c $'\xef\xbf\xbd'             # 0
```
Then paste the URL into the Rich Results Test and the Schema Markup Validator; both must show Hotel, Breadcrumbs and FAQ with no errors.
