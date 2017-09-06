#!/usr/bin/env bash
# This script will download the latest dump of whicever backup you want to wherever you call it from
# e.g. OJS SQL dumps
# e.g. ojs_uploads folder
# Sensitive information has been redacted

set -euo pipefail

dir="FULL_PATH_OF_PLACE_WHERE_SQL_DUMP_LAND_ON_THE_SERVER"
server=USERNAME@SERVER

scp $server:$dir/$(ssh $server "ls -t $dir | head -1") .
