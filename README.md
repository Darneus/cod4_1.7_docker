# Call Of Duty 4 v1.7 ded server in Docker

## Setup

1) Create the directories ./config, ./main, ./mods, ./usermaps and ./zone

2) From your COD4 v1.7 installation directory copy main/*.iwd files to ./main and all from zone/* to ./zone
```sh
cp /mycod4path/main/*.iwd ./main/
cp /mycod4path/zone/* ./zone/
```

3) Run the container
```sh
docker run -d --name=cod4 -p 28960:28960/udp \
    -v $(pwd)/main:/srv/cod4/main -v $(pwd)/zone:/srv/cod4/zone:ro \
    -v $(pwd)/mods:/srv/cod4/mods -v $(pwd)/usermaps:/srv/cod4/usermaps:ro \
    darneus/cod4_v1.7_server +map mp_shipment
```

You can also use [docker-compose.yml](https://github.com/Darneus/cod4_1.7_docker/blob/master/docker-compose.yml) file
