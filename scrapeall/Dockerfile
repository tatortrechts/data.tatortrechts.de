FROM python:3.6
RUN apt-get update && apt-get upgrade -y
RUN pip install -U --pre poetry
WORKDIR /app
COPY ./scrapeall .
COPY ./aggregate/scrapers.txt ./input.txt
CMD bash run.sh
