FROM scratch AS ctx
COPY build_files /

FROM ghcr.io/ublue-os/bazzite-nvidia-open:stable

COPY system_files /

RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
  --mount=type=cache,dst=/var/cache \
  --mount=type=cache,dst=/var/log \
  --mount=type=tmpfs,dst=/tmp \
  /ctx/base.sh && \
  /ctx/languages.sh && \
  /ctx/shell.sh && \
  /ctx/network.sh && \
  /ctx/graphics.sh && \
  /ctx/dev.sh && \
  /ctx/containers.sh && \
  /ctx/ai.sh && \
  /ctx/data.sh && \
  /ctx/validations.sh

RUN dracut --force

RUN bootc container lint
