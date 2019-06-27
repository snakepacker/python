FROM snakepacker/python:base

# Install python
RUN apt-get update && \
	apt-get install --no-install-recommends -y \
		python3.6-minimal libpython3.6-stdlib python3.6-distutils && \
	rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*
