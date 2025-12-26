FROM debian:bookworm-slim

ENV AXELIVE_HOME=/data \
    AXELIVE_HOST=0.0.0.0 \
    AXELIVE_PORT=5210 \
    AXELIVE_OPEN_UI=0 \
    HOME=/data

RUN useradd -m -u 1000 appuser && mkdir -p /data && chown -R 1000:1000 /data

WORKDIR /app
ARG BIN_PATH=linux/AxeLive_V1.1_BETA_13.bin
COPY ${BIN_PATH} /app/axelive.bin
RUN chmod +x /app/axelive.bin && chown -R 1000:1000 /app

EXPOSE 5210
USER 1000:1000
CMD ["/app/axelive.bin"]

