#!/usr/bin/env bash
set -euo pipefail

mysqldump --host mysql-55.int.mythic-beasts.com -u nsamr -pPASSWORD_GOES_HERE nsamr | gzip > /home/nsamr/backups/BACKUP.$(date +"%Y-%m-%d-%H-%M").nsamr.bak.sql.gz
