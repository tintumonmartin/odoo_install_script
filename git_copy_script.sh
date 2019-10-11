#!/usr/bin/env bash

S_LOCATION="/home/tintumon/workspace/source/"
D_LOCATION="/home/tintumon/other_workspace/destination/"


SERVER=""
USER_SERVER="ubuntu@$SERVER"
PASSWORD=''

copy_code() {
cd $S_LOCATION
echo "Update status ${S_LOCATION}:"
git branch
#git fetch
#git pull
git stash save
cd $D_LOCATION
echo "Update status ${D_LOCATION}:"
#git fetch
#git pull
echo "Copying file from '${S_LOCATION}' to '${D_LOCATION}'"
cp -r $S_LOCATION* $D_LOCATION
cd $S_LOCATION
echo "cd ${D_LOCATION}"
}

update_pappaya(){
    cd $D_LOCATION
    git add .
    cat <<EOF
    Enter Commit message:
EOF
#    git commit -am "Updated with new code"
#    git push
}
usage(){
cat <<EOF
    usage: $0 options
    OPTIONS:
        -c    Fetch, Pull from 'Dev' and Copy into 'Code'
        -u    Add, Commit and push into 'Code'
    Eg:
       sh <file-name> -c
EOF
}
if [ "$#" -eq 0 ]
then
    usage
    exit 1
else
    while getopts “c” OPTIONS
    do case $OPTIONS in
           c)   echo "Fetch, Pull and Copy"
                copy_code
                ;;
           u)   echo "Updating Pappaya"
                update_pappaya
                ;;
           *)   usage
                exit
                ;;
        esac
    done
fi
