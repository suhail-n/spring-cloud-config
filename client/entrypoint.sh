#!/bin/sh

while ! nc -z configserver 8888 ; do
    echo "Waiting for upcoming Config Server"
    sleep 2
done

java -jar app.jar