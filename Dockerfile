FROM alpine:3.3
MAINTAINER "EEA: IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

ENV GETURLS-VERSION=1.1.0

RUN apk add --no-cache --virtual .run-deps nodejs git \
 && npm install -g get-urls-cli@$GETURLS-VERSION \
 && mkdir -p /code

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["curl -s https://land.copernicus.eu/ | get-urls > out.txt"]
