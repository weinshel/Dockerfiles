FROM ubuntu:24.04

RUN apt-get -q --no-allow-insecure-repositories update \
  && apt-get install --assume-yes --no-install-recommends \
  fish \
  r-base \
  make cmake gcc g++ libc6-dev gfortran \
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

# alternate method set up R dependencies
# instead of using a volume for the renv cache, you could "bake" your project's dependencies into the image
# ref: https://rstudio.github.io/renv/articles/docker.html
# COPY renv.lock renv.lock
# COPY .Rprofile .Rprofile
# COPY renv/activate.R renv/activate.R
# COPY renv/settings.json renv/settings.json
# RUN R -e "renv::restore()"

WORKDIR /workspace
CMD fish
