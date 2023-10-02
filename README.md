A simple way to build a Python project
======================================

![](https://github.com/snakepacker/python/raw/master/logo.png)

This repository provides and demonstrates a way to pack python package into a
compact Docker image, based on modern
[Ubuntu Jammy](https://releases.ubuntu.com/jammy/) operation system.


Awailable images
----------------

This project is available both in the official docker repository and also on the Github Container Registry (`ghcr.io`).

[`ghcr.io`](https://github.com/orgs/snakepacker/repositories)  | [`docker.io`](https://hub.docker.com/r/snakepacker/python)
 ------- | ---------
[`ghcr.io/snakepacker/python/all`](https://github.com/orgs/snakepacker/packages/container/package/python%2Fall) | [`snakepacker/python:all`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=all)
[`ghcr.io/snakepacker/python/all-pillow`](https://github.com/orgs/snakepacker/packages/container/package/python%2Fall-pillow) | [`snakepacker/python:all-pillow`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=all-pillow)
[`ghcr.io/snakepacker/python/3.12`](https://github.com/orgs/snakepacker/packages/container/package/python%2F3.12) | [`snakepacker/python:3.12`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=3.12)
[`ghcr.io/snakepacker/python/3.12-pillow`](https://github.com/orgs/snakepacker/packages/container/package/python%2F3.12-pillow) | [`snakepacker/python:3.12-pillow`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=3.12-pillow)
[`ghcr.io/snakepacker/python/3.11`](https://github.com/orgs/snakepacker/packages/container/package/python%2F3.11) | [`snakepacker/python:3.11`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=3.11)
[`ghcr.io/snakepacker/python/3.11-pillow`](https://github.com/orgs/snakepacker/packages/container/package/python%2F3.11-pillow) | [`snakepacker/python:3.11-pillow`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=3.11-pillow)
[`ghcr.io/snakepacker/python/3.10`](https://github.com/orgs/snakepacker/packages/container/package/python%2F3.10) | [`snakepacker/python:3.10`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=3.10)
[`ghcr.io/snakepacker/python/3.10-pillow`](https://github.com/orgs/snakepacker/packages/container/package/python%2F3.10-pillow) | [`snakepacker/python:3.10-pillow`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=3.10-pillow)
[`ghcr.io/snakepacker/python/3.9`](https://github.com/orgs/snakepacker/packages/container/package/python%2F3.9) | [`snakepacker/python:3.9`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=3.9)
[`ghcr.io/snakepacker/python/3.9-pillow`](https://github.com/orgs/snakepacker/packages/container/package/python%2F3.9-pillow) | [`snakepacker/python:3.9-pillow`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=3.9-pillow)
[`ghcr.io/snakepacker/python/3.8`](https://github.com/orgs/snakepacker/packages/container/package/python%2F3.8) | [`snakepacker/python:3.8`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=3.8)
[`ghcr.io/snakepacker/python/3.8-pillow`](https://github.com/orgs/snakepacker/packages/container/package/python%2F3.8-pillow) | [`snakepacker/python:3.8-pillow`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=3.8-pillow)
[`ghcr.io/snakepacker/python/3.7`](https://github.com/orgs/snakepacker/packages/container/package/python%2F3.7) | [`snakepacker/python:3.7`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=3.7)
[`ghcr.io/snakepacker/python/3.7-pillow`](https://github.com/orgs/snakepacker/packages/container/package/python%2F3.7-pillow) | [`snakepacker/python:3.7-pillow`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=3.7-pillow)
[`ghcr.io/snakepacker/python/pylama`](https://github.com/orgs/snakepacker/packages/container/package/python%2Fpylama) | [`snakepacker/python:pylama`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=pylama)
[`ghcr.io/snakepacker/python/pylava`](https://github.com/orgs/snakepacker/packages/container/package/python%2Fpylava) | [`snakepacker/python:pylava`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=pylava)
[`ghcr.io/snakepacker/python/ipython`](https://github.com/orgs/snakepacker/packages/container/package/python%2Fipython) | [`snakepacker/python:ipython`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=ipython)
[`ghcr.io/snakepacker/python/certbot`](https://github.com/orgs/snakepacker/packages/container/package/python%2Fcertbot) | [`snakepacker/python:certbot`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=certbot)
[`ghcr.io/snakepacker/python/black`](https://github.com/orgs/snakepacker/packages/container/package/python%2Fblack) | [`snakepacker/python:black`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=black)
[`ghcr.io/snakepacker/python/gray`](https://github.com/orgs/snakepacker/packages/container/package/python%2Fgray) | [`snakepacker/python:gray`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=gray)
[`ghcr.io/snakepacker/python/ruff`](https://github.com/orgs/snakepacker/packages/container/package/python%2Fruff) | [`snakepacker/python:ruff`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=ruff)
[`ghcr.io/snakepacker/python/jupyterlab`](https://github.com/orgs/snakepacker/packages/container/package/python%2Fjupyterlab) | [`snakepacker/python:jupyterlab`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=jupyterlab)
[`ghcr.io/snakepacker/python/base`](https://github.com/orgs/snakepacker/packages/container/package/python%2Fbase) | [`snakepacker/python:base`](https://hub.docker.com/r/snakepacker/python/tags?page=1&name=base)


Image descriptions
------------------

The images according to their purpose and features:

Tag      | Info | Purpose | Features
 ------- | ---- | ------- | --------
all      | ![](https://flat.badgen.net/docker/size/snakepacker/python/all/amd64?label=size) | build stage | all available python versions, libpython headers and compiler
all-pillow | ![](https://flat.badgen.net/docker/size/snakepacker/python/all-pillow/amd64?label=size) | build stage |  all available python versions, libpython headers, graphics libraries headers and compiler
[3.12](https://docs.python.org/3/whatsnew/3.12.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.12/amd64?label=size) | target stage | pure python 3.12
[3.11](https://docs.python.org/3/whatsnew/3.11.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.11/amd64?label=size) | target stage | pure python 3.11
[3.10](https://docs.python.org/3/whatsnew/3.10.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.10/amd64?label=size) | target stage | pure python 3.10
[3.9](https://docs.python.org/3/whatsnew/3.9.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.9/amd64?label=size) | target stage | pure python 3.9
[3.8](https://docs.python.org/3/whatsnew/3.8.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.8/amd64?label=size) | target stage | pure python 3.8
[3.7](https://docs.python.org/3/whatsnew/3.7.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.7/amd64?label=size) | target stage | pure python 3.7
[3.12-pillow](https://docs.python.org/3/whatsnew/3.12.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.12-pillow/amd64?label=size) | target stage | pure python 3.12 with graphics libraries binaries
[3.11-pillow](https://docs.python.org/3/whatsnew/3.11.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.11-pillow/amd64?label=size) | target stage | pure python 3.11 with graphics libraries binaries
[3.10-pillow](https://docs.python.org/3/whatsnew/3.10.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.10-pillow/amd64?label=size) | target stage | pure python 3.10 with graphics libraries binaries
[3.9-pillow](https://docs.python.org/3/whatsnew/3.9.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.9-pillow/amd64?label=size) | target stage | pure python 3.9 with graphics libraries binaries
[3.8-pillow](https://docs.python.org/3/whatsnew/3.8.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.8-pillow/amd64?label=size) | target stage | pure python 3.8 with graphics libraries binaries
[3.7-pillow](https://docs.python.org/3/whatsnew/3.7.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.7-pillow/amd64?label=size) | target stage | pure python 3.7 with graphics libraries binaries
[pylama](https://pylama.readthedocs.io/en/latest/) | ![](https://flat.badgen.net/docker/size/snakepacker/python/pylama/amd64?label=size) | ready to use | pylama application image (useful for CI)
[pylava](https://pylavadocs.readthedocs.io/en/latest/) | ![](https://flat.badgen.net/docker/size/snakepacker/python/pylava/amd64?label=size) | ready to use | pylava application image (useful for CI)
[ipython](https://jupyter.org) | ![](https://flat.badgen.net/docker/size/snakepacker/python/ipython/amd64?label=size) | ready to use | ipython application image
[certbot](https://certbot.eff.org) | ![](https://flat.badgen.net/docker/size/snakepacker/python/certbot/amd64?label=size) | ready to use | certbot application image
[black](https://black.readthedocs.io/en/stable/) | ![](https://flat.badgen.net/docker/size/snakepacker/python/black/amd64?label=size) | ready to use | black application image (useful for CI)
[gray](https://github.com/dizballanze/gray) | ![](https://flat.badgen.net/docker/size/snakepacker/python/gray/amd64?label=size) | ready to use | gray application image (useful for CI)
[ruff](https://github.com/astral-sh/ruff) | ![](https://flat.badgen.net/docker/size/snakepacker/python/ruff/amd64?label=size) | ready to use | ruff linter image (useful for CI)
[jupyterlab](https://github.com/jupyterlab/jupyterlab) | ![](https://flat.badgen.net/docker/size/snakepacker/python/jupyterlab/amd64?label=size) | ready to use | jupyterlab image
base     | ![](https://flat.badgen.net/docker/size/snakepacker/python/base/amd64?label=size) |  | common layers


Concept
-------

The main idea of this method is to build a `virtualenv` for your package using 
heavy full-powered image (e.g. `ghcr.io/snakepacker/python:all`, that contains all 
necessary headers, libraries, compiler, etc.), and then copy it into thin 
`base image` with suitable Python version.

Reasons
-------

Why so complex? You could just `COPY` directory with your python project into 
Docker container, and for the first point of view this seems to be reasonable. 

But just copying directory with python project cause several problems:

- Generated on different operating system .pyc files can be put into Docker 
  image accidentally. Thus, python would try to rewrite .pyc with correct ones 
  each time when Docker image would be started. If you would run Docker image 
  in read-only mode - your application would break.  
   
- Large possibility that you would also pack garbage files: pytest and tox 
  cache, developer's virtualenv and other files, that just increate the size of 
  the resulting image.

- No explicit entrypoint. It is not obvious what commands end user is able to 
  run (we hope you've implemented `-h` or `--help` arguments).
  
- By default, tox interprets your package as python module, e.g. it tries to 
  run `pip install .` when preparing environment.

Yes, of course, you can solve all of those problems using hacks, specific
settings, .dockeridnore file, and other tricks. But it would be non-intuitive 
and non-obvious for your users.

So, we recommend to spend a little more time and pack your package carefully, 
so your users would run it with pleasure.

Example
-------

For example, you may build the `jupyter notebook`. Just create a Dockerfile 
with the following content:

```Dockerfile
#################################################################
####################### BUILD STAGE #############################
#################################################################
# This image contains:
# 1. All the Python versions
# 2. required python headers
# 3. C compiler and developer tools
FROM ghcr.io/snakepacker/python:all as builder

# Create virtualenv on python 3.10
# Target folder should be the same on the build stage and on the target stage
RUN python3.10 -m venv /usr/share/python3/app

# Install target package
RUN /usr/share/python3/app/bin/pip install -U pip 'ipython[notebook]'

# Will be find required system libraries and their packages
RUN find-libdeps /usr/share/python3/app > /usr/share/python3/app/pkgdeps.txt

#################################################################
####################### TARGET STAGE ############################
#################################################################
# Use the image version used on the build stage
FROM ghcr.io/snakepacker/python:3.10

# Copy virtualenv to the target image
COPY --from=builder /usr/share/python3/app /usr/share/python3/app

# Install the required library packages
RUN xargs -ra /usr/share/python3/app/pkgdeps.txt apt-install

# Create a symlink to the target binary (just for convenience)
RUN ln -snf /usr/share/python3/app/bin/ipython /usr/bin/

CMD ["ipython"]
```

And just build this:
```bash
docker build -t ipython .
```

Useful tools
------------

All images contain ready to use and simple wrappers for easy image building.

### apt-install

Pretty simple bash script. The main purpose is removing the apt cache and temporary files after installation when you want to install something through apt-get install.

Otherwise, you have to write something like this 

```bash
apt-get update && \
apt-get install -y tcpdump && \
rm -fr /var/lib/apt/lists /var/lib/cache/* /var/log/*
```

It might be replaced like this:
```bash
apt-install tcpdump
```

### wait-for-port

Python script which waits for availability one or multiple TCP ports. It's very useful for tests and with docker-compose.

```bash
wait-for-port --period=0.5 --timeout=600 postgres:5432 pgbouncer:6432 && python myscript.py
```
Or shorter (values from previous example are defaults):
```bash
wait-for-port postgres:5432 pgbouncer:6432 && python myscript.py
```

This script will be trying to make connections to passed endpoints until timeout would be reached or endpoints stay connectable.


### find-libdeps

A shell script which find binary `*.so` files and resolve required system package for install library dependencies.

Save required packages
```bash
find-libdeps /usr/share/python3/app > /usr/share/python3/app/pkgdeps.txt
```

Install saved packages
```bash
xargs -ra /usr/share/python3/app/pkgdeps.txt apt-install
```
