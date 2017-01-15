#!/bin/sh
rsyslogd
rm /etc/postfix/main.cf
cp /defaults/* /etc/postfix/
echo -e $MYHOSTNAME$MYNETWORKS$RELAYDOMAINS >> /etc/postfix/main.cf
echo -e smtpd_tls_cert_file = $CERT >> /etc/postfix/main.cf
echo -e smtpd_tls_key_file = $KEY >> /etc/postfix/main.cf
echo -e smtpd_tls_CApath = $CA >> /etc/postfix/main.cf
echo -e smtp_tls_cert_file = $CERT >> /etc/postfix/main.cf
echo -e smtp_tls_key_file = $KEY >> /etc/postfix/main.cf
echo -e $TRANSPORT > /etc/postfix/transport
postmap /etc/postfix/transport
touch /etc/aliases
postmap /etc/aliases
/usr/sbin/postfix -c /etc/postfix start
tail -F /var/log/maillog
