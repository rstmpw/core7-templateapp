sudo docker stop php-fpm.rstm.app
sudo docker rm php-fpm.rstm.app
sudo docker rmi rstmpw/php71-fpm
bash <(curl -Ls https://raw.githubusercontent.com/rstmpw/docker/master/dist/php71-fpm/build.sh)

sudo docker run -d \
    --name php-fpm.rstm.app \
    --net docker-rstm-bridge0 \
    -p 9100:9100 \
    -v /vagrant/app:/srv/core7.rstm.app/app:ro \
    -v /vagrant/appdata:/srv/core7.rstm.app/appdata \
    -v /vagrant/envdata/log/php-fpm:/var/log/php-fpm \
    rstmpw/php71-fpm