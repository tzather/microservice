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
