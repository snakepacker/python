Simple way to build a python project
====================================

This repository provide and demonstrate method to build the python-package to small image on modern Ubuntu Bionic.

Concept
-------

The main idea of this method is building your package into `virtualenv` and copy obtained `virtualenv` to the `base image` with suitable python version.

Example
-------

For example you may build the `jupyter notebook`. Just create the Dockerfile with following content:

```Dockerfile
#################################################################
####################### BUILD STAGE #############################
#################################################################
# This image contains:
# 1. All python versions
# 2. required python headers
# 3. C compiller and developer tools
FROM snakepacker/python:all as builder

# Creating virtualev on python 3.7
# Target folder should be same on build stage and on the target stage
RUN virtualenv -p python3.7 /usr/share/python3/app

RUN /usr/share/python3/app/bin/pip install -U pip 'ipython[notebook]'

#################################################################
####################### TARGET STAGE ############################
#################################################################
# Use the image version used on the build stage
FROM snakepacker/python:3.7

# Copying virtualenv to the target image
COPY --from=builder /usr/share/python3/app /usr/share/python3/app

# Creating a symlink to the target binary (just for convenience)
RUN ln -snf /usr/share/python3/app/bin/ipython /usr/bin/

CMD ["ipython"]
```

And just build this:
```bash
docker build -t ipython .
```
