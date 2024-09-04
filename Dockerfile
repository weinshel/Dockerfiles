FROM ubuntu:24.04

WORKDIR /data

RUN apt-get -q --no-allow-insecure-repositories update \
  && apt-get install --assume-yes --no-install-recommends \
  make \
  texlive \
  texlive-latex-extra \
  texlive-publishers \
  latexmk \
  lmodern \
  pandoc \
  && rm -rf /var/lib/apt/lists/*

