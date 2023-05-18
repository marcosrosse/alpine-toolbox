FROM alpine:latest

USER root:root

RUN apk --no-cache update && apk add --no-cache \
    curl \
    traceroute \
    nmap \
    speedtest-cli \
    git \
    vim \
    grep \
    tar \
    python3 \
    netcat-openbsd \
    socat \
    bind-tools \
    tcpdump \
    rsync \
    openssh \
    tzdata \
    ca-certificates \
    && rm -rf /var/cache/apk/* \
    && python3 -m ensurepip \
    && pip3 install --no-cache --upgrade pip setuptools
