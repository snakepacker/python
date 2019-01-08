FROM snakepacker/python:base

ENV PYTHONDONTWRITEBYTECODE=True

# Install headers for useful libraries
RUN apt-get update && \
    apt-get install -y \
        git-core \
        virtualenv \
        python \
        python2.3 \
        python2.4 \
        python2.5 \
        python2.6 \
        python3.1 \
        python3.2 \
        python3.3 \
        python3.4 \
        python3.5 \
        python3.6 \
        python3.7 \
        python-dev \
        python2.3-dev \
        python2.4-dev \
        python2.5-dev \
        python2.6-dev \
        python3.1-dev \
        python3.2-dev \
        python3.3-dev \
        python3.4-dev \
        python3.5-dev \
        python3.6-dev \
        python3.7-dev \
        python3-pip \
        build-essential && \
    rm -fr /var/lib/apt/lists/* && \
    pip3 install tox coveralls && \
    ln -snf /usr/local/bin/tox /usr/bin/tox && \
    ln -snf /usr/local/bin/coveralls /usr/bin/coveralls && \
    chmod a+x /usr/bin/tox /usr/bin/coveralls

ENV PIP_CONFIG_FILE /etc/pip.conf

RUN mkdir -p /var/cache/pip
ENV PIP_DOWNLOAD_CACHE=/var/cache/pip

COPY wait-for-port.py /usr/bin/wait-for-port
