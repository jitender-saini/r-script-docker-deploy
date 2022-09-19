# https://hub.docker.com/_/r-base
FROM r-base
COPY . /usr/local/src/testRbase
WORKDIR /usr/local/src/testRbase
RUN Rscript /usr/local/src/testRbase/install_packages.R
CMD ["Rscript", "myScript.R"]