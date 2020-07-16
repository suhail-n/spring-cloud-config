# spring-cloud-config

## Steps

1. docker-compose up
2. Test message from repo is found with `curl --location --request GET 'http://localhost:8080/msg'`
3. update git repo message and `curl --location --request POST 'http://localhost:8080/actuator/refresh'` to update config
4. Test updated message from repo is found with `curl --location --request GET 'http://localhost:8080/msg'`
