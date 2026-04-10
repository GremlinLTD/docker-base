FROM alpine:3

LABEL org.opencontainers.image.source="https://github.com/gremlinltd/docker-base"
LABEL org.opencontainers.image.description="Alpine base image with gizmo user"

# hadolint ignore=DL3018
RUN apk add --no-cache tini su-exec shadow \
    && addgroup -g 1000 gizmo \
    && adduser -u 1000 -G gizmo -s /sbin/nologin -D gizmo

COPY entrypoint/entrypoint.sh /entrypoint.sh

WORKDIR /app

ENTRYPOINT ["tini", "--", "/entrypoint.sh"]
CMD ["/bin/sh"]

USER gizmo
