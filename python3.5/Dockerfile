FROM snakepacker/python:base

# Install python
RUN apt-get update && \
	apt-get install --no-install-recommends -y \
		python3.5 && \
	rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*
