#!/bin/bash
> ./progress.txt
echo "Telefonni budky" >> ./progress.txt
active=$(cat ./active_phone_booths.xml | grep 'k="amenity" v="telephone"' | wc -l)
echo $active >> ./progress.txt
echo "disused: Telefonni budky" >> ./progress.txt
disused=$(cat ./disused_phone_booths.xml | grep -e 'k="disused:amenity" v="telephone"' -e 'k="historic:amenity" v="telephone"' -e 'k="was:amenity" v="telephone"' -e 'k="abandoned:amenity" v="telephone"' -e 'k="removed:amenity" v="telephone"' -e 'k="amenity:disused" v="telephone"' | wc -l)
echo $disused >> ./progress.txt
echo "Overeny Telefonni budky" >> ./progress.txt
checked=$(cat ./verified_phone_booths.xml | grep -e 'k="disused:amenity" v="telephone"' -e 'k="historic:amenity" v="telephone"' -e 'k="amenity" v="telephone"' | wc -l)
echo $checked >> ./progress.txt
total=$(( $active + $disused + $checked))
echo "Celkem - $total" >> ./progress.txt
