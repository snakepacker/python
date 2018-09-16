FROM snakepacker/python:all

RUN apt-get update && \
    apt-get install -y \
      libgif-dev \
      libjpeg-dev \
      libpng-dev \
      libtiff-dev && \
    rm -fr /var/lib/apt/lists/*
