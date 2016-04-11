FROM alpine:3.3

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update ca-certificates postfix rsyslog && rm -rf /var/cache/apk/* 

COPY files/defaults/ /defaults/
COPY files/start.sh /start.sh

CMD ["/start.sh"]
