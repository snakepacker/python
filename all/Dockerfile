FROM ghcr.io/snakepacker/python/base

ENV PYTHONDONTWRITEBYTECODE=True

# Install headers for useful libraries
RUN apt-install git-core build-essential
RUN apt-install virtualenv python python-dev python-setuptools python-wheel-common

ADD https://bootstrap.pypa.io/pip/2.7/get-pip.py /usr/share/python/get-pip2.py
RUN python /usr/share/python/get-pip2.py "pip < 21.0" "setuptools < 50.0" "wheel < 1.0"
RUN python2 -m pip wheel -w /usr/share/python-wheels "pip<21.0" "setuptools<50.0" "wheel<1.0"

ADD https://bootstrap.pypa.io/get-pip.py /usr/share/python/get-pip.py
RUN apt-install \
	python3.8 \
	python3.8-dev \
	python3-setuptools \
	python3-wheel \
	python3-venv \
	python3-virtualenv \
	virtualenv

RUN apt-install -y python2.7 python2.7-dev
RUN apt-install -y python3.6 python3.6-dev python3.6-venv
RUN apt-install -y python3.7 python3.7-dev python3.7-venv
RUN apt-install -y python3.9 python3.9-dev python3.9-venv
RUN apt-install -y python3.10 python3.10-dev python3.10-venv

RUN apt-install \
	libffi-dev \
	libmysqlclient-dev \
	libpq-dev \
	libssl-dev \
	libxml2-dev \
	libxslt1-dev \
	libyaml-dev

RUN \
	python3.6 /usr/share/python/get-pip.py "pip" "wheel" "cython" && \
	python3.7 /usr/share/python/get-pip.py "pip" "wheel" "cython" && \
	python3.8 /usr/share/python/get-pip.py "pip" "wheel" "cython" && \
	python3.9 /usr/share/python/get-pip.py "pip" "wheel" "cython" && \
	python3.10 /usr/share/python/get-pip.py "pip" "wheel" "cython"

# Upgrade preinstalled wheels
RUN rm -fr \
	/usr/share/python-wheels/pip*.whl \
	/usr/share/python-wheels/wheel*.whl \
	/usr/share/python-wheels/setuptools*.whl \
	&& python3 -m pip wheel --cache-dir /tmp/wheels -w /usr/share/python-wheels --no-binary=:all: \
		pip wheel setuptools \
	&& rm -fr /tmp/wheels

RUN pip3 install tox coveralls && \
	ln -snf /usr/local/bin/tox /usr/bin/tox && \
	ln -snf /usr/local/bin/coveralls /usr/bin/coveralls && \
	chmod a+x /usr/bin/tox /usr/bin/coveralls

ENV PIP_CONFIG_FILE /etc/pip.conf

RUN mkdir -p /var/cache/pip
ENV PIP_DOWNLOAD_CACHE=/var/cache/pip
