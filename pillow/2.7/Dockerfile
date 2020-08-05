FROM snakepacker/python:2.7

RUN apt-install \
		libgif7 \
		libjpeg-turbo8 \
		libjpeg8 \
		libpng16-16 \
		libtiff5

COPY --from=snakepacker/python:all-pillow /usr/lib/libimagequant.so* /usr/lib/
