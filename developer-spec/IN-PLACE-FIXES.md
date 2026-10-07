# Solo5Estrellas: in-place SEO fixes (spec for the web developer)

Scope: fix the current URLs. No new URLs, no redesign. Written without access to the code, so snippets are illustrative (ColdFusion on IIS, as observed from the responses); adapt them to your templates.

How to check your work: run `./verify.sh` (read-only, public GET and HEAD requests). **Baseline on 7 Oct 2026: 6 passed, 38 failed.** The goal is 44 of 44. Run it on staging by passing the staging URL as the first argument.

Order of work (impact first, each item is independent):

| # | Fix | Effort | Checks |
| --- | --- | --- | --- |
| 1 | Head markup | S | meta tags, hreflang |
| 2 | Canonical | S | canonical |
| 3 | Host and protocol | S | host, http |
| 4 | Slugs and unknown IDs | M | slugs, 404 |
| 5 | Legacy URLs | S-M | legacy |
| 6 | Sitemap, robots, `/sitemap/` | M | sitemap |
| 7 | Titles and descriptions | S | titles |
| 8 | hreflang pairs with WhataHotel | M | hreflang |
| 9 | Encoding (JSON-LD accents) | S | U+FFFD |
| 10 | Headers and cookies | S | headers |

## 1. Head markup (hotel, collection, city and chain templates)
Problem: the head contains `<meta name="title" content="` with no value and no closing quote, so the next tag (the description) is swallowed. The `hreflang="es"` link is also cut off.

Before (hotel page):
```html
<meta name="title" content="
<meta name="description" content="Los mejores hoteles de lujo de 5 estrellas del mundo">
...
<link rel="alternate" hreflang="es" href="https://www.solo5estrellas.com/hotels/ >
```
After:
```html
<meta name="description" content="#EncodeForHTMLAttribute(pageDescription)#">
<link rel="alternate" hreflang="es" href="#canonicalUrl#">
```
Remove `<meta name="title">` (not a standard tag) or fill and close it. Check: view source; the description is a single valid tag on every template.

## 2. Canonical
On every indexable page, output one absolute, self-referencing canonical built from the **canonical slug** (fix 4):
```html
<link rel="canonical" href="https://solo5estrellas.com/hotels/#id#/#canonicalSlug#.html">
```
Use the chosen host (fix 3), lowercase path, no query string. Do not output a canonical on `/booking/`, `/login.cfm`, `/manage/` (these are already blocked or `noindex`). Search and filter pages: canonical to the clean listing page, never to themselves.

## 3. One host and HTTPS
Currently `solo5estrellas.com` and `www.solo5estrellas.com` both return 200, and `http` redirects with a 302. Decision needed: apex or `www`. The sitemap and most links use the apex, so the apex is the lower-risk choice.
IIS URL Rewrite (illustrative):
```xml
<rule name="Canonical host" stopProcessing="true">
  <match url="(.*)" />
  <conditions logicalGrouping="MatchAny">
    <add input="{HTTP_HOST}" pattern="^www\.solo5estrellas\.com$" />
    <add input="{HTTPS}" pattern="off" />
  </conditions>
  <action type="Redirect" url="https://solo5estrellas.com/{R:1}" redirectType="Permanent" />
</rule>
```
Check: `curl -sI http://www.solo5estrellas.com/x` returns 301 straight to `https://solo5estrellas.com/x` (one hop).

## 4. One slug per ID, real 404s
Observed: hotels are linked as both `/hotels/4839/blackberry-farm.html` and `/hotels/4839/blackberry_farm.html` (about 3,080 of 3,235 IDs); any slug returns 200; unknown hotel IDs answer 302, unknown city IDs answer 200; some slugs contain `<br>`, `**` or tabs and return 400.
Rules:
1. Build the canonical slug once: lowercase, accents removed, HTML tags and markdown removed, any run of non-alphanumerics replaced by one hyphen, trimmed.
2. Hotel, city, country, region, chain and collection pages: if the requested slug differs from the canonical slug, answer `301` to the canonical URL.
3. If the ID does not exist, answer `404` with a real 404 page (not `200`, not a redirect to the home page).
4. Use the same slug function when generating every internal link, so the templates stop emitting the underscore variants.
```cfm
<cfif NOT qHotel.recordCount>
  <cfheader statuscode="404" statustext="Not Found">
  <cfinclude template="/errors/404.cfm"><cfabort>
</cfif>
<cfif url.slug NEQ canonicalSlug>
  <cfheader statuscode="301" statustext="Moved Permanently">
  <cfheader name="Location" value="https://solo5estrellas.com/hotels/#id#/#canonicalSlug#.html"><cfabort>
</cfif>
```
Also: `/chains/2/four_seasons.html` and `/collection/2/four-seasons.html` serve the same page (two URL families). Choose `/chains/` or `/collection/` per type and 301 the other.

## 5. Legacy URLs
`browse_country.cfm?countryid=64` is the top organic landing page (29 of 124 clicks) and `browse_hotel.cfm?hotelID=`, `browse_city.cfm?cityid=`, `browse_region.cfm?regionid=` are also indexed. Answer `301` to the canonical clean URL of the same record; unknown IDs get `404`.
Check: `curl -sI "https://solo5estrellas.com/browse_country.cfm?countryid=64"` returns `301` with the clean URL in `Location`.

## 6. Sitemap, robots, HTML sitemap
- `/sitemap.xml` becomes a sitemap index pointing to `sitemap-hotels.xml`, `sitemap-cities.xml`, `sitemap-countries.xml`, `sitemap-regions.xml`, `sitemap-chains.xml`, `sitemap-collections.xml`, `sitemap-pages.xml`. Keep each file under 50,000 URLs.
- List canonical URLs only (200 responses, no redirects), with a real `lastmod` (the record's last change, not today's date).
- Add to `robots.txt`: `Sitemap: https://solo5estrellas.com/sitemap.xml`. Keep the existing `Disallow: /booking/` etc.
- The footer links to `/sitemap/`, which returns 404: create an HTML sitemap there (regions, countries, cities, chains) or remove the link.
- Submit the index in Search Console and Bing Webmaster Tools.

## 7. Titles and descriptions
Today: 7 pages are titled "Bienvenido"; `/collection/`, `/destinations/`, `/faq.cfm`, `/company.cfm` and others have English titles; 67 of 68 chain and collection titles read "Preferred Partner | Official Excusive Perks | ..."; the brand suffix is 37 characters. Patterns below keep titles at 60 characters or fewer; sentence case; brand written `Solo5Estrellas`.

| Page | Title pattern | Example |
| --- | --- | --- |
| Home | `Hoteles de lujo de 5 estrellas en el mundo \| Solo5Estrellas` | (59 chars) |
| Hotel | A: `{Hotel}, {Ciudad}: beneficios exclusivos \| Solo5Estrellas`; if over 60 characters use B: `{Hotel}, {Ciudad} \| Solo5Estrellas`; if still over, C: `{Hotel} \| Solo5Estrellas` | `1 Hotel Brooklyn Bridge, Nueva York \| Solo5Estrellas` |
| City | `Hoteles de lujo en {Ciudad} \| Solo5Estrellas` | `Hoteles de lujo en Nueva York \| Solo5Estrellas` (46) |
| Country | `Hoteles de lujo en {País} \| Solo5Estrellas` | `Hoteles de lujo en Islas Turcas y Caicos \| Solo5Estrellas` (57) |
| Region | `Hoteles de lujo en {Región} \| Solo5Estrellas` | `Hoteles de lujo en Europa \| Solo5Estrellas` (42) |
| Chain / collection | `Hoteles {Cadena}: beneficios exclusivos \| Solo5Estrellas`; fallback `Hoteles {Cadena} \| Solo5Estrellas` | `Hoteles Four Seasons: beneficios exclusivos \| Solo5Estrellas` (60) |
| `/collection/` | `La colección: hoteles de lujo de 5 estrellas \| Solo5Estrellas` | |
| `/destinations/` | `Destinos de lujo en el mundo \| Solo5Estrellas` | |
| `/specials/` | `Ofertas en hoteles de lujo \| Solo5Estrellas` | |
| `/homes/` | `Villas y residencias de lujo \| Solo5Estrellas` | |
| `/faq.cfm` | `Preguntas frecuentes \| Solo5Estrellas` | |
| `/company.cfm` | `Quiénes somos: Lorraine Travel desde 1948 \| Solo5Estrellas` | |
| `/testimonials.cfm` | `Testimonios de clientes \| Solo5Estrellas` | |
| `/guarantee.cfm` | `Nuestra garantía \| Solo5Estrellas` | |
| `/contact.cfm` | `Contacto \| Solo5Estrellas` | |
| `/nearby-hotels/` | `Hoteles de lujo para una escapada en coche \| Solo5Estrellas` | |
| `/hotels-by-flight-time/` | `Hoteles de lujo por duración del vuelo \| Solo5Estrellas` | |

Descriptions (155 characters maximum; cut at a word boundary; never reuse the global string):

| Page | Description pattern |
| --- | --- |
| Hotel (perks known: breakfast and credit) | `Reserve {Hotel} en {Ciudad} con desayuno para dos, crédito de hotel y mejora de categoría. Solo5Estrellas, de Lorraine Travel.` |
| Hotel (otherwise) | `Reserve {Hotel} en {Ciudad}, {País}, con los beneficios exclusivos de Solo5Estrellas, operado por Lorraine Travel.` |
| City | `Compare {N} hoteles de lujo de 5 estrellas en {Ciudad} y reserve con beneficios exclusivos. Solo5Estrellas, de Lorraine Travel desde 1948.` |
| Country / region | `Compare {N} hoteles de lujo en {País} y reserve con beneficios exclusivos de Solo5Estrellas, operado por Lorraine Travel.` |
| Chain | `Reserve {N} hoteles {Cadena} en {P} países con desayuno para dos, crédito de hotel y mejora de categoría, a la misma tarifa publicada.` |

Use the Spanish city and country names (Nueva York, Londres, Estambul; not New York, London, Istanbul) from a lookup table; never translate hotel or brand names. The page `<h1>` stays as is. I will send the lookup table of Spanish place names on request.

## 8. hreflang with WhataHotel
Today every page declares `es` = the home page and `x-default` = the English home page, or has a cut-off tag. Required, per page:
```html
<link rel="alternate" hreflang="es" href="{this page's canonical}">
<link rel="alternate" hreflang="en" href="{the same record's English URL on whatahotel.com}">
<link rel="alternate" hreflang="x-default" href="{same English URL}">
```
Output the `en` pair only if the English page exists; WhataHotel must output the reciprocal `es` tag. Example for the Four Seasons chain: `en` = `https://whatahotel.com/collection/2/Four-Seasons.html`. Question for you: what is the English URL pattern for hotels, cities, regions and countries (the audit saw `/cities/192/Nueva-York.html` and `/region/8/Europa.html` on the English site)?

## 9. Encoding
About 200 hotel pages carry the replacement character (U+FFFD) in place of accented letters inside the JSON-LD (for example `Cr?dito`, `n?mero`). The visible text is fine, so the damage is in the data or in how the JSON-LD block is built. Check the database column collation and encoding, the CFML `setEncoding`/`cfcontent charset` settings, and the string functions that build the JSON-LD (avoid byte-level truncation of UTF-8 text). Check: `curl -s <hotel page> | grep -c $'\xef\xbf\xbd'` returns `0`.

## 10. Headers and cookies
Add `Strict-Transport-Security: max-age=31536000` (after fix 3 is stable), `X-Content-Type-Options: nosniff`, `Referrer-Policy: strict-origin-when-cross-origin`; remove `X-Powered-By`; add `Cache-Control` for static assets and for city, chain and collection pages; make the `CFID`/`CFTOKEN` cookies session cookies (they currently expire in 2056). Consider caching the city pages: New York, London and Cancún take 2.8-3.4 s to first byte (other templates take about 0.6 s).

## What not to change yet
Do not launch the new URLs from the content drafts (`/hoteles-de-lujo/...`, `/hoteles-four-seasons/`); do not change `robots.txt` Disallow rules; do not noindex anything until fixes 1-5 are live and re-crawled.

## Release plan
1. Staging: fixes 1, 2, 7 first (template only). Run `verify.sh <staging>`.
2. Production: fixes 1, 2, 7; run `verify.sh`; request re-indexing of the home page and 10 sample pages in Search Console.
3. Fixes 3-5 together (redirects); keep a rollback copy of the old rules; watch Search Console coverage daily for two weeks.
4. Fixes 6, 8, 9, 10.
Report the `verify.sh` result after each step.
