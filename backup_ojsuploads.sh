#!/usr/bin/env bash
set -euo pipefail

tar -zcvf BACKUP_OJSUPLOADS.$(date +"%Y-%m-%d-%H-%M").nsamr.bak.sql.tgz /home/nsamr/www/ojs_uploads/journals
