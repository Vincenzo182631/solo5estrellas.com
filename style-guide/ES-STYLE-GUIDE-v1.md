# Solo5Estrellas: Spanish editorial style guide v1

Applies to every page, template string, hotel description, FAQ and schema text. Version 1, 7 Oct 2026. Owner: Spanish editor. Findings behind it: proposal section 4 and tracker rows L1-L6, M2, Y6.

## 1. Voice
- **Usted, always.** Not tú. Fix: "Reserva tu habitación..." becomes "Reserve su habitación..."; "Recibirás" becomes "Recibirá".
- Neutral international Spanish, readable in Spain, Mexico, Argentina, the U.S. and the rest of Latin America. No slang, no regional diminutives.
- Write for the reader's decision: what it is, who it suits, what is included, what to check. No promotional filler ("legendario", "inigualable", "sencillamente el paraíso") unless the sentence says what makes it so.
- State facts with a source and a date when they can change (prices, perks, openings, distances).

## 2. Capitalization and punctuation
- **Sentence case** in titles, headings, buttons and menus: "Los mejores hoteles del mundo", not "Los Mejores Hoteles del Mundo". Capital letters only for proper nouns.
- Opening ¿ and ¡ always. Use the Spanish quotation marks « » only in long editorial text; straight quotes elsewhere.
- No double articles ("La La Colección" becomes "La colección"). No trailing colon in H1s.
- Accents and ñ are mandatory on place names and keywords (Cancún, Canadá, Bogotá). A template check should block publishing without them.

## 3. Names
- **Never translate** hotel names, brand names, program names, restaurant names: Four Seasons, The Ritz-Carlton, Grace Bay Club, Preferred Partner (first mention: "Four Seasons Preferred Partner").
- **Use the Spanish name** where one is standard: Nueva York, Londres, París, Roma, Estambul, Ciudad de México, Islas Turcas y Caicos, Estados Unidos, Reino Unido. The full lookup is in `place-names-es.csv`.
- Where searchers use both forms, show both once: "Islas Turcas y Caicos (Turks and Caicos)".
- Write the brand as **Solo5Estrellas** in running text (not "Solo 5 Estrellas"); "Lorraine Travel" in full, "operado por Lorraine Travel desde 1948".

## 4. Preferred terms
| Concept | Use | Avoid |
| --- | --- | --- |
| Luxury hotel | hotel de lujo | hotel luxury |
| Five-star hotel | hotel de cinco estrellas (body), hotel 5 estrellas (titles) | 5-estrellas, cinco-estrellas |
| Room | habitación | cuarto (colloquial in Mexico) |
| Booking | reserva | reservación in titles (allowed in body copy for U.S. and Mexico if Search Console shows demand) |
| Benefits | beneficios (program: "ventajas" only inside a sentence) | bonificaciones |
| Hotel credit | crédito de hotel (100 USD) | crédito del resort, credit |
| Room upgrade | mejora de categoría de habitación, sujeta a disponibilidad | upgrade (mention once per page for searchers), mejora de habitación |
| Breakfast included | desayuno diario para dos | desayuno gratis (allowed in FAQ questions that use it) |
| Late check-out | salida tarde, si se solicita | late check-out (mention once) |
| Stay | estancia | estadía only in Mexico and Latin America landing copy |
| Rates | tarifas (informational: precios) | rates |
| Wi-Fi | Wi-Fi | wifi, WiFi |
| Travel agency | agencia de viajes; asesor de viajes | travel agent |
| Car | coche (Spain), auto (Latin America, U.S.) | carro |
| Pros and cons | pros y contras | ventajas y desventajas (as a label) |
| Tip | consejo de Solo5Estrellas | Pro-Tip |
| Adults-only | solo para adultos | adults only |

Keep anglicisms only when people search for them (resort, spa, check-in, upgrade). Never leave an English sentence fragment inside Spanish text (found: "¿Qué es the Four Seasons (socio preferente) program?").

## 5. Numbers, money, dates, distances
- Money: write "100 USD" or "US$ 100"; one format across the site. Always say the currency. Thousands with a comma for now ("1,250 USD"); revisit if a Spain version is created.
- Dates: "15 de marzo de 2027"; never month-first numerals.
- Distances and times: kilómetros and minutos ("a unos 25 minutos en coche"); give the source for any figure that can change.
- Ratings and awards need a source and a year. Do not publish AI-generated ratings (the 4.6-4.9 averages on hotel pages) as if they were reviews.

## 6. Approved wording blocks (reuse exactly)
- **Perks (Four Seasons Preferred Partner):** "Al reservar con Solo5Estrellas, operado por Lorraine Travel, paga la misma tarifa publicada y recibe desayuno diario para dos, crédito de hotel de 100 USD (100 a 200 USD en suites y residencias), mejora de categoría sujeta a disponibilidad, detalle de bienvenida y Wi-Fi premium."
- **Verification line:** "Beneficios verificados el [fecha]."
- **Availability:** "Sujeto a disponibilidad al hacer el check-in." / "Se confirma al reservar."
- **Not bookable online:** "Este hotel se reserva por consulta. Contacte con su asesor."
- **Operator:** "Solo5Estrellas es operado por Lorraine Travel, agencia de viajes de lujo fundada en 1948."
- **AI note (hotel pages):** "Las perspectivas, ventajas y desventajas y valoraciones de esta página se han generado con IA y las ha revisado [nombre], [fecha]." (publish only after a person has reviewed the text)

## 7. Region notes
| Topic | Spain | Mexico / Latin America | U.S. Spanish |
| --- | --- | --- | --- |
| Car | coche | auto | auto |
| Booking | reserva | reserva or reservación | reservación is common |
| Currency | show € only if a Spain version exists | USD | USD |
| Formal address | usted in sales copy | usted | usted |
Default: write for all; apply a regional form only on pages written for one market, never mixed on the same page.

## 8. Checklist before publishing a page
1. Usted throughout; no tú forms.
2. Sentence case in every heading and title; no double articles.
3. Accents and ñ on every place name; names from `place-names-es.csv`.
4. Hotel and brand names untranslated; "Solo5Estrellas" written one way.
5. Each perk uses the approved block; amounts and currency stated; verification date present.
6. No English sentence fragments; anglicisms only from the allowed list.
7. Title 60 characters or fewer; description 155 or fewer; one H1.
8. Every claim that can change has a source and a date; no AI-generated ratings.
9. A native speaker has read it.

## 9. Known defects to clear first (from the audit)
`Reserva tu habitación...` (tú); `Reciba Una Nnoche Gratis` (typo and Title Case); `1 Alojamiento, 2 Adulta`; `La La Colección:`; `Cancun`; `Bonificaciones Exclusivas`; `Pro-Tip`; `Spanish / English` language toggle; English titles on `/collection/`, `/destinations/`, `/faq.cfm`, `/company.cfm`; `Official Excusive Perks`; English country and state names on the Four Seasons page.
