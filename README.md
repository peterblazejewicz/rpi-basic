# rpi-basic

Docker image derived from resin/rpi-raspbian for use on Raspberry Pi devices. Comes with Jessie distribution and Python 3 installation including PIP and GPIO suppport

## Example use

Here is sample on how to run examples built by Pimoroni for Blinkt pHAT:

```bash
git clone https://github.com/pimoroni/blinkt.git
cd blinkt
```

```Dockerfile
# pre-built image for rpi
FROM blazejewicz/rpi-basic

# dependencies
# Blinkt
RUN apt-get install -qy python3-blinkt

# app code dependecies

RUN pip3 install request

WORKDIR /root/
COPY examples   examples
WORKDIR /root/examples/
# install app specific  requirements (can be cached already)
RUN pip3 install -r requirements.txt
# code
CMD ["python3", "cheerlights.py"]
```

## Author

@peterblazejewicz
