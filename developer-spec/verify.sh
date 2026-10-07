#!/usr/bin/env bash
# Solo5Estrellas SEO fix checks. Read-only: only sends GET/HEAD requests to the public site.
# Usage: ./verify.sh [https://solo5estrellas.com]
B="${1:-https://solo5estrellas.com}"
pass=0; fail=0
ok(){ echo "PASS  $1"; pass=$((pass+1)); }
no(){ echo "FAIL  $1"; fail=$((fail+1)); }
get(){ curl -s -m 40 "$B$1"; }
code(){ curl -s -o /dev/null -m 40 -w '%{http_code}' "$B$1"; }
# 1 head markup, description, canonical on templates
for p in /hotels/6494/1-hotel-brooklyn-bridge.html /cities/192/new_york.html /chains/2/four_seasons.html /collection/10/rosewood-hotels-resorts.html /regions/8/europe.html /; do
  h=$(get "$p")
  echo "$h" | grep -qiE '<meta name="title" content="[[:space:]]*$' && no "$p: unclosed <meta name=\"title\">" || ok "$p: meta title tag closed"
  echo "$h" | grep -qiE '<meta name="description" content="[^"]{40,}"' && ! echo "$h" | tr -d '\r' | grep -A1 -qiE 'name="title" content="$' && ok "$p: meta description present" || no "$p: meta description missing or swallowed"
  echo "$h" | grep -qiE 'rel="canonical"' && ok "$p: canonical present" || no "$p: no canonical"
  echo "$h" | grep -qiE 'hreflang="es" href="[^"]+"[ ]*/?>' && ok "$p: hreflang es well formed" || no "$p: hreflang es malformed or missing"
done
# 2 titles not English, not Bienvenido
for p in /collection/ /destinations/ /faq.cfm /company.cfm /cities/192/new_york.html /chains/2/four_seasons.html; do
  t=$(get "$p" | tr -d '\r\n' | grep -oiE '<title>[^<]*' | sed 's/<title>//I')
  echo "$t" | grep -qiE 'bienvenido|excusive|^luxury|^our |^frequently|^vacation|^testimonials' && no "$p: bad title: $t" || ok "$p: title ok ($t)"
done
# 3 host and protocol
[ "$(curl -s -o /dev/null -m 30 -w '%{http_code}' http://solo5estrellas.com/)" = "301" ] && ok "http redirects with 301" || no "http does not 301 (got $(curl -s -o /dev/null -m 30 -w '%{http_code}' http://solo5estrellas.com/))"
a=$(curl -s -o /dev/null -m 30 -w '%{http_code}' https://solo5estrellas.com/); w=$(curl -s -o /dev/null -m 30 -w '%{http_code}' https://www.solo5estrellas.com/)
{ [ "$a" = "200" ] && [ "$w" = "301" ]; } || { [ "$a" = "301" ] && [ "$w" = "200" ]; } && ok "one host serves 200, the other 301" || no "both hosts answer $a / $w (one should 301)"
# 4 slugs and unknown IDs
[ "$(code /hotels/1048/anything.html)" != "200" ] && ok "wrong slug does not return 200" || no "/hotels/1048/anything.html returns 200"
[ "$(code /hotels/99999999/x.html)" = "404" ] && ok "unknown hotel ID returns 404" || no "unknown hotel ID returns $(code /hotels/99999999/x.html)"
[ "$(code /cities/9999/foo.html)" = "404" ] && ok "unknown city ID returns 404" || no "unknown city ID returns $(code /cities/9999/foo.html)"
# 5 legacy URLs
for p in "/browse_country.cfm?countryid=64" "/browse_hotel.cfm?hotelID=6745" "/browse_city.cfm?cityid=1450"; do
  c=$(code "$p"); [ "$c" = "301" ] && ok "$p redirects with 301" || no "$p returns $c (should be 301)"
done
# 6 sitemap and robots
n=$(get /sitemap.xml | grep -c '<loc>'); [ "$n" -gt 1000 ] 2>/dev/null && ok "sitemap lists $n URLs" || no "sitemap lists only $n <loc> entries (index or full list expected)"
get /robots.txt | grep -qi '^sitemap:' && ok "robots.txt has a Sitemap line" || no "robots.txt has no Sitemap line"
[ "$(code /sitemap/)" = "200" ] && ok "/sitemap/ returns 200" || no "/sitemap/ returns $(code /sitemap/)"
# 7 headers
h=$(curl -sI -m 30 "$B/" | tr -d '\r')
echo "$h" | grep -qi '^strict-transport-security' && ok "HSTS header present" || no "no HSTS header"
echo "$h" | grep -qi '^x-powered-by' && no "X-Powered-By exposed" || ok "X-Powered-By removed"
# 8 JSON-LD encoding
bad=$(get /hotels/6494/1-hotel-brooklyn-bridge.html | grep -c $'\xef\xbf\xbd'); [ "$bad" = "0" ] && ok "no U+FFFD in hotel page" || no "$bad lines with U+FFFD (broken accents) in hotel page"
echo; echo "Result: $pass passed, $fail failed"
[ "$fail" = "0" ]
