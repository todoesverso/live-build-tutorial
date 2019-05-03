FROM debian:testing

RUN apt-get update && apt-get install -y \
    git \
    live-build \
    procps \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /build
WORKDIR /build


