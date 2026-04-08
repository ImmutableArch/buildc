FROM archlinux:latest

RUN pacman -Sy --noconfirm \
    podman \
    sudo \
    skopeo \
    git \
    cosign \
    buildah \
    ostree \
    flatpak \
    tar \
    dracut \
    arch-install-scripts \
    zstd \
    rust \
    bubblewrap

RUN git clone https://github.com/ImmutableArch/pacman-ostree.git && \
    cd pacman-ostree && \
    cargo build && \
    cp target/debug/pacman-ostree /usr/bin/pacman-ostree
