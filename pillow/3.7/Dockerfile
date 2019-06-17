FROM snakepacker/python:3.7

RUN apt-get update && \
    apt-get install -y \
      libgif7 \
      libjpeg-turbo8 \
      libjpeg8 \
      libpng16-16 \
      libtiff5 && \
    rm -fr /var/lib/apt/lists/*

COPY --from=snakepacker/python:all-pillow /usr/lib/libimagequant.so* /usr/lib/
