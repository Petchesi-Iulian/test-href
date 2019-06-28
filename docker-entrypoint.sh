#!/bin/sh
set -e

CMD="$@"

curl -s https://land.copernicus.eu/ | get-urls > out.txt

if ($CMD | grep -q "Passed")
then
    echo "Passed the test"
    exit 0
else
    echo "Failed the test"
    exit 1
fi
