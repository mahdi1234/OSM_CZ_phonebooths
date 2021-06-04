#!/bin/bash

echo "Phone booths"
#[out:json][timeout:200];
#{{geocodeArea:Czechia}}->.searchArea;
#nwr[amenity=telephone](area.searchArea);
#out center qt;
wget -O all_phone_booths.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A200%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3Bnwr%5B%22amenity%22%3D%22telephone%22%5D%28area%2EsearchArea%29%3Bout%20qt%20center%3B%0A'

sleep 300
echo "Diused phone booths"
#[out:json][timeout:200];
#{{geocodeArea:Czechia}}->.searchArea;
#nwr["disused:amenity"=telephone](area.searchArea);
#out center qt;
wget -O disused_phone_booths.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A200%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3Bnwr%5B%22disused%3Aamenity%22%3D%22telephone%22%5D%28area%2EsearchArea%29%3Bout%20qt%20center%3B%0A'

sed -i '/.*timestamp_.*/d' *.json
