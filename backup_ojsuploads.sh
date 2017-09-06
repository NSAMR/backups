#!/usr/bin/env bash
# This script will drop .tgz of the ojs_uploads in the specified folder
# Sensitive details have been redacted

set -euo pipefail

tar -zcvf BACKUP_OJSUPLOADS.$(date +"%Y-%m-%d-%H-%M").nsamr.bak.sql.tgz FULL_PATH_TO_OJS_UPLOADS_FOLDER
