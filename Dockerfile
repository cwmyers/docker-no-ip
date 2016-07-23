# Base system is the Raspian ARM image from Resin
FROM   resin/rpi-raspbian

# Make sure we don't get notifications we can't answer during building.
ENV    DEBIAN_FRONTEND noninteractive

MAINTAINER Chris Myers <docker@chrisandjo.com>

VOLUME ["/config"]

# Add dynamic dns script
ADD noip.sh /root/noip/noip.sh
RUN chmod +x /root/noip/noip.sh

# Create template config file
ADD noip.conf /root/noip/noip.conf

# Get system up to date to start with.
RUN    apt-get --yes update; apt-get --yes upgrade; apt-get --yes install software-properties-common

RUN    apt-get --yes install curl; apt-get clean

CMD /root/noip/noip.sh
