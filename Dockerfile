FROM python:3.5
MAINTAINER haakenlid
WORKDIR /
RUN   apt-get update && \
      apt-get install -y \
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
COPY  makeopencv.sh /
RUN   /makeopencv.sh
RUN   pip install jupyter
EXPOSE 8888
VOLUME /var/notebooks
COPY   run_jupyter.sh /
CMD    /run_jupyter.sh
