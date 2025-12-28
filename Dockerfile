FROM debian:trixie-slim

ENV AXELIVE_HOME=/data \
    AXELIVE_HOST=0.0.0.0 \
    AXELIVE_PORT=5210 \
    AXELIVE_OPEN_UI=0 \
    HOME=/data

RUN useradd -m -u 1000 appuser && mkdir -p /data && chown -R 1000:1000 /data

RUN apt-get update \
  && apt-get install -y --no-install-recommends ca-certificates \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app
ARG AXELIVE_TAG=1.2
ARG TARGETARCH
COPY linux/ /tmp/linux/
RUN set -euo pipefail; \
  case "${TARGETARCH}" in \
    amd64) src="/tmp/linux/AxeLive_V${AXELIVE_TAG}.bin" ;; \
    arm64) src="/tmp/linux/AxeLive_V${AXELIVE_TAG}_arm64.bin" ;; \
    *) echo "Unsupported TARGETARCH: ${TARGETARCH}" >&2; exit 1 ;; \
  esac; \
  test -f "${src}"; \
  cp "${src}" /app/axelive.bin; \
  chmod +x /app/axelive.bin; \
  chown -R 1000:1000 /app

EXPOSE 5210
USER 1000:1000
CMD ["/app/axelive.bin","--replace-instance"]
