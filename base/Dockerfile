FROM ubuntu:focal

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Etc/UTC

ENV LANG en_US.UTF-8

COPY sources.list /etc/apt/sources.list
COPY apt.conf /etc/apt/apt.conf.d/snakepacker

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y --no-install-recommends gnupg1 openssl ca-certificates locales tzdata libffi7 apt-utils && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6A755776 && \
	apt-get autoremove -y && \
	ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
	locale-gen en_US.UTF-8 && \
	dpkg-reconfigure locales tzdata && \
	rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*

ENV LANG="en_US.UTF-8" \
	LC_CTYPE="en_US.UTF-8" \
	LC_NUMERIC="en_US.UTF-8" \
	LC_TIME="en_US.UTF-8" \
	LC_COLLATE="en_US.UTF-8" \
	LC_MONETARY="en_US.UTF-8" \
	LC_MESSAGES="en_US.UTF-8" \
	LC_PAPER="en_US.UTF-8" \
	LC_NAME="en_US.UTF-8" \
	LC_ADDRESS="en_US.UTF-8" \
	LC_TELEPHONE="en_US.UTF-8" \
	LC_MEASUREMENT="en_US.UTF-8" \
	LC_IDENTIFICATION="en_US.UTF-8"

COPY deadsnakes.list /etc/apt/sources.list.d/deadsnakes.list
COPY tools/ /usr/local/sbin/
RUN chmod a+x /usr/local/sbin/* && rm -fr /var/log/* /tmp/*
