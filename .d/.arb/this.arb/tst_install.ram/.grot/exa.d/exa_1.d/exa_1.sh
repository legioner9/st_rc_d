#!/bin/bash

sudo adduser sth -m -k /etc/skel/
sudo passwd sth

sudo userdel -r sth
