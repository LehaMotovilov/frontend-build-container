# frontend-build-container
Ubuntu + Node + NPM + GoogleChrome + Docker

# Docker image for tests/build.

Check docker images here: https://cloud.docker.com/repository/docker/lehamotovilov/frontend-build-container

Current versions (28.12.2018):
```
Ubuntu 16.04
Node v10.15.0
NPM 6.5.0
Google Chrome 71.0.3578.98
Docker version 18.09.0, build 4d60db4
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
