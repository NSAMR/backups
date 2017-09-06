#!/usr/bin/env bash
# This script will drop an SQL dump of the OJS database in the specified folder
# Sensitive details have been redacted
set -euo pipefail

mysqldump --host SQLSERVERADDRESS -u USERNAME -pPASSWORD OJS_DBNAME | gzip > /home/nsamr/backups/BACKUP.$(date +"%Y-%m-%d-%H-%M").nsamr.bak.sql.gz
