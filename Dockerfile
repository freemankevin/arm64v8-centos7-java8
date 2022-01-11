FROM arm64v8/centos:centos7

MAINTAINER  freemankevin <https://github.com/freemankevin>

# https://www.oracle.com/java/technologies/downloads/#license-lightbox
ADD ./jdk-8u311-linux-aarch64.tar.gz /usr/share/

ENV JAVA_HOME=/usr/share/jdk1.8.0_311/
ENV JRE_HOME=/usr/share/jdk1.8.0_311/jre
ENV CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib
ENV PATH=$JAVA_HOME/bin:$PATH
