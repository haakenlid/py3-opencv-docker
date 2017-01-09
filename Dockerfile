FROM python:3.5
MAINTAINER haakenlid
RUN apt update && \
      apt install -y \
      build-essential \
      cmake \
      wget \
      libtbb2 \
      libtbb-dev \
      libjpeg-dev \
      libpng-dev \
      libjasper-dev \
      libtiff-dev

RUN   pip install numpy
COPY ./makeopencv.sh /
WORKDIR /
RUN /makeopencv.sh

