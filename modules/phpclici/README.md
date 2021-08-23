# Образ docker/ci/phpclici #

## Зачем нужен ##

использовать в пайплайне для реквестов

## Что есть в этом образе ##

* пользователь для работы с gitlab-ом
* php 7.2/7.4
* git
* composer
* deployer
* humbugbox

## Другие примеры ##

Используется как пример образа php-cli, за подробностями можно посмотреть в модуле [internal/phpversion 7.4](https://gitlab.urir.ifmo.ru/internal/phpversion/-/blob/master/modules/server-7-4/docker-compose.yml#L5)
