FROM ghcr.io/snakepacker/python/base

# Install python
RUN apt-install python3.9-minimal libpython3.9-stdlib python3.9-distutils

RUN ln -s \
	/usr/lib/python3.9/_sysconfigdata__linux_x86_64-linux-gnu.py \
	/usr/lib/python3.9/_sysconfigdata__x86_64-linux-gnu.py
