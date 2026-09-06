FROM ubuntu:24.04

WORKDIR /app

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY .python-version pyproject.toml uv.lock ./

RUN uv python install
RUN uv sync --frozen --no-install-project

COPY . .

EXPOSE 5443

CMD ["uv", "run", "--no-sync", "python", "app.py"]