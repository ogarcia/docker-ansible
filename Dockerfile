FROM alpine:3.9

RUN apk -U --no-progress upgrade \
 && apk --no-progress add ansible git openssh-client

VOLUME [ "/etc/ansible", "/root" ]
