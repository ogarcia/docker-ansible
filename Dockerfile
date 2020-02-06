ARG ALPINE_VERSION

FROM alpine:${ALPINE_VERSION}

RUN apk -U --no-progress upgrade \
 && apk --no-progress add ansible git openssh-client

VOLUME [ "/etc/ansible", "/root" ]
