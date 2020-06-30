#!/usr/bin/env bash

cd docker

source ./docker/env/dev/VIRTUAL_HOST.env

DOCKER_NAME=${VIRTUAL_HOST//./_}

# имя функции для запуска
FUNCTION=
arg=($@)
ipDockerMachine=

if [ ! -z $1 ]; then
    FUNCTION="$1"
fi

ip='172.18.0.1'
platform='unknown'
unmaster=`uname`

if [[ $unmaster == 'Linux' ]]; then
   platform='linux'
elif [[ $unmaster == 'MINGW64_NT-10.0' ]]; then
    platform='windows'
elif [[ $unmaster == 'Darwin' ]]; then
   platform='mac'
fi

get-ip() {
#ip="$(ifconfig | grep -E -o "(\d+)\.(\d+)\.(\d+)\.(\d+)" | grep -v 127.0.0.1 -m 1)"
    if [[ $platform == 'mac' ]]; then
        ip="$(hostname)"
    elif [[ $platform == 'linux' ]]; then
        ip="$(hostname)"
    elif [[ $platform == 'windows' ]]; then
        ip='host.docker.internal'
    fi
}

get-ip

show-help() {
    echo 'Functions:'
    echo './app.sh [dm-build] [dm-stop] [dm-restart] [dm-start] [dm-rm]'
    echo 'ATRIBUTS dm-build:'
    echo 'Driver - "virtualbox", "parallels" or other.'
    echo 'Shared folder - "D:\\:d" or other'
    echo 'Example to Windows - ./app.sh dm-build "virtualbox" "D:\\:d"'
    echo 'Example to MacOS - ./app.sh dm-build "parallels"'
}

start() {
    echo "Инициализируем xdebug используя локальный ip адрес или host: $ip"
    init-xdebug
    echo 'Остановка всех докер контейнеров'
    docker stop $(docker ps -a -q)
    echo ''
    echo 'Запуск докер контейнеров'
    docker-compose up -d
    echo ''
    open-host
}

stop() {
    echo 'Остановка всех докер контейнеров'
    docker stop $(docker ps -a -q)
}

restart() {
    start
}

init-xdebug() {
    > ./docker/env/dev/XDEBUG_CONFIG.env
    echo "XDEBUG_CONFIG=remote_host=$ip" >> ./docker/env/dev/XDEBUG_CONFIG.env
}

on-xdebug() {
    docker cp ./docker/php/config/xdebug.ini docker_"$DOCKER_NAME"_php_1:/usr/local/etc/php/conf.d/xdebug.ini
    restart
}

off-xdebug() {
    docker cp ./docker/php/config/off-xdebug.ini docker_"$DOCKER_NAME"_php_1:/usr/local/etc/php/conf.d/xdebug.ini
    restart
}

build() {
    echo "Инициализируем xdebug используя локальный ip адрес или host: $ip"
    init-xdebug
    echo 'Собираем контейнеры'
    docker-compose build --no-cache
}

build-php() {
    docker-compose build --no-cache "$DOCKER_NAME"_php
}

update-php-ini() {
    docker cp ./docker/php/config/php.ini docker_"$DOCKER_NAME"_php_1:/usr/local/etc/php/php.ini
}

restore-local-db() {
    cd ..
    docker exec -i docker_"$DOCKER_NAME"_db_1 mysql -u root --password=igovet -D "$DOCKER_NAME" -e "DROP DATABASE "$DOCKER_NAME""
    docker exec -i docker_"$DOCKER_NAME"_db_1 mysql -u root --password=igovet -e "CREATE DATABASE "$DOCKER_NAME" CHARACTER SET utf8 COLLATE utf8_general_ci"
    cat "$DOCKER_NAME".sql | docker exec -i docker_"$DOCKER_NAME"_db_1 mysql -u root --password=igovet "$DOCKER_NAME"
    echo 'import complete'
}

backup-local-db() {
    cd ..
    docker exec -i docker_"$DOCKER_NAME"_db_1 /usr/bin/mysqldump -u root --password=igovet "$DOCKER_NAME" > "$DOCKER_NAME".sql
    echo 'create backup complete'
}

open-host() {
    ipDockerMachine=$(docker-machine ip $VIRTUAL_HOST)

    if [ ! -z $ipDockerMachine ]; then
        echo "Перейти к хосту: http://$ipDockerMachine"
    fi
}

dm-build() {
    commandBuild="docker-machine create "

    if [ ${arg[1]} ]; then
        commandBuild+="--driver=${arg[1]} "
    fi

    if [ ${arg[2]} ]; then
        commandBuild+="--virtualbox-share-folder=${arg[2]} "
    fi

    commandBuild+=$VIRTUAL_HOST
    $commandBuild

    docker-machine env $VIRTUAL_HOST
    eval "$(docker-machine env $VIRTUAL_HOST)"
    echo 'Собираем проект'
    build
    start
}

dm-build-php() {
    docker-machine env $VIRTUAL_HOST
    eval "$(docker-machine env $VIRTUAL_HOST)"
    docker-compose build --no-cache "$DOCKER_NAME"_php
    start
}

dm-build-nginx() {
    docker-machine env $VIRTUAL_HOST
    eval "$(docker-machine env $VIRTUAL_HOST)"
    docker-compose build --no-cache "$DOCKER_NAME"_nginx
    start
}

dm-ls() {
    docker-machine ls
}

dm-start() {
    docker-machine start $VIRTUAL_HOST
    docker-machine env $VIRTUAL_HOST
#    docker-machine regenerate-certs $VIRTUAL_HOST
    eval "$(docker-machine env $VIRTUAL_HOST)"
    start
}

dm-stop() {
    docker-machine stop $VIRTUAL_HOST
}

dm-restart() {
    dm-stop
    dm-start
}

dm-rm() {
    dm-stop
    docker-machine rm $VIRTUAL_HOST
}

dm-ssh() {
    docker-machine ssh $VIRTUAL_HOST
}

case "$1" in
-h|--help)
    show-help
    ;;
*)
    if [ ! -z $(type -t $FUNCTION | grep function) ]; then
        $1
    else
        show-help
    fi
esac
