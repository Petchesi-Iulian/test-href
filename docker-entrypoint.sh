#!/bin/sh
set -e

CMD="$1"

exec curl -s https://land.copernicus.eu/ | get-urls > out.txt

exec echo $CSS_RES
exec echo $JS_RES

if [ ! -z "$COOKIES" ]; then
  python3 /cookie_config.py
fi
