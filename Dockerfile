FROM alpine:3.10

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update ca-certificates postfix cyrus-sasl cyrus-sasl-login cyrus-sasl-plain cyrus-sasl-digestmd5 rsyslog &&\
    rm -rf /var/cache/apk/* 

CMD ["/defaults/start.sh"]
