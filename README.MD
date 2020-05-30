#Управлению проектом

###Необходимые программы на компьютере с операционной системой macOS
- Программа https://www.parallels.com/ru/ для виртуализации Docker окружения через Docker Machine.
- Docker Toolbox https://docs.docker.com/toolbox/toolbox_install_mac
- Git https://git-scm.com/download/mac
- Программа brew
###Необходимые программы на компьютере с операционной системой Windows
- Docker Machine https://docs.docker.com/machine/install-machine/
- VirtualBox https://www.virtualbox.org/
- Git Bash https://gitforwindows.org/
- Docker for Windows https://docs.docker.com/docker-for-windows/install/

###Первая установка проекта
В первую очередь необходимо установить проект из git репозитория.  
Для этого необходимо зайти в папку где будет размещен проект и выполнить команду.
```bash
git clone git@gitlab.com:igor-vetrov-dev-team/helihop.git helihop
cd helihop
git checkout develop
```
После выполнения этих команд, на компьютере будет создан проект в папке cotd.local и будет использоваться ветка develop.

Теперь необходимо запустить установку docker виртуализации и сконфигурировать проект, для этого выполняем следующие команды.
Для MacOS
```bash
./app.sh dm-build "parallels"
```
Для Windows
```bash
./app.sh dm-build "virtualbox" "D:\\:d"
```
###Настройка laravel
* Зайти в админер и создать бд `helihop_local` кодировка `utf8_general_ci`
* Зайти в директорию `/app` и установить зависимости composer
```
docker exec -it docker_helihop_local_php_1 composer install
```
* Выполнить настройку подключения к mysql в файле `/app/.env`
* Выполнить по очереди команды
```
docker exec -it docker_helihop_local_php_1 php artisan migrate
```

###Остановка Docker окружения
Если с проектом закончена работа, необходимо остановить Docker окружения, чтобы компьютер не использовал лишние ресурсы и не тормозил во время других необходимых операциях.  
Необходимо выполнить команду.
```bash
./app.sh dm-stop
```

###Повторный запуск Docker окружения
Когда выполнен пункт «Первая установка проекта», для повторного запуска проекта необходимо выполнить следующие команды, находясь в корне папки с проектом.
```bash
./app.sh dm-start
```