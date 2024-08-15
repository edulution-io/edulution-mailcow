FROM python:3-alpine

RUN apk --no-cache add build-base openldap-dev python3-dev
RUN pip3 install python-ldap requests coloredlogs

COPY templates ./templates
COPY src/* ./

RUN chmod +x ./entrypoint.sh

VOLUME [ "/conf/dovecot" ]
VOLUME [ "/conf/sogo" ]

ENTRYPOINT [ "./entrypoint.sh" ]