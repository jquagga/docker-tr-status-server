FROM debian:12-slim@sha256:155280b00ee0133250f7159b567a07d7cd03b1645714c3a7458b2287b0ca83cb

WORKDIR /app

RUN apt-get update && apt-get -y upgrade && \
apt-get install --no-install-recommends -y nodejs npm

COPY . /app

RUN npm install

USER 65532

ENTRYPOINT ["node", "index.js"]