# Overview

Run tests with maven in pipeline on Jenkins server host.

## Process

- Checkout
- Build Docker image on the host
- Run a container from the image

## Repo

The repo must contain both `Dockerfile` and `Jenkinsfile` under the root directory.

## Dockerfile

Because the image is built on the host directly, `Dockerfile` should contain all instructions enough to run a standalone container.
