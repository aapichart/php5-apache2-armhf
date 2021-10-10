FROM hbaltz/rpi-lapp:latest
ENV no_proxy="localhost,127.0.0.1"
RUN mkdir -p /etc/app/sources.list.d/
COPY sources.list /etc/apt/sources.list
COPY raspi.list /etc/apt/sources.list.d/raspi.list
RUN apt-get update && \
    apt-get --force-yes -y install vim || true
RUN apt-get --force-yes -y install iputils-ping || true
