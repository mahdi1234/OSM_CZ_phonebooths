#!/bin/bash
> ./progress.txt
echo "Telefonni budky" >> ./progress.txt
cat ./all_phone_booths.json | grep 'centre' | wc -l >> ./progress.txt
