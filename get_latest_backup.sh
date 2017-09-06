#!/usr/bin/env bash
# This script will download the latest dump of whicever backup you want to wherever you call it from
# e.g. OJS SQL dumps
# e.g. ojs_uploads folder
# Sensitive information has been redacted and should be replaced with our details

set -euo pipefail

dir="PLACE WHERE THE BACKUP SQL DUMPS LAND ON THE SERVER"
server=USERNAME@SERVER

scp $server:$dir/$(ssh $server "ls -t $dir | head -1") .
