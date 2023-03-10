#################################################################
FROM ghcr.io/snakepacker/python/all as ruff-builder

RUN python3.11 -m venv /usr/share/python3/app
RUN /usr/share/python3/app/bin/pip install -U 'ruff'

# Will be find required system libraries and their packages
RUN find-libdeps /usr/share/python3/app > /usr/share/python3/app/pkgdeps.txt

########################################################################
FROM ghcr.io/snakepacker/python/3.11

COPY --from=pylava-builder /usr/share/python3/app /usr/share/python3/app
RUN ln -snf /usr/share/python3/app/bin/ruff /usr/bin/ && mkdir -p /app

# Install the required library packages
RUN xargs -ra /usr/share/python3/app/pkgdeps.txt apt-install

WORKDIR /app

ENTRYPOINT ["ruff"]
########################################################################
