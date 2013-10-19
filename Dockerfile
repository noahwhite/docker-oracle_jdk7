# Oracle JDK 1.7.0_x
#
# VERSION               0.0.1

FROM      base
MAINTAINER Noah White "noah@noahwhite.net"

RUN apt-get update

RUN apt-get -y install wget

RUN apt-get -y install unzip

RUN wget -q --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com" "http://download.oracle.com/otn-pub/java/jdk/7u45-b18/jdk-7u45-linux-x64.tar.gz"

RUN mv /jdk-7u45-linux-x64.tar.gz /usr/local; cd /usr/local; tar zxvf jdk-7u45-linux-x64.tar.gz ; rm -f jdk-7u45-linux-x64.tar.gz

ENV JAVA_HOME /usr/local/jdk1.7.0_45
 
ENV PATH $PATH:$JAVA_HOME/bin

