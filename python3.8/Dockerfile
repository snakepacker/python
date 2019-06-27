FROM snakepacker/python:base

# Install python
RUN apt-get update && \
	apt-get install --no-install-recommends -y \
		python3.8-minimal libpython3.8-stdlib python3.8-distutils && \
	rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*
