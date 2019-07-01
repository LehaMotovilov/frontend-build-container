# frontend-build-container
Ubuntu + Node + NPM + GoogleChrome + Docker

# Docker image for tests/build.

Check docker images here: https://cloud.docker.com/repository/docker/lehamotovilov/frontend-build-container

Current versions (02.07.2019):
```
Ubuntu 16.04
Node v12.5.0
NPM 6.9.2
Google Chrome 75.0.3770.100
Docker version 18.09.7, build 2d0083d
Node-sass 4.10.0
```

How to use:
* Run for build container `docker build -t lehamotovilov/frontend-build-container .`
* So step inside `docker run -i -t lehamotovilov/frontend-build-container /bin/bash`
    *  Here you can check all versions:
    *  `node -v`
    *  `npm -v`
    *  `google-chrome --version`
    *  `docker -v`
* Login before push `docker login`
* Push latest image `docker push lehamotovilov/frontend-build-container:latest`
