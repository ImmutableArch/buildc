FROM archlinux:latest

RUN echo -e "[immutablearch]\nSigLevel = Optional TrustAll\nServer = https://immutablearch.github.io/packages/aur-repo/" \ >> /etc/pacman.conf

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
    pacman-ostree

