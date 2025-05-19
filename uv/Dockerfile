#################################################################
FROM ghcr.io/snakepacker/python/all as uv-builder

RUN python3.13 -m venv /usr/share/python3/app
RUN /usr/share/python3/app/bin/pip install -U 'uv'

# Will be find required system libraries and their packages
RUN find-libdeps /usr/share/python3/app > /usr/share/python3/app/pkgdeps.txt

########################################################################
FROM ghcr.io/snakepacker/python/3.13

COPY --from=uv-builder /usr/share/python3/app /usr/share/python3/app
RUN ln -snf /usr/share/python3/app/bin/uv /usr/bin/ && mkdir -p /app

# Install the required library packages
RUN xargs -ra /usr/share/python3/app/pkgdeps.txt apt-install

WORKDIR /app

ENTRYPOINT ["uv"]
########################################################################
