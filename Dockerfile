# Base system is the Raspian ARM image from Resin
FROM   resin/rpi-raspbian

MAINTAINER Chris Myers <docker@chrisandjo.com>

VOLUME ["/config"]

# Add dynamic dns script
ADD noip.sh /root/noip/noip.sh
RUN chmod +x /root/noip/noip.sh

# Create template config file
ADD noip.conf /root/noip/noip.conf

CMD /root/noip/noip.sh
