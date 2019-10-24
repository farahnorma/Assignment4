#!/bin/bash

function create_file() {
touch rds-message.txt
nc -vz ecotech-db1.czflndyb3zpc.us-east-1.rds.amazonaws.com 3306>>rds-message.txt

touch ecoweb1-identity.json
curl -w "\n" http://169.254.169.254/latest/dynamic/instance-identity/document/>$
}


function version_number() {
echo "0.1.0"
}


function no_arg() {
echo "Usage: -c, --create, -v, --version"
}


case $1 in
        -c|--create)
                create_file
                ;;
        -v|--version)
                version_number
                ;;
        '')
                no_arg
                ;;

esac
