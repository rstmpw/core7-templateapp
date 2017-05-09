sudo docker stop pgsql.rstm.app
sudo rm /vagrant/envdata/log/pgsql/*
sudo docker start pgsql.rstm.app

sudo docker stop php-fpm.rstm.app
sudo rm /vagrant/envdata/log/php-fpm/*
sudo docker cp /vagrant/environment/php/dev/fpmpool.conf php-fpm.rstm.app:/usr/local/etc/php-fpm.d/core7.conf
sudo docker start php-fpm.rstm.app

sudo docker stop nginx.rstm.app
sudo rm /vagrant/envdata/log/nginx/*
sudo docker cp /vagrant/environment/nginx/dev/vhost.conf nginx.rstm.app:/etc/nginx/conf.d/core7.conf
sudo docker start nginx.rstm.app