#!/usr/bin/env bash
# Stáhne fotky koček z Unsplash do složky images (přepíše zástupné obrázky).
cd "$(dirname "$0")/images" || exit 1
while read -r jmeno id; do
  url="https://images.unsplash.com/${id}&fit=crop&q=75&fm=jpg"
  if curl -fsSL "$url" -o "$jmeno.jpg.tmp"; then mv "$jmeno.jpg.tmp" "$jmeno.jpg"; echo "OK      $jmeno.jpg"
  else rm -f "$jmeno.jpg.tmp"; echo "CHYBA   $jmeno.jpg (zůstává zástupný obrázek)"; fi
done <<LIST
hero photo-1514888286974-6c03e2ca1dba?w=1200&h=1400
o-nas photo-1573865526739-10659fec78a5?w=1200&h=900
micka photo-1495360010541-f48722b34f7d?w=800&h=800
oskar photo-1518791841217-8f162f1e1131?w=800&h=800
luna photo-1543852786-1cf6624b9987?w=800&h=800
bertik photo-1529778873920-4da4926a72c2?w=800&h=800
pepa photo-1574158622682-e40e69881006?w=800&h=800
zofie photo-1592194996308-7b43878e84a6?w=800&h=800
LIST
