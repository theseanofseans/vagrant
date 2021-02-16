#!/bin/bash

# install git httpd files and then start httpd 
yum install -y git httpd httpd-dev httpd-tools
systemctl start httpd

