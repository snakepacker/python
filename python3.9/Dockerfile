FROM snakepacker/python:base

# Install python
RUN apt-get update && \
	apt-get install --no-install-recommends -y \
		python3.9-minimal libpython3.9-stdlib python3.9-distutils && \
	rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*
