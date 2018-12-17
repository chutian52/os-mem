FROM debian:jessie

LABEL maintainer=chenfuqian@suiyi.com.cn

RUN set -ex; \
  apt-get update && apt-get install -y \
  curl \
  libbsd-dev \
  gcc \
  patch \
  g++ \
  && rm -rf /var/lib/apt/lists/*; \
  mkdir -p /opt/app;

COPY ./mem.cpp /opt/app/mem.cpp

WORKDIR /opt/app

RUN set -ex; \
    gcc mem.cpp -lstdc++ -o mem; \
    chmod +x mem;

CMD ["/bin/sh", "-c", "/opt/app/mem"]