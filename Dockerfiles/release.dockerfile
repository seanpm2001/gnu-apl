FROM ubuntu:xenial
LABEL maintainer="marnen@marnen.org"

ARG apl_deb
WORKDIR /gnu-apl
ADD . /gnu-apl

RUN apt-get update -y
RUN dpkg -i ${apl_deb}
RUN rm ${apl_deb}

ADD .travis/.gnu-apl /etc/gnu-apl # 1.6 and before
ADD .travis/.gnu-apl /etc/gnu-apl.d