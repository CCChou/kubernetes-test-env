#!/usr/bin/env bash

sudo docker run -d --restart=unless-stopped -p 80:80 -p 443:443 rancher/rancher:v2.3.5