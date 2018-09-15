FROM snakepacker/python:base

# Install python
RUN apt-get update && \
	apt-get install --no-install-recommends -y \
		python3.7-minimal libpython3.7-stdlib python3.7-distutils && \
	rm -fr /var/lib/apt/lists/*
