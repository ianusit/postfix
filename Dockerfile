FROM alpine:3.10

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update ca-certificates postfix rsyslog &&\
    rm -rf /var/cache/apk/* 

COPY files/start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]
