REGISTRY ?= ''

define build
	docker buildx build --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --tag ghcr.io/snakepacker/python/$(2):amd64 $(1)
endef

images: build-base \
		build-all \
		build-pillow-all \
		build-python-3.7 \
		build-python-3.8 \
		build-python-3.9 \
		build-pillow-3.7 \
		build-pillow-3.8 \
		build-pillow-3.9 \
		build-pillow-3.10 \
		build-ipython \
		build-black \
		build-certbot \
		build-gray \
		build-pylama \
		build-pylava

build-base:
	$(call build,base,base)

build-all: build-base
	$(call build,all,all)

build-python-3.7:
	$(call build,python3.7,3.7)

build-python-3.8:
	$(call build,python3.8,3.8)

build-python-3.9:
	$(call build,python3.9,3.9)

build-python-3.10:
	$(call build,python3.10,3.10)

build-pillow-all:
	$(call build,all-pillow,all-pillow)

build-pillow-3.7:
	$(call build,3.7-pillow,3.7-pillow)

build-pillow-3.8:
	$(call build,3.8-pillow,3.8-pillow)

build-pillow-3.9:
	$(call build,3.9-pillow,3.9-pillow)

build-pillow-3.10:
	$(call build,3.10-pillow,3.10-pillow)

build-black:
	$(call build,black,app/black)

build-certbot:
	$(call build,certbot,app/certbot)

build-gray:
	$(call build,gray,app/gray)

build-ipython:
	$(call build,ipython,app/ipython)

build-pylama:
	$(call build,pylama,app/pylama)

build-pylava:
	$(call build,pylava,app/pylava)

publish:
	$(call publish,base)
	$(call publish,all)
	$(call publish,all-pillow)
	$(call publish,3.7)
	$(call publish,3.8)
	$(call publish,3.9)
	$(call publish,3.10)
	$(call publish,3.7-pillow)
	$(call publish,3.8-pillow)
	$(call publish,3.9-pillow)
	$(call publish,3.10-pillow)
