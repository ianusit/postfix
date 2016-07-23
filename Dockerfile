FROM alpine:3.4

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update ca-certificates postfix postfix-pcre postfix-policyd-spf-perl rsyslog && rm -rf /var/cache/apk/* 

COPY files/defaults/ /defaults/
COPY files/start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]
