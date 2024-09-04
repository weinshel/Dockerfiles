FROM ubuntu:24.04

WORKDIR /data

RUN apt-get -q --no-allow-insecure-repositories update \
  && apt-get install --assume-yes --no-install-recommends \
  make \
  pandoc \
  texlive texlive-latex-recommended texlive-publishers \
  lmodern \
  && rm -rf /var/lib/apt/lists/*

