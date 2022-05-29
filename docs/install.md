###INSTALL CARDIOFIELDS
1. ecto.create
2. in assets npm install
3. Insert as postgres user from table_backup/cardiofields_dev_schema.sql 
   with command (inside psql) \i 'your_dir/cardiofields_dev_schema.sql
4. Then Insert in postgres the sql files listed in cardiofields_restore_tables.sal

***Don't use mix ecto.migrate
  

