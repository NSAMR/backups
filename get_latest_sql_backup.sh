#!/usr/bin/env bash
# This script will download the latest dump of the SQL database to wherever you call it from
# Sensitive information has been redacted and should be replaced with our details

set -euo pipefail

dir="PLACE WHERE THE BACKUP SQL DUMPS LAND ON THE SERVER"
server=USERNAME@SERVER

scp $server:$dir/$(ssh $server "ls -t $dir | head -1") .
