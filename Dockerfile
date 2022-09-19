# https://hub.docker.com/_/r-base
FROM r-base

MAINTAINER Jay Saini "jay.saini@air-up.com"

RUN apt-get update && \
    apt-get install -y  \
    git \
    openssh-client


RUN git clone git@github.com:jitender-saini/r-script-docker-deploy.git && cd r-script-docker-deploy

COPY . /usr/local/src/testRbase

WORKDIR /usr/local/src/testRbase
RUN Rscript /usr/local/src/testRbase/install_packages.R
CMD ["Rscript", "myScript.R"]