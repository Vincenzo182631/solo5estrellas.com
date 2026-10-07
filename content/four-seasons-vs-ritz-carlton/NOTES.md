# Four Seasons vs Ritz-Carlton: notes

**Status:** draft. Proposed new URL `/guias/four-seasons-vs-ritz-carlton/`. Publish after the in-place fixes (`developer-spec/IN-PLACE-FIXES.md`).

## Sources
- Our chain pages `/chains/2/four_seasons.html` and `/chains/13/ritz_carlton.html`: hotel counts (141 and 116), country labels (47 and 35), perk lists, hotel links.
- Public context: One Mile at a Time and Prince of Travel (Four Seasons has no loyalty program; Marriott STARS perks, with Bonvoy points continuing).

## Rules followed
- No "better" or rating claims. The page says the choice depends on points, destination and perks.
- Where a perk is not on a chain page, the table says "No figura en la lista de ventajas de la página", not "no".
- No prices. Schema: BreadcrumbList, ItemList, FAQPage only.

## Verify before publishing
1. Perks for both programs on the current partner pages (date and reviewer name are placeholders).
2. Bonvoy points and night credit still apply on this booking path.
3. "Considere las dos si" destinations still have both brands.
4. Hotel names and links against the live site (the NoMad name was checked against the site list).

## Data findings
- Z22: Hotel Arts Barcelona is listed under Ritz-Carlton.
- Z23: the Ritz page text and the list give different country counts.
- Z24: The Ritz-Carlton, Bal Harbour is missing from the Miami hub draft.
