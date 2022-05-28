#!/bin/sh
rm *.sql
pg_dump -s cardiofields_dev > cardiofields_dev_schema.sql


pg_dump --attribute-inserts  --no-owner --data-only --no-privileges  -v cardiofields_dev -t definitions > definitions_data.sql 
pg_dump --attribute-inserts  --no-owner --data-only --no-privileges  -v cardiofields_dev -t defs_sentences >  defs_sentences_data.sql
pg_dump --attribute-inserts  --no-owner --data-only --no-privileges  -v cardiofields_dev -t defs_options >  defs_options_data.sql 
pg_dump --attribute-inserts  --no-owner --data-only --no-privileges  -v cardiofields_dev -t defs_codes >  defs_codes_data.sql 


pg_dump --attribute-inserts  --no-owner --data-only --no-privileges  -v cardiofields_dev -t opts_codes >  opts_codes_data.sql
pg_dump --attribute-inserts  --no-owner --data-only --no-privileges  -v cardiofields_dev -t opts_sentences >  opts_sentences_data.sql
pg_dump --attribute-inserts  --no-owner --data-only --no-privileges  -v cardiofields_dev -t defs_tables >  defs_tables_data.sql
pg_dump --attribute-inserts  --no-owner --data-only --no-privileges  -v cardiofields_dev -t languages >  languages_data.sql 
pg_dump --attribute-inserts  --no-owner --data-only --no-privileges  -v cardiofields_dev -t countries >  countries_data.sql 
cd ../

DATE=`date +%Y%m%d`
tar -cvf tables_backup.tar tables_backup
gzip -9 tables_backup.tar
mv tables_backup.tar.gz cardiofields_tables_backup-$DATE.tar.gz
rm ../tables_backup-*

mv cardiofields_tables_backup-$DATE.tar.gz ../


