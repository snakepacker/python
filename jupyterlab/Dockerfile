#################################################################
####################### BUILD STAGE #############################
#################################################################
# This image contains:
# 1. All python versions
# 2. required python headers
# 3. C compiller and developer tools
FROM ghcr.io/snakepacker/python/all:pillow as builder

# Creating virtualev on python 3.10
# Target folder should be same on build stage and on the target stage
RUN python3.10 -m venv /usr/share/python3/app

RUN /usr/share/python3/app/bin/pip install -U pip jupyterlab

# Will be find required system libraries and their packages
RUN find-libdeps /usr/share/python3/app > /usr/share/python3/app/pkgdeps.txt

#################################################################
####################### TARGET STAGE ############################
#################################################################
# Use the image version used on the build stage
FROM ghcr.io/snakepacker/python/3.11-pillow

# Copying virtualenv to the target image
COPY --from=builder /usr/share/python3/app /usr/share/python3/app

# Creating a symlink to the target binary (just for convenience)
RUN ln -snf /usr/share/python3/app/bin/jupyter-lab /usr/bin/

# Install the required library packages
RUN xargs -ra /usr/share/python3/app/pkgdeps.txt apt-install

CMD ["jupyter-lab"]
