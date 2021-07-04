#!/bin/sh -l

email=$1
password=$2
api_key=$3
project_name=$4

doprax-cli login --api-key $api_key --email $email --password $password
doprax-cli project pull $project_name
doprax-cli project deploy restart $project_name
