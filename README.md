A simple way to build a Python project
======================================

This repository provides and demonstrates a way to build a compact Ubuntu Bionic-based Docker image with ready-to-use Python package.

Concept
-------

The main idea of this method is to build a `virtualenv` for your package and to copy it into the `base image` with suitable Python version.

Example
-------

For example, you may build the `jupyter notebook`. Just create a Dockerfile with the following content:

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
