# Laravel Docker

**Initial setup**
1. Create new application
```
$ curl -s "https://raw.githubusercontent.com/apargcom/laravel-docker/main/init.sh" | bash -s example-app
```
4. Update _.env_ files in both _root_ and _src_ folders
3. Run docker containers
```
$ cd example-app

$ docker compose up
```
4. Open application via _http://localhost_

**Fix permission**
```
$ sudo chown -R $USER:$USER .
```
**Other services**
- phpMyAdmin URL - _http://localhost:8080_
- Redis Commander - _http://localhost:8081_