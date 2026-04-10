#!/bin/sh
set -e

if [ -n "${PUID}" ] || [ -n "${PGID}" ]; then
  if [ "$(id -u)" = "0" ]; then
    PUID="${PUID:-1000}"
    PGID="${PGID:-1000}"
    echo "Setting gizmo UID=${PUID} GID=${PGID}"
    groupmod -o -g "${PGID}" gizmo || echo "WARN: failed to set GID ${PGID}"
    usermod -o -u "${PUID}" gizmo || echo "WARN: failed to set UID ${PUID}"
    chown gizmo:gizmo /app
    if command -v su-exec > /dev/null 2>&1; then
      exec su-exec gizmo "$@"
    else
      exec gosu gizmo "$@"
    fi
  else
    echo "WARN: PUID/PGID set but not running as root, ignoring"
  fi
fi

exec "$@"
