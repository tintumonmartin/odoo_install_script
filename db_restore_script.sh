#!/usr/bin/env bash

S_LOCATION="/home/ubuntu/workspace/dump_zip/"
D_LOCATION="/home/ubuntu/other_workspace/"


SERVER=""
USER_SERVER="ubuntu@$SERVER"
PASSWORD=''
DB_NAME='test_academic_latest_2019_09_11'

unzip_dump() {
cd $S_LOCATION
rm -rf dump.sql filestore manifest.json
unzip *.zip
echo "-- Script completed --"
}

update_postgres_v9(){
sudo su postgres
echo "-- Postgresql version 9.3 with port 5432"
psql -p 5432  $DB_NAME < /home/ubuntu/workspace/dump_zip/dump.sql
}

update_postgres_v11(){
sudo su postgres
echo "-- Postgresql version 11 with port 5433"
psql -p 5433 $DB_NAME < /home/ubuntu/workspace/dump_zip/dump.sql
}
usage(){
cat <<EOF
    usage: $0 options
    OPTIONS:
        -u    unzip db dump
        -p    restore dump into postgres v9
        -r    restore dump into postgres v11
    Eg:
       sh <file-name> -u
EOF
}
if [ "$#" -eq 0 ]
then
    usage
    exit 1
else
    while getopts “upr” OPTIONS
    do case $OPTIONS in
           u)   echo "Unzip dump"
                unzip_dump
                ;;
           p)   echo "Restore dump into postgres"
                update_postgres_v9
                ;;
           r)   echo "Restore dump into postgres"
                update_postgres_v11
                ;;
           *)   usage
                exit
                ;;
        esac
    done
fi
