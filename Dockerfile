FROM ebspace/armhf-apache-php
COPY sources.list /etc/apt/sources.list
COPY raspi.list /etc/apt/sources.list.d/raspi.list
RUN apt-get update && \
    apt-get --force-yes -y install vim || true

