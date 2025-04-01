FROM ghcr.io/snakepacker/python/3.12
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

WORKDIR /app

ENTRYPOINT ["uv"]
