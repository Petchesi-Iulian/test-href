#!/bin/sh
set -e

CMD="$@"

curl -s https://land.copernicus.eu/ | get-urls > out.txt

echo "PRINT CSS"
echo $CSS_ORG
echo "PRINT JS"
echo $JS_ORG

echo "COMMAND"
echo $CMD

exec "$@"
