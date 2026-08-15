FROM ghcr.io/containerpak/wine:main

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends gamescope && \
    ln -s /usr/games/gamescope /usr/bin/gamescope && \
    cpak-clean-junk
