#!/bin/bash
service salt-master restart
salt-key --accept-all -y
cp *.sls /srv/salt/.
cp *.txt /srv/salt/.
salt '*' state.highstate
