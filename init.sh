#!/bin/bash

mkdir $1
cd $1

wget https://github.com/apargcom/laravel-docker/archive/main.zip
unzip main.zip
mv laravel-docker-main/* laravel-docker-main/.[!.]* .
rm -rf laravel-docker-main/ main.zip

docker run --rm -v $(pwd):/app composer create-project laravel/laravel src

cp .env.example .env

sed -i -e '/^\/src$/d' .gitignore
