#################################################################
FROM snakepacker/python:all as pylava-builder

RUN virtualenv -p python3.6 /usr/share/python3/app
RUN /usr/share/python3/app/bin/pip install -U 'pylava'

########################################################################
FROM snakepacker/python:3.6

ENV LANG ru_RU.UTF-8

COPY --from=pylava-builder /usr/share/python3/app /usr/share/python3/app
RUN ln -snf /usr/share/python3/app/bin/pylava /usr/bin/ && \
    chmod a+x /usr/bin/pylava && mkdir -p /app

WORKDIR /app

CMD ["pylava"]
########################################################################
