# ci (deprecated) #

**переместить исходники нужного образа в папку modules**

Приватные docker образы

* instantclient - коллекция .so файлов для расширения php OCI8 
* phpbuild (php-cli) - монолитный образ php для консольных приложений, в том числе для ci
* phpfpm - монолитный образ php для веб приложений
* humbugbox
* plantuml
* psalm

## use docker private images ##

1. create [personal token](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html) with scope `read_registry`
2. login

```bash
docker login gitlab.urir.ifmo.ru:5050 -u <username> -p <token>
```
3. use image

```bash
cd ${KRONBARS_PATH} \
&& docker run -ti --rm -v "${PWD}:/app" gitlab.urir.ifmo.ru:5050/ci/psalm:latest
```

4. logout

```bash
docker logout
```
