#################################################################
FROM snakepacker/python:all as pylama-builder

RUN virtualenv -p python3.6 /usr/share/python3/app
RUN /usr/share/python3/app/bin/pip install -U 'pylama'

########################################################################
FROM snakepacker/python:3.6

ENV LANG ru_RU.UTF-8

COPY --from=pylama-builder /usr/share/python3/app /usr/share/python3/app
RUN ln -snf /usr/share/python3/app/bin/pylama /usr/bin/ && \
    chmod a+x /usr/bin/pylama && mkdir -p /app

WORKDIR /app

CMD ["pylama"]
########################################################################
