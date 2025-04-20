FROM ubuntu:24.04

RUN apt-get -q --no-allow-insecure-repositories update \
  && apt-get install --assume-yes --no-install-recommends \
  r-base \
  pandoc \
  make cmake gcc g++ libc6-dev gfortran \
  libarchive-dev \
  libssl-dev libcurl4-openssl-dev \
  libfontconfig1-dev \
  liblapack-dev libopenblas-dev \
  libxml2-dev zlib1g-dev \
  libharfbuzz-dev libfribidi-dev \
  libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev \
  && rm -rf /var/lib/apt/lists/*

# install renv
# needed to bootstrap installation of other dependencies
RUN R -e "install.packages('renv')"

WORKDIR /workspace

CMD bash
