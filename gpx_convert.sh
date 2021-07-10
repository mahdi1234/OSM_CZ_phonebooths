#!/bin/bash

gpsbabel -i osm -f active_phone_booths.xml -o gpx -F active_phone_booths.gpx
gpsbabel -i osm -f disused_phone_booths.xml -o gpx -F disused_phone_booths.gpx
gpsbabel -i osm -f verified_phone_booths.xml -o gpx -F verified_phone_booths.gpx
