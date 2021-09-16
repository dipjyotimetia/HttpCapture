FROM alpine:latest
RUN  apk add --no-cache curl
RUN curl -OL https://github.com/buger/goreplay/releases/download/v1.3.2/gor_1.3.2_x64.tar.gz
RUN tar xzf gor_1.3.2_x64.tar.gz
EXPOSE 8001
ENTRYPOINT ./gor
