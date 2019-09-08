#!/bin/sh

cd /srv/cod4

printf "fixing permissons..."
chown -R cod4 .
chmod 700 .
chmod -R 400 ./*
chmod 500 ./entrypoint.sh ./cod4_lnxded
chmod -R 700 ./main ./mods

printf " #########################################\n"
printf " ######### COD4 Dedicated Server #########\n"
printf " #########################################\n\n"

printf "used arguments: $@\n\n"

/srv/cod4/cod4_lnxded "$@"

status=$?

printf " Exited with status $status\n"
printf " #########################################\n"
