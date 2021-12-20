FROM ghcr.io/snakepacker/python/base

ENV PYTHONDONTWRITEBYTECODE=True

# Install headers for useful libraries
RUN apt-install git-core build-essential libffi-dev
RUN apt-install virtualenv python python-dev python-setuptools python-wheel-common

ADD https://bootstrap.pypa.io/pip/2.7/get-pip.py /usr/share/python/get-pip2.py
RUN python /usr/share/python/get-pip2.py "pip < 21.0" "setuptools < 50.0" "wheel < 1.0"

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

RUN python3.10 /usr/share/python/get-pip.py "pip" "setuptools" "wheel"

RUN pip3 install tox coveralls && \
	ln -snf /usr/local/bin/tox /usr/bin/tox && \
	ln -snf /usr/local/bin/coveralls /usr/bin/coveralls && \
	chmod a+x /usr/bin/tox /usr/bin/coveralls

ENV PIP_CONFIG_FILE /etc/pip.conf

RUN mkdir -p /var/cache/pip
ENV PIP_DOWNLOAD_CACHE=/var/cache/pip
