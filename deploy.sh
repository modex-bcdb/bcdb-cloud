#!/bin/bash
#
# Copyright (C) 2019, Ingenium Blockchain Technologies - All Rights Reserved
#
# Unauthorized copying of this file, via any medium is strictly prohibited
# Proprietary and confidential
#
# --------------------------------------------------------------
# File: ansible.sh
# File Created: Friday, 29th April 2020 09:35:03
# Author: Avasiloae Gabriel (gabriel.avasiloae@modex.tech)
# --------------------------------------------------------------
#
# run: sudo ./deploy.sh
#
export USER=zeus
apt install -y docker.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
gpasswd -a $USER docker
newgrp docker
docker -v && docker-compose -v
