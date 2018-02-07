FROM alpine:edge
MAINTAINER Cougar <cougar@random.ee>

RUN apk --update add busybox \
    && apk --update upgrade \
    && apk --update add \
    py-crypto \
    py-cryptography \
    py-cffi \
    py2-backports.ssl_match_hostname \
    python \
    py2-pip \
    docker-py \
    py-netaddr \
    ca-certificates \
    docker \
    ansible \
    curl \
    tzdata
#   && rm -rf /root/.cache /var/cache

RUN mkdir -p /opt/bin && ln -sf /usr/bin/python /opt/bin/python
