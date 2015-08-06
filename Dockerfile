FROM alpine:latest

RUN apk add --update nfs-utils && rm -rf /var/cache/apk/*

ADD run.sh /run.sh

ONBUILD ADD run.sh /app.sh

ENTRYPOINT ["/run.sh"]
