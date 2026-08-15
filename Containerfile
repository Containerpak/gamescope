FROM ghcr.io/containerpak/wine:main

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends gamescope pipewire-bin && \
    sed -i 's|"/usr/lib/x86_64-linux-gnu/gamescope|"../../../lib/x86_64-linux-gnu/gamescope|' \
        /usr/share/vulkan/implicit_layer.d/VkLayer_FROG_gamescope_wsi.x86_64.json && \
    cpak-clean-junk

COPY --chmod=0755 gamescope /usr/bin/gamescope
