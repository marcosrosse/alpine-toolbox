FROM alpine:latest

USER root:root

COPY --chmod=777 setup.sh /tmp/setup.sh

RUN apk --no-cache update && apk add --no-cache \
    curl \
    traceroute \
    nmap \
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
    terraform \
    helm \
    ansible \
    && rm -rf /var/cache/apk/* \
    && python3 -m ensurepip \
    && pip3 install --no-cache --upgrade pip setuptools \
    && curl --output-dir /usr/bin/ -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x /usr/bin/kubectl

RUN /tmp/setup.sh

CMD tail -f /dev/null