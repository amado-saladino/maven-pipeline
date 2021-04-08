# Overview

Run tests with maven in pipeline on Jenkins server.

## Plugins

`Docker` and `docker-pipeline` plugins should be installed in jenkins before running the pipeline.

## Manage Clouds

Access permission to docker engine should be given on the host by either of these ways:

- `chmod 777 /var/run/docker.sock`
- `usermod -a -G docker jenkins`

### Config Docker Host

From `Manage Jenkins` select `Configure Cloud`

Docker Host URI `unix:///var/run/docker.sock`

### Docker Agent Template

- Labels `docker-agent`
- Name `docker-node`
- Docker image `amadosaladino/se`
- Hostname (Container settings) `docker-node`

### Image Dockerfile

Image with the mentioned packages installed, in this case, the image is tagged `test-agent:1.0`

```Dockerfile
FROM selenium/standalone-chrome
RUN sudo apt update
RUN sudo apt install -y openjdk-8-jdk maven git
```

## Repo

The repo should contain `Jenkinsfile` under the root directory.
