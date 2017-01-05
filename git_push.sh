#! /bin/bash

if [ $# != 1 ]; 
then
    echo "Usage: git_push.sh [commit_string]"
else
    git add .
    git commit -m $0
    git push origin master
fi
