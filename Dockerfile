FROM python:3.5
MAINTAINER haakenlid
WORKDIR /
RUN   apt-get update && \
      apt-get install -y \
      build-essential \
      cmake \
      libtbb2 \
      libtbb-dev \
      libjpeg-dev \
      libpng-dev \
      libjasper-dev \
      libtiff-dev

RUN   pip install numpy
COPY  makeopencv.sh ./
RUN   ./makeopencv.sh
