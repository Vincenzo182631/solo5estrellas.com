# Schema / Structured Data (40/100)

## What works

- JSON-LD present on all 399 pages; FAQPage on 190 of 300 hotels; rich chain/collection graphs (BreadcrumbList, FAQPage, ItemList) on 67 pages

## Findings

### JSON-LD text is corrupted with replacement characters on 206 pages [High]

The schema text contains U+FFFD in place of accented letters (e.g. 'n?mero', 'Cr?dito'). It is not visible in page text, but search engines and AI systems read it.

**Fix:** Fix the encoding at the data source; re-validate.

### No Hotel or LodgingBusiness schema; offers modeled as zero-price [High]

0 of 300 hotel pages have Hotel schema; 206 carry TravelAgency + Offer with price 0 and OnlineOnly availability.

**Fix:** Add Hotel entity; describe perks as visible text.

### Organization graph points to WhataHotel profiles and omits Lorraine Travel [High]

sameAs lists facebook.com/whatahotel and instagram.com/whatahotel; no parentOrganization.

**Fix:** Rebuild entity graph.

### City, region, and home pages carry only Organization and WebSite [Medium]

7 cities and 17 regions have no BreadcrumbList or ItemList.

**Fix:** Add on hubs where the visible list matches.

### Chain and collection schema may over-claim [Low]

Chain/collection graphs include TravelAgency with OpeningHoursSpecification and GeoCoordinates on brand pages; verify these match visible content.

**Fix:** Remove properties not shown on the page.
