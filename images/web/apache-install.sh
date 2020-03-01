#!/bin/bash
yum -y install httpd

mkdir /etc/httpd/vhosts

echo "NameVirtualHost *:80" >> /etc/httpd/conf/httpd.conf
echo "NameVirtualHost *:443" >> /etc/httpd/conf/httpd.conf
echo "IncludeOptional vhosts/*.conf" >> /etc/httpd/conf/httpd.conf