#!/usr/bin/env bash

#S_LOCATION="/home/ubuntu/other_workspace/nConnect/"
S_LOCATION="/home/ubuntu/workspace/dump_zip/"
#S_LOCATION="/home/ubuntu/nConnect_backup/"
D_LOCATION="/home/ubuntu/other_workspace/nConnect_v11/"


SERVER=""
USER_SERVER="ubuntu@$SERVER"
PASSWORD=''

unzip_dump() {
cd $S_LOCATION
#rm -rf dump.sql filestore manifest.json
unzip *.zip
echo "-- Script completed --"
}

update_postgres(){
sudo su postgres
psql devchettinad_oct_4 < /home/ubuntu/workspace/dump_zip/dump.sql
#    cat <<EOF
#    Enter Commit message:
#EOF
#    git commit -am "Updated with new code"
#    git push
}
usage(){
cat <<EOF
    usage: $0 options
    OPTIONS:
        -u    unzip db dump
        -r    restore dump into postgres
    Eg:
       sh <file-name> -u
EOF
}
if [ "$#" -eq 0 ]
then
    usage
    exit 1
else
    while getopts “ur” OPTIONS
    do case $OPTIONS in
           u)   echo "Unzip dump"
                unzip_dump
                ;;
           r)   echo "Restore dump into postgres"
                update_postgres
                ;;
           *)   usage
                exit
                ;;
        esac
    done
fi
