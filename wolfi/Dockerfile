FROM cgr.dev/chainguard/wolfi-base:latest

LABEL org.opencontainers.image.source="https://github.com/gremlinltd/docker-base"
LABEL org.opencontainers.image.description="Wolfi base image with gizmo user"

USER root

# hadolint ignore=DL3018
RUN apk add --no-cache tini su-exec shadow \
    && groupadd -g 1000 gizmo \
    && useradd -u 1000 -g gizmo -s /sbin/nologin -m gizmo

COPY entrypoint/entrypoint.sh /entrypoint.sh

WORKDIR /app

ENTRYPOINT ["tini", "--", "/entrypoint.sh"]
CMD ["/bin/sh"]

USER gizmo
