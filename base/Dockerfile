FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Etc/UTC

ENV LANG en_US.UTF-8

COPY sources.list /etc/apt/sources.list
COPY apt.conf /etc/apt/apt.conf

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y --no-install-recommends gnupg1 openssl ca-certificates locales tzdata && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6A755776 && \
	apt-get autoremove -y && \
	ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
	locale-gen en_US.UTF-8 && \
	dpkg-reconfigure locales tzdata && \
	rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*

COPY deadsnakes.list /etc/apt/sources.list.d/deadsnakes.list
