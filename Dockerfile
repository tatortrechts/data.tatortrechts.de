# only used for deployment with Dokku

FROM python:3.6

RUN apt-get update && apt-get upgrade -y
# required for datasette
RUN apt-get install -y spatialite-bin libsqlite3-mod-spatialite

# install Python deps
RUN pip install -U --pre poetry
COPY pyproject.toml .
COPY poetry.lock .
RUN poetry install

WORKDIR /app
COPY app.json .
COPY ./aggregate .

CMD ./serve_dokku.sh