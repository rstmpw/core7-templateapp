sudo docker run --rm -it \
    --net docker-rstm-bridge0 \
    -v /vagrant:/vagrant \
    rstmpw/pgsql96 \
    psql -h pgsql.rstm.app -U postgres