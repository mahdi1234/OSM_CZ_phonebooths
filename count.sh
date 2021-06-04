#!/bin/bash
> ./progress.txt
echo "Telefonni budky" >> ./progress.txt
cat ./all_phone_booths.xml | grep 'k="amenity" v="telephone"' | wc -l >> ./progress.txt
echo "disused: Telefonni budky" >> ./progress.txt
cat ./disused_phone_booths.xml | grep 'k="disused:amenity" v="telephone"' | wc -l >> ./progress.txt
