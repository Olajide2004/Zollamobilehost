# Don't Remove Credit @olajidesherif
# Subscribe YouTube Channel For Amazing Bot @osunhive
# Ask Doubt on telegram @olajidesherif

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Zolla-FILTER-BOT
WORKDIR /Zolla-FILTER-BOT
COPY . /Zolla-FILTER-BOT
CMD ["python", "bot.py"]
