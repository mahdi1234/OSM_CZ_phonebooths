#!/bin/bash

gpsbabel -i osm -f all_phone_booths.xml -o gpx -F all_phone_booths.gpx
gpsbabel -i osm -f disused_phone_booths.xml -o gpx -F disused_phone_booths.gpx
