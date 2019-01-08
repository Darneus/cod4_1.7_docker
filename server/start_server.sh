#!/bin/sh

printf " #########################################\n"
printf " ######### COD4 Dedicated Server #########\n"
printf " #########################################\n\n"

printf "used arguments: $@\n\n"

cd /cod4
./cod4_lnxded "$@"

status=$?

printf " Exited with status $status\n"
printf " #########################################\n"
