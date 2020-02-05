FROM snakepacker/python:all as pillow-builder
ADD https://github.com/ImageOptim/libimagequant/archive/2.12.2.tar.gz /tmp/libimagequant.tgz
WORKDIR /tmp
RUN tar -xvzf /tmp/libimagequant.tgz
WORKDIR /tmp/libimagequant-2.12.2
RUN make -j4
RUN cp libimagequant.so* /usr/lib/
RUN cp libimagequant.h /usr/include/

################################################################################
FROM snakepacker/python:modern

RUN apt-install \
		libgif-dev \
		libjpeg-dev \
		libpng-dev \
		libtiff-dev

COPY --from=pillow-builder /usr/lib/libimagequant.so* /usr/lib/
COPY --from=pillow-builder /usr/include/libimagequant.h /usr/include/
