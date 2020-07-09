FROM python:3
ENV PYTHONUNBUFFER 1

RUN mkdir /code
WORKDIR /code

COPY requirements.txt /code
RUN pip install -r requirements.txt
COPY . /code/

ENTRYPOINT ["./.docker/entrypoint.sh"]