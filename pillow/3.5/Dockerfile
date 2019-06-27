FROM snakepacker/python:3.5

RUN apt-get update && \
	apt-get install -y \
		libgif7 \
		libjpeg-turbo8 \
		libjpeg8 \
		libpng16-16 \
		libtiff5 && \
	rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*

COPY --from=snakepacker/python:all-pillow /usr/lib/libimagequant.so* /usr/lib/
