# run apache kafka
docker compose up --detach

# Run mongodb
docker run -it \
    --name mongo-container \
    -p 27017:27017 \
    --network mydockernetwork \
    --restart always \
    -v mongodb_data_container:/data/db mongo:latest \
    --detach

# Download Client Tools – Robo 3T:
# https://robomongo.org/download


# install mssql
docker run \
    --name sql-container \
    --network mydockernetwork \
    --restart always \
    -e 'ACCEPT_EULA=Y' \
    -e 'SA_PASSWORD=$tr0ngS@P@ssw0rd02' \
    -e 'MSSQL_PID=Express' \
    -p 1433:1433 mcr.microsoft.com/mssql/server:2017-latest-ubuntu \
    --detach
