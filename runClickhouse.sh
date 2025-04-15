docker run  -d \
    --user "${UID}:${GID}" \
    -p "127.0.0.1:9000:9000" \
    -p "127.0.0.1:8123:8123" \
    -v "$PWD/data/ch_data:/var/lib/clickhouse/" \
    -v "$PWD/data/ch_logs:/var/log/clickhouse-server/" \
    -v "$PWD/data/ch_configs/users.d:/etc/clickhouse-server/users.d/" \
    -v "$PWD/data/ch_configs/config.d:/etc/clickhouse-server/config.d/" \
    --name clickhouse-server --ulimit nofile=262144:262144 clickhouse   

    #--net=host \

    #-v "$PWD/data/ch_configs/users.xml:/etc/clickhouse-server/users.xml" \
