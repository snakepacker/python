FROM ghcr.io/snakepacker/python/all as builder

# https://pillow.readthedocs.io/en/stable/installation.html#building-from-source
RUN apt-install \
	libfreetype6-dev \
	libfribidi-dev \
	libgif-dev \
	libharfbuzz-dev \
	libimagequant-dev \
	libjpeg-dev \
	libjpeg8-dev \
	liblcms2-dev \
	libopenjp2-7-dev \
	libpng-dev \
	libraqm-dev \
	libtiff-dev \
	libtiff5-dev \
	libwebp-dev \
	libxcb1-dev \
	zlib1g-dev

RUN python3 -m venv /var/tmp/pillow-venv
RUN /var/tmp/pillow-venv/bin/pip install --no-binary=:all: pillow
RUN find-libdeps /var/tmp/pillow-venv > /usr/share/python3/pillow-runtime-libs.txt

############################################################################

FROM ghcr.io/snakepacker/python/3.8
COPY --from=builder /usr/share/python3/pillow-runtime-libs.txt /usr/share/python3/pillow-runtime-libs.txt
RUN xargs -ra /usr/share/python3/pillow-runtime-libs.txt apt-install