docker pull didox/crud-java-login

# telnet 192.168.0.21 5432 # faça o teste do telnet antes
export USER='danilo'
export PASSWORD=''
export DATABASE_URL='mysql://192.168.0.21:5432/apirest?createDatabaseIfNotExist=true&sslmode=disable&useTimezone=true&serverTimezone=UTC'

docker run -it -e USER -e PASSWORD -e DATABASE_URL  -p 8080:8080 --name crud-java-login didox/crud-java-login

docker logs crud-java-login -f
