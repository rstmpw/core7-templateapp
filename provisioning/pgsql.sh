sudo docker stop pgsql.rstm.app
sudo docker rm pgsql.rstm.app
sudo docker rmi rstmpw/pgsql96
bash <(curl -Ls https://raw.githubusercontent.com/rstmpw/docker/master/dist/pgsql96/build.sh)

sudo docker run -d \
    --name pgsql.rstm.app \
    --net docker-rstm-bridge0 \
    -p 5432:5432 \
    -e POSTGRES_PASSWORD=vagrant \
    -e POSTGRES_INITDB_ARGS="--locale=ru_RU.UTF-8 --lc-collate=C --lc-ctype=ru_RU.UTF-8 --lc-messages=en_US.UTF-8 --encoding=UTF-8" \
    -v /vagrant/envdata/log/pgsql:/var/log/pgsql \
    rstmpw/pgsql96