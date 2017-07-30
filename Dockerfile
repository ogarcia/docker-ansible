FROM alpine:3.6

RUN apk -U --no-progress upgrade \
 && apk --no-progress add ansible git openssh-client

VOLUME [ "/etc/ansible", "/root" ]
