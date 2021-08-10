FROM ubuntu:18.04

ENV TZ="Asia/Shanghai"
ADD sources.list /etc/apt/sources.list

RUN apt-get update \
&& apt-get install -y locales curl\
&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
&& curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.deb.sh |  bash \
&& apt-get install -y sysbench \
&& rm -rf /var/lib/apt/lists/* 

ENV LANG en_US.utf8

CMD ["sleep", "9999999999"]