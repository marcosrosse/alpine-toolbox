#!/bin/sh

# Setup the user and ssh
adduser -h /home/runit -s /bin/sh -D runit; echo -n 'runit:runit' | chpasswd; ssh-keygen -A