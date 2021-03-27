#################################################################
FROM snakepacker/python/all as gray-builder

RUN python3.6 -m venv /usr/share/python3/app
RUN /usr/share/python3/app/bin/pip install -U 'gray'

########################################################################
FROM snakepacker/python/3.6

ENV LANG ru_RU.UTF-8

COPY --from=gray-builder /usr/share/python3/app /usr/share/python3/app
RUN ln -snf /usr/share/python3/app/bin/gray /usr/bin/ && \
    chmod a+x /usr/bin/gray && mkdir -p /app

WORKDIR /app

CMD ["gray"]
########################################################################
