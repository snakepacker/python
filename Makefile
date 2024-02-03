REGISTRY ?= ''

define build
	docker build --tag ghcr.io/snakepacker/python/$(2) $(1)
endef

images: build-base \
		build-all \
		build-pillow-all \
		build-python-3.8 \
		build-python-3.9 \
		build-python-3.10 \
		build-python-3.11 \
		build-python-3.12 \
		build-pillow-3.8 \
		build-pillow-3.9 \
		build-pillow-3.10 \
		build-pillow-3.11 \
		build-pillow-3.12 \
		build-ipython \
		build-black \
		build-certbot \
		build-gray \
		build-pylama \
		build-pylava

build-base:
	$(call build,base,base:latest)

build-all: build-base
	$(call build,all,all:latest)

build-python-3.8:
	$(call build,python3.8,3.8:latest)

build-python-3.9:
	$(call build,python3.9,3.9:latest)

build-python-3.10:
	$(call build,python3.10,3.10:latest)

build-python-3.11:
	$(call build,python3.11,3.11:latest)

build-python-3.12:
	$(call build,python3.12,3.12:latest)

build-pillow-all:
	$(call build,pillow/all,all:pillow)

build-pillow-3.8:
	$(call build,pillow/3.8,3.8:pillow)

build-pillow-3.9:
	$(call build,pillow/3.9,3.9:pillow)

build-pillow-3.10:
	$(call build,pillow/3.10,3.10:pillow)

build-pillow-3.11:
	$(call build,pillow/3.11,3.11:pillow)

build-pillow-3.12:
	$(call build,pillow/3.12,3.12:pillow)

build-black:
	$(call build,black,app/black:latest)

build-certbot:
	$(call build,certbot,app/certbot:latest)

build-gray:
	$(call build,gray,app/gray:latest)

build-ipython:
	$(call build,ipython,app/ipython:latest)

build-pylama:
	$(call build,pylama,app/pylama:latest)

build-pylava:
	$(call build,pylava,app/pylava:latest)

publish:
	$(call publish,base)
	$(call publish,all)
	$(call publish,all-pillow)
	$(call publish,3.8)
	$(call publish,3.9)
	$(call publish,3.10)
	$(call publish,3.11)
	$(call publish,3.12)
	$(call publish,3.8-pillow)
	$(call publish,3.9-pillow)
	$(call publish,3.10-pillow)
	$(call publish,3.11-pillow)
	$(call publish,3.12-pillow)
