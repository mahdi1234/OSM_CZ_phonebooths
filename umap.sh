#!/bin/bash

echo "Phone booths"
#[out:xml][timeout:200];
#{{geocodeArea:Czechia}}->.searchArea;
#nwr[amenity=telephone]["check_date"!~".*"]["survey:date"!~".*"](area.searchArea);
#out center qt;
#wget -O active_phone_booths.xml 'https://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A200%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3Bnwr%5B%22amenity%22%3D%22telephone%22%5D%5B%22check%5Fdate%22%21%7E%22%2E%2A%22%5D%5B%22survey%3Adate%22%21%7E%22%2E%2A%22%5D%28area%2EsearchArea%29%3Bout%20qt%20center%3B%0A'
wget -O active_phone_booths.xml 'https://overpass.kumi.systems/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A200%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3Bnwr%5B%22amenity%22%3D%22telephone%22%5D%5B%22check%5Fdate%22%21%7E%22%2E%2A%22%5D%5B%22survey%3Adate%22%21%7E%22%2E%2A%22%5D%28area%2EsearchArea%29%3Bout%20qt%20center%3B%0A'

sleep 300

echo "Disused phone booths"
#[out:xml][timeout:250];
#{{geocodeArea:Czechia}}->.searchArea;
#(
#  nwr["disused:amenity"="telephone"]["check_date"!~".*"]["survey:date"!~".*"](area.searchArea);
#  nwr["historic:amenity"="telephone"]["check_date"!~".*"]["survey:date"!~".*"](area.searchArea);
#);
#out center qt;
#wget -O disused_phone_booths.xml 'https://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A250%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3B%28nwr%5B%22disused%3Aamenity%22%3D%22telephone%22%5D%5B%22check%5Fdate%22%21%7E%22%2E%2A%22%5D%5B%22survey%3Adate%22%21%7E%22%2E%2A%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22historic%3Aamenity%22%3D%22telephone%22%5D%5B%22check%5Fdate%22%21%7E%22%2E%2A%22%5D%5B%22survey%3Adate%22%21%7E%22%2E%2A%22%5D%28area%2EsearchArea%29%3B%29%3Bout%20qt%20center%3B%0A'
wget -O disused_phone_booths.xml 'https://overpass.kumi.systems/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A250%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3B%28nwr%5B%22disused%3Aamenity%22%3D%22telephone%22%5D%5B%22check%5Fdate%22%21%7E%22%2E%2A%22%5D%5B%22survey%3Adate%22%21%7E%22%2E%2A%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22historic%3Aamenity%22%3D%22telephone%22%5D%5B%22check%5Fdate%22%21%7E%22%2E%2A%22%5D%5B%22survey%3Adate%22%21%7E%22%2E%2A%22%5D%28area%2EsearchArea%29%3B%29%3Bout%20qt%20center%3B%0A'

sleep 300
echo "Checked/verified phone booths"
#[out:xml][timeout:250];
#{{geocodeArea:Czechia}}->.searchArea;
#(
#  nwr[amenity=telephone]["check_date"](area.searchArea);
#  nwr[amenity=telephone]["survey:date"](area.searchArea);
#  nwr["disused:amenity"="telephone"]["check_date"](area.searchArea);
#  nwr["disused:amenity"="telephone"]["survey:date"](area.searchArea);
#  nwr["historic:amenity"="telephone"]["check_date"](area.searchArea);
#  nwr["historic:amenity"="telephone"]["survey:date"](area.searchArea);
#);
#out center qt;
#wget -O verified_phone_booths.xml 'https://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A250%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3B%28nwr%5B%22amenity%22%3D%22telephone%22%5D%5B%22check%5Fdate%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22amenity%22%3D%22telephone%22%5D%5B%22survey%3Adate%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22disused%3Aamenity%22%3D%22telephone%22%5D%5B%22check%5Fdate%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22disused%3Aamenity%22%3D%22telephone%22%5D%5B%22survey%3Adate%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22historic%3Aamenity%22%3D%22telephone%22%5D%5B%22check%5Fdate%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22historic%3Aamenity%22%3D%22telephone%22%5D%5B%22survey%3Adate%22%5D%28area%2EsearchArea%29%3B%29%3Bout%20qt%20center%3B%0A'
wget -O verified_phone_booths.xml 'https://overpass.kumi.systems/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A250%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3B%28nwr%5B%22amenity%22%3D%22telephone%22%5D%5B%22check%5Fdate%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22amenity%22%3D%22telephone%22%5D%5B%22survey%3Adate%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22disused%3Aamenity%22%3D%22telephone%22%5D%5B%22check%5Fdate%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22disused%3Aamenity%22%3D%22telephone%22%5D%5B%22survey%3Adate%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22historic%3Aamenity%22%3D%22telephone%22%5D%5B%22check%5Fdate%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22historic%3Aamenity%22%3D%22telephone%22%5D%5B%22survey%3Adate%22%5D%28area%2EsearchArea%29%3B%29%3Bout%20qt%20center%3B%0A'

sed -i '/.*osm_base.*/d' *.xml
