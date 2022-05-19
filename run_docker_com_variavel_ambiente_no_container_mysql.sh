# telnet 192.168.0.21 3306 # faça o teste do telnet antes
# deu erro no telnet, faça os seguintes passos
# 0 - faça o kill do seu postgresql
#     mysql.server stop
# 1 - localizar arquivo my.cnf
#     find /  my.cnf
# 2 - altere o arquivo my.cnf
#     sudo vim SEU_DIR_QUE_MOSTRA_NO_FIND/my.cnf
#     incluir o item abaixo
#        # bind-address            = 127.0.0.1
#        # bind-address            = 0.0.0.0
# 3 - inicie novamente o mysql
#     mysql.server start

docker pull didox/crud-java-login

export USER='root'
export PASSWORD='root'
export DATABASE_URL='mysql://192.168.0.21:5432/apirest?createDatabaseIfNotExist=true&sslmode=disable&useTimezone=true&serverTimezone=UTC'

docker run -it -e USER -e PASSWORD -e DATABASE_URL  -p 8080:8080 --name crud-java-login didox/crud-java-login

docker logs crud-java-login -f
