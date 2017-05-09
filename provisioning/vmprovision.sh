/vagrant/provisioning/pgsql.sh
/vagrant/provisioning/php-fpm.sh
/vagrant/provisioning/core7-cli.sh
/vagrant/provisioning/nginx.sh

sudo docker run --rm -it \
    --net docker-rstm-bridge0 \
    -v /vagrant:/vagrant \
    rstmpw/core7-cli /vagrant/provisioning/internal/initdb.sh