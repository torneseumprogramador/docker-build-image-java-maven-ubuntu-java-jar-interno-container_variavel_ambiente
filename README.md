```shell
docker run -d -e USER -e PASSWORD -e DATABASE_URL  -p 8080:8080 --name java-db didox/java-db-aula-ilab

docker run -it -p 8080:8080 --name java-db didox/java-db-aula-ilab

```