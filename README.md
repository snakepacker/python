A simple way to build a Python project
======================================

This repository provides and demonstrates a way to pack python package into a
compact Docker image, based on modern
[Ubuntu Bionic](https://help.ubuntu.ru/wiki/bionicbeaver) operation system.

Available images
----------------

Tag      | Info | Features
 ------- | ---- | --------
all      | [![](https://images.microbadger.com/badges/image/snakepacker/python:all.svg)](https://microbadger.com/images/snakepacker/python:all) | all available python versions, libpython headers and compiler
all-pillow | [![](https://images.microbadger.com/badges/image/snakepacker/python:all-pillow.svg)](https://microbadger.com/images/snakepacker/python:all-pillow) |  all available python versions, libpython headers, graphics libraries headers and compiler
[3.7](https://docs.python.org/3/whatsnew/3.7.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:3.7.svg)](https://microbadger.com/images/snakepacker/python:3.7) | pure python 3.7
[3.6](https://docs.python.org/3/whatsnew/3.6.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:3.6.svg)](https://microbadger.com/images/snakepacker/python:3.6) | pure python 3.6
[3.5](https://docs.python.org/3/whatsnew/3.5.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:3.5.svg)](https://microbadger.com/images/snakepacker/python:3.5) | pure python 3.5
[3.4](https://docs.python.org/3/whatsnew/3.4.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:3.4.svg)](https://microbadger.com/images/snakepacker/python:3.4) | pure python 3.4
[3.3](https://docs.python.org/3/whatsnew/3.3.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:3.3.svg)](https://microbadger.com/images/snakepacker/python:3.3) | pure python 3.3
[3.2](https://docs.python.org/3/whatsnew/3.2.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:3.2.svg)](https://microbadger.com/images/snakepacker/python:3.2) | pure python 3.2
[3.1](https://docs.python.org/3/whatsnew/3.1.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:3.1.svg)](https://microbadger.com/images/snakepacker/python:3.1) | pure python 3.1
[2.7](https://docs.python.org/2/whatsnew/2.7.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:2.7.svg)](https://microbadger.com/images/snakepacker/python:2.7) | pure python 2.7
[2.6](https://docs.python.org/2/whatsnew/2.6.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:2.6.svg)](https://microbadger.com/images/snakepacker/python:2.6) | pure python 2.6
[2.5](https://docs.python.org/2/whatsnew/2.5.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:2.5.svg)](https://microbadger.com/images/snakepacker/python:2.5) | pure python 2.5
[2.4](https://docs.python.org/2/whatsnew/2.4.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:2.4.svg)](https://microbadger.com/images/snakepacker/python:2.4) | pure python 2.4
[2.3](https://docs.python.org/2/whatsnew/2.3.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:2.3.svg)](https://microbadger.com/images/snakepacker/python:2.3) | pure python 2.3
[3.7-pillow](https://docs.python.org/3/whatsnew/3.7.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:3.7-pillow.svg)](https://microbadger.com/images/snakepacker/python:3.7-pillow) | pure python 3.7 with graphics libraries binaries
[3.6-pillow](https://docs.python.org/3/whatsnew/3.6.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:3.6-pillow.svg)](https://microbadger.com/images/snakepacker/python:3.6-pillow) | pure python 3.6 with graphics libraries binaries
[3.5-pillow](https://docs.python.org/3/whatsnew/3.5.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:3.5-pillow.svg)](https://microbadger.com/images/snakepacker/python:3.5-pillow) | pure python 3.5 with graphics libraries binaries
[3.4-pillow](https://docs.python.org/3/whatsnew/3.4.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:3.4-pillow.svg)](https://microbadger.com/images/snakepacker/python:3.4-pillow) | pure python 3.4 with graphics libraries binaries
[2.7-pillow](https://docs.python.org/2/whatsnew/2.7.html) | [![](https://images.microbadger.com/badges/image/snakepacker/python:2.7-pillow.svg)](https://microbadger.com/images/snakepacker/python:2.7-pillow) | pure python 3.3 with graphics libraries binaries
[pylama](https://pylama.readthedocs.io/en/latest/) | [![](https://images.microbadger.com/badges/image/snakepacker/python:pylama.svg)](https://microbadger.com/images/snakepacker/python:pylama) | pylama application image (useful for drone.ci)
[pylava](https://pylavadocs.readthedocs.io/en/latest/) | [![](https://images.microbadger.com/badges/image/snakepacker/python:pylava.svg)](https://microbadger.com/images/snakepacker/python:pylava) | pylava application image (useful for drone.ci)
[ipython](https://jupyter.org) | [![](https://images.microbadger.com/badges/image/snakepacker/python:ipython.svg)](https://microbadger.com/images/snakepacker/python:ipython) | ipython application image
[certbot](https://certbot.eff.org) | [![](https://images.microbadger.com/badges/image/snakepacker/python:certbot.svg)](https://microbadger.com/images/snakepacker/python:certbot) | certbot application image
base     | [![](https://images.microbadger.com/badges/image/snakepacker/python:base.svg)](https://microbadger.com/images/snakepacker/python:base)

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

# Create virtualenv on python 3.7
# Target folder should be the same on the build stage and on the target stage
RUN virtualenv -p python3.7 /usr/share/python3/app

RUN /usr/share/python3/app/bin/pip install -U pip 'ipython[notebook]'

#################################################################
####################### TARGET STAGE ############################
#################################################################
# Use the image version used on the build stage
FROM snakepacker/python:3.7

# Copy virtualenv to the target image
COPY --from=builder /usr/share/python3/app /usr/share/python3/app

# Create a symlink to the target binary (just for convenience)
RUN ln -snf /usr/share/python3/app/bin/ipython /usr/bin/

CMD ["ipython"]
```

And just build this:
```bash
docker build -t ipython .
```
