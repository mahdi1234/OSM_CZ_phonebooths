#!/bin/bash
> ./progress.txt
echo "Telefonni budky" >> ./progress.txt
cat ./all_phone_booths.json | grep '"amenity": "telephone"' | wc -l >> ./progress.txt
echo "disused: Telefonni budky" >> ./progress.txt
cat ./disused_phone_booths.json | grep '"disused:amenity": "telephone"' | wc -l >> ./progress.txt
