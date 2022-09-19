# https://hub.docker.com/_/r-base
FROM r-base

RUN git clone git@github.com:jitender-saini/r-script-docker-deploy.git

COPY r-script-docker-deploy /usr/local/src/testRbase

WORKDIR /usr/local/src/testRbase
RUN Rscript /usr/local/src/testRbase/install_packages.R
CMD ["Rscript", "myScript.R"]