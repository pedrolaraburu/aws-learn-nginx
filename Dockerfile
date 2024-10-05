FROM python:3.9-slim

ENV POETRY_VERSION=1.4.0 \
    POETRY_VIRTUALENVS_CREATE=false \
    POETRY_NO_INTERACTION=1

RUN pip install "poetry==${POETRY_VERSION}"

WORKDIR /app

COPY pyproject.toml poetry.lock* /app/

RUN poetry install --no-root

COPY . /app


EXPOSE 8000

CMD [ "python", "./src/main.py"]
