FROM ubuntu:latest

WORKDIR /factorio

RUN apt-get update &&\
  apt-get install -y curl && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# The super important one.
ENV FACTORIO_VERSION 0.12.27

RUN curl -L -k https://www.factorio.com/get-download/$FACTORIO_VERSION/headless/linux64 | tar -xzf -

VOLUME ["/factorio/factorio/mods"]
VOLUME ["/factorio/factorio/saves"]

EXPOSE 34197/udp
EXPOSE 34197/tcp

WORKDIR /factorio/factorio/bin/x64/
ENTRYPOINT ["/factorio/factorio/bin/x64/factorio", "--start-server", "latest.zip"]
