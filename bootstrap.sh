#!/usr/bin/env bash

sudo -s

# Update OS
apt-get -y update
apt-get -y upgrade

# Install Apache
apt-get -y install apache2

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

# Enable Apache Modules
a2enmod rewrite

# Restart Apache Server
service apache2 restart
