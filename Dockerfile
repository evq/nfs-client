FROM alpine:latest

RUN apk add --update nfs-utils && rm -rf /var/cache/apk/*

ADD run.sh /run.sh

ENTRYPOINT ["/run.sh"]
