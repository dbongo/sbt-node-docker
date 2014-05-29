FROM phusion/baseimage

RUN apt-get update -yq
RUN apt-get install software-properties-common -yq

RUN add-apt-repository ppa:webupd8team/java
RUN add-apt-repository ppa:chris-lea/node.js
RUN add-apt-repository ppa:git-core/ppa

RUN apt-get update -yq && apt-get upgrade -yq

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

RUN apt-get install curl git oracle-java8-installer libjansi-java libfontconfig nodejs -yq

RUN wget -O sbt.deb http://dl.bintray.com/sbt/debian/sbt-0.13.2.deb
RUN sudo dpkg -i sbt.deb
RUN rm -f sbt.deb

RUN apt-get clean