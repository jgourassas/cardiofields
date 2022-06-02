SQL COMMANDS

REINDEX DATABASE cardiofields ;

#########################
THIS IS PHP CODE
public function sql_description_ranked($field,$text,$limit){
  $sql = "SELECT query_to_xml (' SELECT *, 
            ts_headline(long_description"
            . ", query) AS bold_text, 
               ts_rank_cd("
            . $field
            . ", query, 32)  AS rank FROM icd10cm,
               plainto_tsquery("
            . "''$text''"
            . " ) "
            . " AS query WHERE "
            . $field
            . "@@ query ORDER BY rank DESC LIMIT "
            . $limit
            . "'"
            . ",true,false,"
            . "'');";



  return $sql;
}
##########################################
#####################
 create table imagetest (
    mime_type character varying(50),
    mime_size character varying(50),
    radlex_id character varying(30),
    dicom_reference varchar(64)
    dicom_size varchar(250)
    data_responsible varchar(250)
    data_owner  varchar(250)


-------------for definitions Fields----------------------
BEGIN;
ALTER TABLE definitions ADD column  notes_tsv tsvector;

--drop trigger tsv_definitions_notes  on  definitions;

 CREATE TRIGGER tsv_definitions_notes
    BEFORE INSERT OR UPDATE ON definitions
    FOR EACH ROW
    EXECUTE PROCEDURE tsvector_update_trigger('notes_tsv', 
    'pg_catalog.english', 'notes');

CREATE INDEX definitions_notes_tsv_idx   ON definitions  
USING gin (to_tsvector('english'::regconfig, notes_tsv::text));
COMMIT;

-------------------------------------
------------for definitions Fields INDEXING----------------------
BEGIN;
ALTER TABLE definitions ADD column  indexing_tsv tsvector;

--drop trigger tsv_definitions_notes  on  definitions;

 CREATE TRIGGER tsv_definitions_indexing
    BEFORE INSERT OR UPDATE ON definitions
    FOR EACH ROW
    EXECUTE PROCEDURE tsvector_update_trigger('indexing_tsv', 
    'pg_catalog.english', 'indexing');

CREATE INDEX definitions_indexing_tsv_idx   ON definitions  
USING gin (to_tsvector('english'::regconfig, indexing_tsv::text));
COMMIT;

-------------------------------------


update definitions set table_name = trim(table_name);
update definitions set target_value = trim(target_value);
update definitions set coding_instructions = trim(coding_instructions);

SELECT 'REINDEX TABLE CONCURRENTLY ' || quote_ident(relname) || ' /*' || pg_size_pretty(pg_total_relation_size(C.oid)) || '*/;'
FROM pg_class C
LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
WHERE nspname = 'public'
  AND C.relkind = 'r'
  AND nspname !~ '^pg_toast'
ORDER BY pg_total_relation_size(C.oid) ASC;

---------------------

--find out double records-------------
----------------
SELECT
    id, 
    COUNT(id)
FROM
    definitions
GROUP BY
    id
HAVING
    COUNT( id )> 1
ORDER BY
    id;


------------ fixing primary key---------this seems to works-------
-- Login to psql and run the following
-- What is the result?
SELECT MAX(id) FROM definitions;

-- Then run...
-- This should be higher than the last result.
SELECT nextval('definitions_id_seq');

-- If it's not higher... run this to try and fix it. (run a quick pg_dump first...)
SELECT setval('definitions_id_seq', (SELECT MAX(id) FROM definitions)+1);
