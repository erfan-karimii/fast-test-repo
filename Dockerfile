FROM docker.arvancloud.ir/python:3.11.1-slim


ENV PYTHONUNBUFFERED=1


ADD requirements.txt /requirements.txt
RUN pip install --upgrade pip -i https://mirror-pypi.runflare.com/simple \ 
    && pip install -i https://mirror-pypi.runflare.com/simple -r /requirements.txt


    RUN mkdir /app
WORKDIR /app
ADD . /app/