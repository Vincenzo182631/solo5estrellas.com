# Hotel record cleanup: one list for Matt

**What this is:** every renamed, closed, misplaced or wrongly described hotel found while drafting the 99 hotel pages (ranks 1 to 101 by impressions, Search Console export of 27 Oct) and the city pages, in one place. Checked between 29 Oct and 10 Nov 2026. Details and sources are in each batch's `content/hoteles-*/README.md` and copy files.

**Totals:** 59 fixes on 53 hotel records, plus a login wall on 17 hotel pages. "Dev" items Matt can do now; "Client" items wait for a client decision; "Dev + Client" needs both.

**Order of work:** sections 1 to 3 first (they send Google and guests to the wrong hotel or place), then 8 and 9, then 10. Sections 4, 6 and 7 wait for the client.

## 1. Redirect or retire (the hotel no longer exists under this record)

| ID | Record now says | Fix | Who | Tracker |
| --- | --- | --- | --- | --- |
| 1920 | The Plaza | /hotels/1920/ answers 302 to the home page; hotel no longer in the collection. Make it a 301 to the New York city page. | Dev | Z116 |
| 2841 | W Atlanta-Downtown | Reopened 14 May 2026 as JW Marriott Atlanta Downtown (record 7123). 301 /hotels/2841/ to /hotels/7123/. | Dev | Z121 |
| 1553 | Four Seasons Hotel Shanghai at Puxi | Four Seasons left; reopened 25 Sep 2024 as Alila Shanghai (record 6719). 301 /hotels/1553/ to /hotels/6719/. | Dev | Z121 |
| 2218 | W Atlanta – Midtown | Since 2022 The Starling Atlanta Midtown (Hilton Curio), not in the collection. 301 to the Atlanta city page, or add The Starling and redirect there (client decides). | Dev + Client | Z128 |

## 2. Rename the record (and the slug, with a 301 from the old one)

| ID | Record now says | Fix | Who | Tracker |
| --- | --- | --- | --- | --- |
| 2648 | Paradisus Playa del Carmen, La Esmeralda | Paradisus Playa del Carmen (renamed July 2020; adults-only side is Paradisus La Perla, 2649). New slug, 301 the old one. | Dev | Z121 |
| 6608 | Sofitel Baru Calablanca Beach Resort | Sofitel Barú Cartagena Beach Resort. New slug, 301 the old one. | Dev | Z121 |
| 2528 | Hotel Barriere Le Majestic Cannes | Spelling: Hôtel Barrière Le Majestic Cannes. | Dev | Z121 |
| 6697 | Rocco Forte House, Milan | Rocco Forte House Via Manzoni Milano (11 apartments, not a hotel). | Dev | Z126 |
| 3834 | Waterline Marina Resort & Beach Club, Autograph Collection | Waterline Villas & Marina, Autograph Collection (reopened Oct 2024). | Dev | Z128 |
| 6852 | Four Seasons Resort Mykonos | Four Seasons Hotel Mykonos. | Dev | Z128 |
| 1271 | Four Seasons Resort Costa Rica | Four Seasons Resort Peninsula Papagayo, Costa Rica. | Dev | Z128 |
| 2291 | Verdura Golf & Spa Resort | Verdura Resort, a Rocco Forte Hotel. | Dev | Z128 |
| 4333 | S Hotel Jamaica | S Hotel Montego Bay. | Dev | Z129 |
| 3129 | Hotel du Collectionneur Arc de Triomphe Paris | Hôtel du Collectionneur (drop "Arc de Triomphe"). | Dev | Z129 |
| 6995 | Hotel La Compañía de Valle | Hotel La Compañía del Valle (The Unbound Collection by Hyatt). | Dev | Z129 |
| 2168 | Pan Pacific Hotel Seattle | Now 1 Hotel Seattle (SH Hotels & Resorts), reopened April 2025 at the same address. New slug, 301 the old one; confirm perks (live ones are probably Pan Pacific's). | Dev + Client | Z130 |
| 1047 | Romazzino | Romazzino, A Belmond Hotel, Costa Smeralda (Belmond since 2024). Confirm the perks still apply. | Dev + Client | Z130 |
| 6111 | La Reserve Geneve Hotel, Spa & Villa | La Réserve Genève – Hotel and Spa. | Dev | Z130 |
| 2193 | Trump International Tower Las Vegas | Trump International Hotel Las Vegas (non-gaming condo-hotel, on Fashion Show Drive). | Dev | Z130 |
| 3526 | The Santa Maria Hotel & Golf Resort | The Santa Maria, a Luxury Collection Hotel & Golf Resort. Ocean Prime no longer listed; remove old mentions. | Dev | Z130 |
| 1112 | The Langham Hotel, Hong Kong | The Langham, Hong Kong (no "Hotel"). | Dev | Z130 |
| 1030 | Hotel de la Cite Carcassonne | Hôtel de la Cité Carcassonne – MGallery Collection. | Dev | Z130 |
| 1418 | Sensei Lanai, A Four Seasons Resort | Becomes Four Seasons Resort Lanai at Koele on 16 Dec 2026 (full Four Seasons management). Rename then; recheck age policy and perks. | Dev + Client | Z130 |

## 3. Wrong city or location

| ID | Record now says | Fix | Who | Tracker |
| --- | --- | --- | --- | --- |
| 6788 | Fairmont La Hacienda Costa del Sol | In San Roque (La Alcaidesa, Cádiz), not Casares. Page header shows no name or city. | Dev | Z128 |
| 6433 | Villa Le Blanc Gran Melia | In Menorca (Santo Tomás), not "Balearic Islands". | Dev | Z128 |
| 3616 | El Mangroove, Autograph Collection | At Playa Panamá (Guanacaste), not Península Papagayo. | Dev | Z126 |
| 6869 | Four Seasons Puerto Rico | In Río Grande (Bahía Beach, former St. Regis), not San Juan. | Dev | Z129 |
| 6995 | Hotel La Compañía de Valle | In El Valle de Antón, about 80 km from Panama City (record says Panama City). | Dev | Z129 |
| 6798 | SLS Barcelona | At Port Fòrum, Sant Adrià de Besòs (next to Diagonal Mar); keep under Barcelona but fix the address. | Dev | Z129 |
| 3311 | Karen Blixen Camp | In the Masai Mara (Mara North Conservancy), not Nairobi. Move the record to city 743. | Dev | Z130 |
| 6379 | Barracuda Hotel and Villas | In Itacaré (Bahia), not Salvador; nearest airport Ilhéus. | Dev | Z130 |

## 4. Not a hotel (client decides)

| ID | Record now says | Fix | Who | Tracker |
| --- | --- | --- | --- | --- |
| 6652 | Ritz Carlton Yacht Collection | Cruise line listed as an Athens hotel; perks NULL; not bookable online. Client decides: keep as a cruise page or remove. | Client | Z126 |
| 7009 | Four Seasons Yachts | Yacht listed as a Miami hotel; no perks; not bookable online. Client decides: keep or retire. | Client | Z129 |

## 5. Missing data in the page header

| ID | Record now says | Fix | Who | Tracker |
| --- | --- | --- | --- | --- |
| 1125 | Casa de Campo | Page header shows no name or city. | Dev | Z126 |

## 6. Confirm the hotel is open (client)

| ID | Record now says | Fix | Who | Tracker |
| --- | --- | --- | --- | --- |
| 4329 | Royal Park Hotel Lima | May still be closed; reopening (May 2026) not confirmed. | Client | Z126 |
| 4224 | Son Bunyola | Status after a reported storm closure not fully confirmed; season March to mid-November. | Client | Z126 |

## 7. Not clearly five-star (client decides)

| ID | Record now says | Fix | Who | Tracker |
| --- | --- | --- | --- | --- |
| 2066 | Hotel La Perouse | Hotel calls itself 4-star. Keep in a five-star collection? | Client | Z126 |
| 6943 | Delta Hotels Riviera Nayarit | Marriott "Classic Premium" brand, not luxury. Keep? | Client | Z129 |
| 6502 | Paris Marriott Opera Ambassador | 4-star (Marriott Premium tier). Keep? | Client | Z129 |
| 3257 | JW Marriott Phoenix Desert Ridge | 950-room convention resort. Keep? | Client | Z129 |
| 3129 | Hotel du Collectionneur | Own site says both 4 and 5 stars. Keep? | Client | Z129 |
| 6621 | Fontainebleau Las Vegas | 3,644-room casino and convention resort. Keep? | Client | Z130 |
| 6920 | Hotel U14, Autograph Collection | Autograph Collection is Marriott's upper-upscale tier. Keep? | Client | Z130 |

## 8. Template and data errors

| ID | Record now says | Fix | Who | Tracker |
| --- | --- | --- | --- | --- |
| 1816 | Omni Homestead | English <title> and description; perks show NULL. | Dev | Z114 |
| 1094 | Hotel Sacher Salzburg | English <title> and description. | Dev | Z114 |
| 1879 | Ashford Castle | Perks show NULL. | Dev | Z126 |

## 9. Perks to correct

| ID | Record now says | Fix | Who | Tracker |
| --- | --- | --- | --- | --- |
| 2648 | Paradisus Playa del Carmen | All-inclusive: remove the breakfast line (client rule). | Dev | Z121 |
| 4296 | Calala Island | All-inclusive: remove the breakfast line (client decision pending). | Client | Z126 |
| 6288 | Hotel Xcaret Arte | All-inclusive: remove the breakfast line. | Dev | Z128 |
| 3547 | Miraval Austin | All-inclusive: remove the breakfast line. | Dev | Z128 |
| 6943 | Delta Hotels Riviera Nayarit | All-inclusive: remove the breakfast line. | Dev | Z129 |
| 5034 | Fogo Island Inn | Full board: remove the breakfast line. | Dev | Z129 |
| 4333 | S Hotel Montego Bay | All-inclusive dining: remove breakfast unless a room-only rate exists (client confirms). | Client | Z129 |
| 4085 | Hotel Nantipa | Breakfast for "3 Personas": likely a typo for 2 (client confirms). | Client | Z129 |
| 964 | Necker Island | Typos in the perks text ("u1 Hora", "Hesort"). | Dev | Z121 |
| 6379 | Barracuda Hotel and Villas | Rates include breakfast: remove the breakfast line, as for Altstadt Vienna (client confirms). | Client | Z130 |

## 10. Out-of-date text on the page

| ID | Record now says | Fix | Who | Tracker |
| --- | --- | --- | --- | --- |
| 3001 | Hotel Unico Madrid | Ramón Freixa restaurant closed Dec 2024; now El Patio de Claudio. Remove old mentions. | Dev | Z128 |
| 3114 | The Beaumont | Colony Grill replaced by Rosi (2025). Remove old mentions. | Dev | Z129 |
| 4367 | L'Hotel | The separate restaurant no longer appears; food is at Wilde's. Remove old mentions. URL has an apostrophe: include in fix 4 (one slug per ID). | Dev | Z130 |

## 11. Login wall (Z115)

These hotel pages hide the description, perks and photos behind a login form, so Google sees no content: 1079, 1202, 1227, 1410, 1483, 1553, 2250, 2455, 2841, 2962, 3203, 3359, 3616, 3834, 3897, 4077, 7024. Show the content to everyone; keep the login only for booking.

A CSV of the same list (sortable) is in `HOTEL-RECORD-CLEANUP.csv`.
