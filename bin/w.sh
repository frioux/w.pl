#!/bin/sh

NOAA=http://tgftp.nws.noaa.gov/data/observations/metar/decoded
while true; do
   for code in "$@"; do
      echo checking $code
      curl -s "$NOAA/$code.TXT" > "/tmp/$code"
   done
   sleep 600
done
