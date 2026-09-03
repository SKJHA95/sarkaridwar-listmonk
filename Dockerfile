FROM listmonk/listmonk:latest

USER root
COPY entrypoint.sh /entrypoint.sh
COPY config.toml /listmonk/config.toml
RUN chmod +x /entrypoint.sh

EXPOSE 9000
ENTRYPOINT ["/entrypoint.sh"]
