define build
	docker pull snakepacker/python:$(2)
	docker build -t snakepacker/python:$(2) $(1)
endef

define publish
	docker push snakepacker/python:$(1)
endef

images: build-base \
		build-all \
		build-pillow-all \
		build-python-2.3 \
		build-python-2.4 \
		build-python-2.5 \
		build-python-2.6 \
		build-python-2.7 \
		build-python-3.1 \
		build-python-3.2 \
		build-python-3.3 \
		build-python-3.4 \
		build-python-3.5 \
		build-python-3.6 \
		build-python-3.7 \
		build-pillow-2.7 \
		build-pillow-3.4 \
		build-pillow-3.5 \
		build-pillow-3.6 \
		build-pillow-3.7

build-base:
	$(call build,base,base)

build-all: build-base
	$(call build,all,all)

build-python-2.3:
	$(call build,python2.3,2.3)

build-python-2.4:
	$(call build,python2.4,2.4)

build-python-2.5:
	$(call build,python2.5,2.5)

build-python-2.6:
	$(call build,python2.6,2.6)

build-python-2.7:
	$(call build,python2.7,2.7)

build-python-3.1:
	$(call build,python3.1,3.1)

build-python-3.2:
	$(call build,python3.2,3.2)

build-python-3.3:
	$(call build,python3.3,3.3)

build-python-3.4:
	$(call build,python3.4,3.4)

build-python-3.5:
	$(call build,python3.5,3.5)

build-python-3.6:
	$(call build,python3.6,3.6)

build-python-3.7:
	$(call build,python3.7,3.7)

build-pillow-all:
	$(call build,pillow/all,all-pillow)

build-pillow-2.7:
	$(call build,pillow/2.7,2.7-pillow)

build-pillow-3.4:
	$(call build,pillow/3.4,3.4-pillow)

build-pillow-3.5:
	$(call build,pillow/3.5,3.5-pillow)

build-pillow-3.6:
	$(call build,pillow/3.6,3.6-pillow)

build-pillow-3.7:
	$(call build,pillow/3.7,3.7-pillow)

publish: images
	$(call publish,base)
	$(call publish,all)
	$(call publish,all-pillow)
	$(call publish,2.3)
	$(call publish,2.4)
	$(call publish,2.5)
	$(call publish,2.6)
	$(call publish,2.7)
	$(call publish,3.1)
	$(call publish,3.2)
	$(call publish,3.3)
	$(call publish,3.4)
	$(call publish,3.5)
	$(call publish,3.6)
	$(call publish,3.7)
	$(call publish,2.7-pillow)
	$(call publish,3.4-pillow)
	$(call publish,3.5-pillow)
	$(call publish,3.6-pillow)
	$(call publish,3.7-pillow)
