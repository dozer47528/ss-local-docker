FROM ubuntu:18.04

RUN apt-get update -y

RUN apt-get install shadowsocks-libev privoxy simple-obfs -y

ADD ./cmd /

CMD /cmd