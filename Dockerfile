FROM alpine:latest

WORKDIR /speedtest

RUN apk add --no-cache python3

RUN apk add --no-cache curl

RUN curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py >> speedtest.py

CMD ["python3", "speedtest.py"]
