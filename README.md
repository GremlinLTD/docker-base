# docker-base

Minimal base container images for GremlinLTD projects.

## Variants

| Variant           | Base                                         | Tags                        | User                  | Size  |
| ----------------- | -------------------------------------------- | --------------------------- | --------------------- | ----- |
| alpine            | `alpine:3`                                   | `alpine-3`, `alpine-3.23`   | `gizmo` (UID 1000)    | ~7MB  |
| wolfi             | `cgr.dev/chainguard/wolfi-base:latest`       | `wolfi`                     | `gizmo` (UID 1000)    | ~12MB |
| ubuntu            | `ubuntu:24.04`                               | `ubuntu-24`, `ubuntu-24.04` | `gizmo` (UID 1000)    | ~28MB |
| distroless-static | `gcr.io/distroless/static-debian13:nonroot`  | `distroless-static-13`      | `nonroot` (UID 65534) | ~3MB  |
| distroless-python | `gcr.io/distroless/python3-debian13:nonroot` | `distroless-python-13`      | `nonroot` (UID 65534) | ~50MB |

All images are at `ghcr.io/gremlinltd/base`.

## Usage

```sh
docker run ghcr.io/gremlinltd/base:alpine-3 whoami
# gizmo
```

## PUID/PGID (alpine, wolfi, ubuntu)

Match container user to your host UID/GID for volume permissions:

```sh
docker run -u root -e PUID=1000 -e PGID=1000 -v ./data:/app/data ghcr.io/gremlinltd/base:alpine-3 ls -la /app/data
```

The container starts as root, adjusts the `gizmo` user's UID/GID, then drops privileges. If `PUID`/`PGID` are not set, the container runs as `gizmo` (UID 1000) directly.

## Distroless variants

No shell, no package manager, no PUID/PGID support. Use `nonroot` (UID 65534). For compiled static binaries (Go, Rust with `--target x86_64-unknown-linux-musl`) use `distroless-static`. For Python apps use `distroless-python`.

## License

MIT
