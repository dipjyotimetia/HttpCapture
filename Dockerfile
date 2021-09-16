FROM debian:stable-slim
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/buger/goreplay/releases/download/v1.3.2/gor_1.3.2_x64.tar.gz -o gor.tar.gz
RUN tar xzf gor.tar.gz
EXPOSE 8001
ENTRYPOINT ./gor
