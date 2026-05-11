FROM ubuntu:26.04

LABEL org.opencontainers.image.source="https://github.com/gremlinltd/docker-base"
LABEL org.opencontainers.image.description="Ubuntu base image with gizmo user"

# hadolint ignore=DL3008
RUN apt-get update \
    && apt-get install -y --no-install-recommends tini gosu \
    && rm -rf /var/lib/apt/lists/* \
    && groupdel ubuntu 2>/dev/null || true \
    && userdel ubuntu 2>/dev/null || true \
    && groupadd -g 1000 gizmo \
    && useradd -u 1000 -g gizmo -s /usr/sbin/nologin -m gizmo

COPY entrypoint/entrypoint.sh /entrypoint.sh

WORKDIR /app

ENTRYPOINT ["tini", "--", "/entrypoint.sh"]
CMD ["/bin/bash"]

USER gizmo
