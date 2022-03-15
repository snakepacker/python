#################################################################
FROM ghcr.io/snakepacker/python/all as gray-builder

RUN python3.9 -m venv /usr/share/python3/app
RUN /usr/share/python3/app/bin/pip install -U 'gray'

# Will be find required system libraries and their packages
RUN find-libdeps /usr/share/python3/app > /usr/share/python3/app/pkgdeps.txt

########################################################################
FROM ghcr.io/snakepacker/python/3.9

ENV LANG ru_RU.UTF-8

COPY --from=gray-builder /usr/share/python3/app /usr/share/python3/app
RUN ln -snf /usr/share/python3/app/bin/gray /usr/bin/ && \
    chmod a+x /usr/bin/gray && mkdir -p /app

# Install the required library packages
RUN xargs -ra /usr/share/python3/app/pkgdeps.txt apt-install

WORKDIR /app

CMD ["gray"]
########################################################################
