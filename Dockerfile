# this is the image we derive from
FROM resin/rpi-raspbian:jessie

# install Python 3 and tools
RUN apt-get update -qy
RUN apt-get install -qy python3
RUN apt-get install -qy python3-pip
RUN apt-get install -qy python3-rpi.gpio

# Cancel out any Entrypoint already set in the base image.
ENTRYPOINT []
