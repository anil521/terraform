#!/bin/bash
yum install httpd -y
service httpd start
chkconfig httpd on
echo "<h1> ANIL OWN WEBSER </h1>" > /var/www/html/index.html
