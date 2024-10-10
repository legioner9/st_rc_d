#!/bin/bash

_is_yes "gig sth?" && {
sudo adduser sth -m -k /home/st/.skel.d
sudo adduser sth -m -k /etc/skel/
sudo passwd sth
# sudo cp -r /home/st/.skel.d/.ssh /home/sth
# sudo cp /home/st/.skel.d/.bashrc /home/sth
# su - sth
}

_is_yes "del sth?" && {
sudo userdel -r sth
}