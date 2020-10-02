FROM ghcr.io/snakepacker/python/base

ENV PYTHONDONTWRITEBYTECODE=True

# Install headers for useful libraries
RUN apt-install git-core build-essential libffi-dev

ADD https://bootstrap.pypa.io/get-pip.py /usr/share/python/get-pip.py

RUN apt-install virtualenv python python-dev python-setuptools python-wheel-common && \
	python /usr/share/python/get-pip.py

RUN apt-install \
	python3.8 \
	python3.8-dev \
	python3-setuptools \
	python3-wheel \
	python3-venv \
	python3-virtualenv \
	virtualenv && \
	python3 /usr/share/python/get-pip.py

RUN apt-install -y python2.7 python2.7-dev
RUN apt-install -y python3.5 python3.5-dev python3.5-venv
RUN apt-install -y python3.6 python3.6-dev python3.6-venv
RUN apt-install -y python3.7 python3.7-dev python3.7-venv
RUN apt-install -y python3.9 python3.9-dev python3.9-venv && \
    ln -s \
	  /usr/lib/python3.9/_sysconfigdata__linux_x86_64-linux-gnu.py \
	  /usr/lib/python3.9/_sysconfigdata__x86_64-linux-gnu.py

RUN pip3 install tox coveralls && \
	ln -snf /usr/local/bin/tox /usr/bin/tox && \
	ln -snf /usr/local/bin/coveralls /usr/bin/coveralls && \
	chmod a+x /usr/bin/tox /usr/bin/coveralls

ENV PIP_CONFIG_FILE /etc/pip.conf

RUN mkdir -p /var/cache/pip
ENV PIP_DOWNLOAD_CACHE=/var/cache/pip
