FROM debian:buster

ENV TZ="Asia/Shanghai"
ADD sources.list /etc/apt/sources.list

RUN apt-get update \
&& apt-get install -y tzdata locales curl fio telnet dnsutils vim procps\
&& ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& dpkg-reconfigure -f noninteractive tzdata \
&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
&& curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.deb.sh |  bash \
&& apt-get install -y sysbench \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* 

ENV LANG en_US.utf8

ENTRYPOINT [ "/run/docker-entrypoint.sh" ]