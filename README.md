rpi-docker-no-ip
============

This is a simple Docker container for running the [No-IP](http://www.noip.com/) dynamic DNS update script for the Raspberry Pi (ARM architecture). It will keep your domain.ddns.net DNS alias up-to-date as your home IP changes. The script runs every 5 minutes.

This is based off https://github.com/coppit/docker-no-ip by [David Coppit](https://github.com/coppit)

Usage
-----

This docker image is available [here](https://index.docker.io/u/cwmyers/rpi-no-ip/).

Run:

`sudo docker run --name=noip -d -v /etc/localtime:/etc/localtime -v /config/dir/path:/config cwmyers/rpi-no-ip`

When run for the first time, a file named noip.conf will be created in the config dir, and the container will exit. Edit
this file, adding your username (email), password, and domains. Then rerun the command.

To check the status, run `docker logs noip`.
