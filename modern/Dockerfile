FROM snakepacker/python:base

ENV PYTHONDONTWRITEBYTECODE=True

# Install headers for useful libraries
RUN apt-get update && apt-get install -y \
		git-core \
		build-essential libffi-dev && \
	rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*

ADD https://bootstrap.pypa.io/get-pip.py /usr/share/python/get-pip.py

RUN apt-get update && apt-get install -y \
		virtualenv \
		python \
		python-dev \
		python-setuptools \
		python-wheel && \
	python /usr/share/python/get-pip.py && \
	rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*

RUN apt-get update && apt-get install -y \
	python3.6 \
	python3.6-dev \
	python3-setuptools \
	python3-wheel \
	python3-venv \
	python3-virtualenv && \
	python3 /usr/share/python/get-pip.py && \
	rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*

RUN apt-get update && apt-get install -y python3.5 python3.5-dev && rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*
RUN apt-get update && apt-get install -y python3.7 python3.7-dev python3.7-venv && rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*
RUN apt-get update && apt-get install -y python3.8 python3.8-dev python3.8-venv && rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*
RUN apt-get update && apt-get install -y python3.9 python3.9-dev python3.9-venv && rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*

RUN pip3 install tox coveralls && \
	ln -snf /usr/local/bin/tox /usr/bin/tox && \
	ln -snf /usr/local/bin/coveralls /usr/bin/coveralls && \
	chmod a+x /usr/bin/tox /usr/bin/coveralls

ENV PIP_CONFIG_FILE /etc/pip.conf

RUN mkdir -p /var/cache/pip
ENV PIP_DOWNLOAD_CACHE=/var/cache/pip

COPY wait-for-port.py /usr/bin/wait-for-port
RUN chmod a+x /usr/bin/wait-for-port