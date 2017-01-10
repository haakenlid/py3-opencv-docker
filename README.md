# py3-opencv-docker
Docker image for running opencv3 and python 3.5

To run do this

    docker build . --tag opencv
    docker run -p 8888:8888 -ti -v notebooks:/var/notebooks opencv
