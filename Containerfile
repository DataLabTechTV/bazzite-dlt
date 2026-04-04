FROM scratch AS ctx
COPY build_files /

FROM ghcr.io/ublue-os/bazzite-nvidia-open:stable

RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
  --mount=type=cache,dst=/var/cache \
  --mount=type=cache,dst=/var/log \
  --mount=type=tmpfs,dst=/tmp \
  /ctx/00-base.sh && \
  /ctx/10-languages.sh && \
  /ctx/20-shell.sh && \
  /ctx/30-network.sh && \
  /ctx/40-graphics.sh && \
  /ctx/50-dev.sh && \
  /ctx/60-containers.sh && \
  /ctx/70-ai.sh && \
  /ctx/80-data.sh

COPY system_files /

RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
  --mount=type=cache,dst=/var/cache \
  --mount=type=cache,dst=/var/log \
  --mount=type=tmpfs,dst=/tmp \
  /ctx/90-kernel.sh && \
  /ctx/99-validations.sh

RUN bootc container lint
