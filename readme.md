# Overview

Run tests with maven in pipeline on Jenkins server.

## Plugins

`Docker` and `docker-pipeline` plugins should be installed in jenkins before running the pipeline.

## Manage Clouds

This one is optional, in case it is required to configure the `docker host`, the URL should be configured as `unix:///var/run/docker.sock`

## Repo

The repo must contain both `Dockerfile` and `Jenkinsfile` under the root directory.

## Dockerfile

These steps should not be there inside `Dockerfile`:

- `COPY . .`
- `mvn clean test`

as Jenkins will build the image and automatically checkout the repo inside the container.

## Variations

Switch to `docker-build` branch for more details about how to build a docker image and run the test inside a container the normal way, only shell commands are used.
