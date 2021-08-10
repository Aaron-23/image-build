FROM ubuntu:18.04
ADD sources.list /etc/apt/sources.list
RUN apt-get update
&& / apt-get install -y nginx

EXPOSE 80
CMD ["nginx"]
