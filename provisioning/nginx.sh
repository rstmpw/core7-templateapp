sudo docker stop nginx.rstm.app
sudo docker rm nginx.rstm.app
sudo docker rmi rstmpw/nginx
bash <(curl -Ls https://raw.githubusercontent.com/rstmpw/docker/master/dist/nginx/build.sh)

sudo docker run -d \
    --name nginx.rstm.app \
    --net docker-rstm-bridge0 \
    -p 80:80 \
    -p 443:443 \
    -v /vagrant/environment/nginx/dev/vhost.conf:/etc/nginx/conf.d/core7.conf:ro \
    -v /vagrant/app:/srv/core7.rstm.app/app:ro \
    -v /vagrant/appdata/public:/srv/core7.rstm.app/appdata/public:ro \
    -v /vagrant/appdata/private:/srv/core7.rstm.app/appdata/private:ro \
    -v /vagrant/envdata/log/nginx:/var/log/nginx \
    rstmpw/nginx