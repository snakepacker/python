########################################################################
FROM ghcr.io/snakepacker/python/all as certbot-builder

RUN python3.10 -m venv /usr/share/python3/app

RUN /usr/share/python3/app/bin/pip install -U pip 'certbot'

# Will be find required system libraries and their packages
RUN find-libdeps /usr/share/python3/app > /usr/share/python3/app/pkgdeps.txt

########################################################################
FROM ghcr.io/snakepacker/python/3.10

COPY --from=certbot-builder /usr/share/python3/app /usr/share/python3/app
RUN ln -snf /usr/share/python3/app/bin/certbot /usr/bin/

# Install the required library packages
RUN xargs -ra /usr/share/python3/app/pkgdeps.txt apt-install

VOLUME /etc/letsencrypt /var/lib/letsencrypt
EXPOSE 80 443

ENTRYPOINT [ "certbot" ]
########################################################################
