FROM ubuntu:18.04

ENV TZ="Asia/Shanghai"
ADD sources.list /etc/apt/sources.list

RUN set -ex \
    && ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo "${TZ}" > /etc/timezone \
    && apt-get update \
    && apt-get install -y locales nginx \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/cache/apt \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
    && rm -rf /var/lib/apt/lists/* 

ENV LANG en_US.utf8
EXPOSE 80
CMD ["nginx"]