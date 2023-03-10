A simple way to build a Python project
======================================

![](https://github.com/snakepacker/python/raw/master/logo.png)

This repository provides and demonstrates a way to pack python package into a
compact Docker image, based on modern
[Ubuntu Jammy](https://releases.ubuntu.com/jammy/) operation system.

Available images
----------------

Docker Hub images

Tag      | Info | Purpose | Features
 ------- | ---- | ------- | --------
all      | ![](https://flat.badgen.net/docker/size/snakepacker/python/all/amd64?label=size) | build stage | all available python versions, libpython headers and compiler
all-pillow | ![](https://flat.badgen.net/docker/size/snakepacker/python/all-pillow/amd64?label=size) | build stage |  all available python versions, libpython headers, graphics libraries headers and compiler
[3.11](https://docs.python.org/3/whatsnew/3.11.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.11/amd64?label=size) | target stage | pure python 3.11
[3.10](https://docs.python.org/3/whatsnew/3.10.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.10/amd64?label=size) | target stage | pure python 3.10
[3.9](https://docs.python.org/3/whatsnew/3.9.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.9/amd64?label=size) | target stage | pure python 3.9
[3.8](https://docs.python.org/3/whatsnew/3.8.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.8/amd64?label=size) | target stage | pure python 3.8
[3.7](https://docs.python.org/3/whatsnew/3.7.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.7/amd64?label=size) | target stage | pure python 3.7
[3.11-pillow](https://docs.python.org/3/whatsnew/3.11.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.11-pillow/amd64?label=size) | target stage | pure python 3.11 with graphics libraries binaries
[3.10-pillow](https://docs.python.org/3/whatsnew/3.10.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.10-pillow/amd64?label=size) | target stage | pure python 3.10 with graphics libraries binaries
[3.9-pillow](https://docs.python.org/3/whatsnew/3.9.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.9-pillow/amd64?label=size) | target stage | pure python 3.9 with graphics libraries binaries
[3.8-pillow](https://docs.python.org/3/whatsnew/3.8.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.8-pillow/amd64?label=size) | target stage | pure python 3.8 with graphics libraries binaries
[3.7-pillow](https://docs.python.org/3/whatsnew/3.7.html) | ![](https://flat.badgen.net/docker/size/snakepacker/python/3.7-pillow/amd64?label=size) | target stage | pure python 3.7 with graphics libraries binaries
[pylama](https://pylama.readthedocs.io/en/latest/) | ![](https://flat.badgen.net/docker/size/snakepacker/python/pylama/amd64?label=size) | ready to use | pylama application image (useful for drone.ci)
[pylava](https://pylavadocs.readthedocs.io/en/latest/) | ![](https://flat.badgen.net/docker/size/snakepacker/python/pylava/amd64?label=size) | ready to use | pylava application image (useful for drone.ci)
[ipython](https://jupyter.org) | ![](https://flat.badgen.net/docker/size/snakepacker/python/ipython/amd64?label=size) | ready to use | ipython application image
[certbot](https://certbot.eff.org) | ![](https://flat.badgen.net/docker/size/snakepacker/python/certbot/amd64?label=size) | ready to use | certbot application image
[black](https://black.readthedocs.io/en/stable/) | ![](https://flat.badgen.net/docker/size/snakepacker/python/black/amd64?label=size) | ready to use | black application image (useful for drone.ci)
[gray](https://github.com/dizballanze/gray) | ![](https://flat.badgen.net/docker/size/snakepacker/python/gray/amd64?label=size) | ready to use | gray application image (useful for drone.ci)
base     | ![](https://flat.badgen.net/docker/size/snakepacker/python/base/amd64?label=size) |  | common layers



Concept
-------

The main idea of this method is to build a `virtualenv` for your package using 
heavy full-powered image (e.g. `snakepacker/python:all`, that contains all 
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
FROM snakepacker/python:all as builder

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
FROM snakepacker/python:3.10

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
