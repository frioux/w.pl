#!/bin/sh

NOAA=http://weather.noaa.gov/pub/data/observations/metar/decoded
while true; do
   for code in "$@"; do
      echo checking $code
      curl -s "$NOAA/$code.TXT" > "/tmp/$code"
   done
   sleep 600
done
