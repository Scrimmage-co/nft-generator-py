FROM python:3.8.12

WORKDIR /app

COPY requirements.txt ./

RUN python3 -m pip install -r requirements.txt

COPY images ./images
COPY lib ./lib
COPY metadata ./metadata
COPY trait-layers/ ./trait-layers
COPY generate.py ./

