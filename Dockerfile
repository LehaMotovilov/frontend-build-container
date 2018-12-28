FROM ubuntu:16.04

ARG DEBIAN_FRONTEND=noninteractive

# Make sure apt is up to date.
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends apt-utils && \
    apt-get install apt-transport-https -y && \
    apt-get install curl -y && \
    apt-get install software-properties-common -y && \
    apt-get install ca-certificates -y && \
    apt-get install lsb-release -y && \
    apt-get install wget -y && \
    apt-get install libpng-dev -y && \
    apt-get install zlib1g-dev -y

# Install Node.
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install nodejs -y

# Install GoogleChrome for e2e tests.
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
    apt-get update -yqqq && \
    apt-get install -y google-chrome-stable

# Install Docker.
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    apt-key fingerprint 0EBFCD88 && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
    apt-get update && \
    apt-get install docker-ce -y

# Update NPM to latest version.
RUN npm install npm -g

# Install Node Sass for improve "npm install" speed.
RUN npm install node-sass -g --unsafe-perm

# Trying to fix image optimizing.
RUN apt-get install libpng16-dev build-essential gcc make autoconf libtool pkg-config nasm -y

EXPOSE 80

CMD ["/bin/bash"]
