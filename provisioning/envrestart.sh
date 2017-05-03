sudo docker stop nginx.rstm.app
sudo docker stop php-fpm.rstm.app

sudo rm /vagrant/envdata/log/nginx/*
sudo rm /vagrant/envdata/log/php-fpm/*

sudo docker start php-fpm.rstm.app
sudo docker start nginx.rstm.app