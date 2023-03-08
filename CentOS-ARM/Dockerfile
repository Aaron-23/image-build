FROM centos:centos7.9.2009

WORKDIR /workdir
ENV TZ="Asia/Shanghai"

ADD docker-entrypoint.sh  /run/docker-entrypoint.sh

RUN yum install -y tzdata locales curl fio telnet dnsutils vim procps \
&& yum clean all


ENV LANG en_US.utf8
ENV SLEEP 9999999999999

VOLUME /workdir
EXPOSE 6688
ENTRYPOINT [ "/run/docker-entrypoint.sh" ]
