FROM ubuntu:18.10

RUN apt update && apt upgrade -y && apt install -y software-properties-common debconf-utils ubuntu-make

RUN add-apt-repository -y ppa:webupd8team/java && apt update

RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections

RUN apt install -y oracle-java8-installer

RUN umake android --accept-license
