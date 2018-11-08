FROM ubuntu:18.10

ENV ANDROID_HOME=/usr/lib/android-sdk
ENV PATH=$PATH:$ANDROID_HOME/tools
ENV PATH=$PATH:$ANDROID_HOME/platform-tools

RUN apt update \
	&& apt upgrade -y \
	&& apt install -y software-properties-common curl

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
	&& apt install -y nodejs \
	&& npm i -g react-native-cli yarn

RUN add-apt-repository -y ppa:openjdk-r/ppa \
	&& apt update \
	&& apt install -y openjdk-8-jdk \
	&& apt install -y gcc-multilib lib32z1 lib32stdc++6

COPY ./sdk-tools-linux-4333796/* $ANDROID_HOME

RUN yes | $ANDROID_HOME/tools/bin/sdkmanager  "platform-tools" "platforms;android-27" "build-tools;27.0.3"

WORKDIR /usr/src
