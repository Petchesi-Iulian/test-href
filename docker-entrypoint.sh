#!/bin/sh
set -e

CMD="$@"

curl -s "$REG_URL" | get-urls > out.txt

var=$($CMD)
echo "$var"

if ($CMD | grep -q "Passed")
then
    exit 0
else
    exit 1
fi
