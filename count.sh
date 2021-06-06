#!/bin/bash
> ./progress.txt
echo "Telefonni budky" >> ./progress.txt
active=$(cat ./active_phone_booths.xml | grep 'k="amenity" v="telephone"' | wc -l)
echo $active >> ./progress.txt
echo "disused: Telefonni budky" >> ./progress.txt
disused=$(cat ./disused_phone_booths.xml | grep 'k="disused:amenity" v="telephone"' | wc -l)
echo $disused >> ./progress.txt
total=$(( $active + $disused ))
echo "Celkem - $total" >> ./progress.txt
