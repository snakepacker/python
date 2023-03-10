#################################################################
FROM ghcr.io/snakepacker/python/all as pylava-builder

RUN python3.10 -m venv /usr/share/python3/app
RUN /usr/share/python3/app/bin/pip install -U 'pylava'

# Will be find required system libraries and their packages
RUN find-libdeps /usr/share/python3/app > /usr/share/python3/app/pkgdeps.txt

########################################################################
FROM ghcr.io/snakepacker/python/3.10

COPY --from=pylava-builder /usr/share/python3/app /usr/share/python3/app
RUN ln -snf /usr/share/python3/app/bin/pylava /usr/bin/ && \
    chmod a+x /usr/bin/pylava && mkdir -p /app

# Install the required library packages
RUN xargs -ra /usr/share/python3/app/pkgdeps.txt apt-install

WORKDIR /app

CMD ["pylava"]
########################################################################
