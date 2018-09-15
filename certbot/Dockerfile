########################################################################
FROM snakepacker/python:all as builder

RUN virtualenv -p python3.7 /usr/share/python3/app

RUN /usr/share/python3/app/bin/pip install -U pip 'certbot'

########################################################################
FROM snakepacker/python:3.7

COPY --from=builder /usr/share/python3/app /usr/share/python3/app
RUN ln -snf /usr/share/python3/app/bin/ipython /usr/bin/

CMD ["ipython"]
########################################################################