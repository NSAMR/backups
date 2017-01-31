#!/usr/bin/env bash
set -euo pipefail

dir="/home/nsamr/backups"
server=nsamr@onza.mythic-beasts.com

scp $server:$dir/$(ssh $server "ls -t $dir | head -1") .
