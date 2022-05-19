```shell
# ifconfig ou ipconfig para descobrir o seu numero de IP

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


# telnet 192.168.0.21 5432 # faça o teste do telnet antes
# deu erro no telnet, faça os seguintes passos
# 0 - faça o kill do seu postgresql
#     ps aux | grep postgres
#     sudo kill -9 [PID DO POSTGRE]
# 1 - localizar arquivo pg_hba.conf
#     find /  pg_hba.conf
# 2 - altere o arquivo pg_hba.conf
#     sudo vim SEU_DIR_QUE_MOSTRA_NO_FIND/pg_hba.conf
#     incluir o item abaixo
#        #host    all             all             127.0.0.1/32            trust
#        host    all             all             0.0.0.0/0               md5
# 3 - localizar arquivo postgresql.conf
#     find /  postgresql.conf
# 4 - altere o arquivo postgresql.conf
#     sudo vim SEU_DIR_QUE_MOSTRA_NO_FIND/postgresql.conf
#     incluir o item abaixo
#       listen_addresses = '*'		# what IP address(es) to listen on;
#        #listen_addresses = 'localhost'		# what IP address(es) to listen on;
# 5 - inicie novamente o postgresql
# postgres -D SEU_DIR_QUE_MOSTRA_NO_FIND

docker run -d -e USER -e PASSWORD -e DATABASE_URL  -p 8080:8080 --name java-db didox/java-db-aula-ilab

docker run -it -p 8080:8080 --name java-db didox/java-db-aula-ilab

```