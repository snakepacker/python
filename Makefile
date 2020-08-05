define build
	docker pull snakepacker/python:$(2) || true
	docker build -t snakepacker/python:$(2) $(1)
endef

define publish
	docker push snakepacker/python:$(1)
endef

images: build-base \
		build-all \
		build-pillow-all \
		build-python-2.7 \
		build-python-3.5 \
		build-python-3.6 \
		build-python-3.7 \
		build-python-3.8 \
		build-python-3.9 \
		build-pillow-2.7 \
		build-pillow-3.5 \
		build-pillow-3.6 \
		build-pillow-3.7 \
		build-pillow-3.8 \
		build-pillow-3.9
	docker tag snakepacker/python:3.8 snakepacker/python:latest

build-base:
	$(call build,base,base)

build-all: build-base
	$(call build,all,all)

build-python-2.7:
	$(call build,python2.7,2.7)

build-python-3.5:
	$(call build,python3.5,3.5)

build-python-3.6:
	$(call build,python3.6,3.6)

build-python-3.7:
	$(call build,python3.7,3.7)

build-python-3.8:
	$(call build,python3.8,3.8)

build-python-3.9:
	$(call build,python3.9,3.9)

build-pillow-all:
	$(call build,pillow/all,all-pillow)

build-pillow-2.7:
	$(call build,pillow/2.7,2.7-pillow)

build-pillow-3.5:
	$(call build,pillow/3.5,3.5-pillow)

build-pillow-3.6:
	$(call build,pillow/3.6,3.6-pillow)

build-pillow-3.7:
	$(call build,pillow/3.7,3.7-pillow)

build-pillow-3.8:
	$(call build,pillow/3.8,3.8-pillow)

build-pillow-3.9:
	$(call build,pillow/3.9,3.9-pillow)

publish: images
	$(call publish,base)
	$(call publish,all)
	$(call publish,all-pillow)
	$(call publish,2.7)
	$(call publish,3.5)
	$(call publish,3.6)
	$(call publish,3.7)
	$(call publish,3.8)
	$(call publish,3.9)
	$(call publish,2.7-pillow)
	$(call publish,3.5-pillow)
	$(call publish,3.6-pillow)
	$(call publish,3.7-pillow)
	$(call publish,3.8-pillow)
	$(call publish,3.9-pillow)
	$(call publish,latest)