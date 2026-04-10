# Project name

> Replace this with your project description.

## Run

```sh
docker run ghcr.io/gremlinltd/REPO_NAME:latest
```

## Helm

```sh
helm install my-release oci://ghcr.io/gremlinltd/charts/REPO_NAME
```

## Development

```sh
git clone https://github.com/gremlinltd/REPO_NAME.git
cd REPO_NAME
docker build -t REPO_NAME .
docker run REPO_NAME
```

## After creating a repo from this template

1. Replace `REPO_NAME` in `chart/Chart.yaml`, `chart/values.yaml`, `cog.toml`, `cliff.toml`, `sonar-project.properties`, `CONTRIBUTING.md`, and this README
2. Set up SonarCloud project and add `SONAR_TOKEN` as a repo secret
3. Update the Dockerfile with your actual application
4. Update `chart/values.yaml` with appropriate defaults
5. Update this README with actual project docs
