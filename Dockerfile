FROM alpine:3.3
MAINTAINER "EEA: IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

ENV GETURLS_VERSION=1.1.0

RUN apk add --no-cache --virtual .run-deps nodejs git python python-dev \
 && npm install -g get-urls-cli@$GETURLS_VERSION \
 && mkdir -p /code

COPY testRequests.py /testRequests.py
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/bin/python", "testRequests.py"]
