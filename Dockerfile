FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install zip openssl curl
RUN apt-get -y install python-dev
RUN apt-get -y install python-pip
RUN pip install awscli
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs