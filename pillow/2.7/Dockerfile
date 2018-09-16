FROM snakepacker/python:2.7

RUN apt-get update && \
    apt-get install -y \
      libgif7 \
      libjpeg-turbo8 \
      libjpeg8 \
      libpng16-16 \
      libtiff5 && \
    rm -fr /var/lib/apt/lists/*
