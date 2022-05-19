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

# createdb meu_banco
# psql
# CREATE USER apirest_user WITH ENCRYPTED PASSWORD '12apirest123usertU';
# grant all privileges on database apirest to apirest_user;

docker pull didox/java_jwt

export USER='apirest_user'
export PASSWORD='12apirest123usertU'
export DATABASE_URL='postgresql://192.168.0.21:5432/apirest?createDatabaseIfNotExist=true&sslmode=disable&useTimezone=true&serverTimezone=UTC'

docker rm java_jwt

docker run -it -e USER -e PASSWORD -e DATABASE_URL  -p 8080:8080 --name java_jwt didox/java_jwt

docker logs java_jwt -f
