------------------------------
----- all of objects are views. 
------------------------------
-- generate statement
select CONCAT('SELECT A.* FROM ', A.TABLE_SCHEMA, '.', A.TABLE_NAME, ' A;') as SQL_TXT 
from information_schema.TABLES A 
where A.TABLE_SCHEMA = 'sys' order by A.TABLE_NAME;


SELECT A.* FROM information_schema.KEY_COLUMN_USAGE A;
SELECT A.* FROM information_schema.KEYWORDS A;
SELECT A.* FROM information_schema.OPTIMIZER_TRACE A;
SELECT A.* FROM information_schema.PARAMETERS A;
SELECT A.* FROM information_schema.PARTITIONS A;
SELECT A.* FROM information_schema.PLUGINS A;
SELECT A.* FROM information_schema.PROCESSLIST A;
-- deprecated since , replaced by performance_schema.
SELECT A.* FROM information_schema.PROFILING A;
SELECT A.* FROM information_schema.REFERENTIAL_CONSTRAINTS A;
SELECT A.* FROM information_schema.RESOURCE_GROUPS A;
SELECT A.* FROM information_schema.ROUTINES A;
SELECT A.* FROM information_schema.SCHEMA_PRIVILEGES A;
SELECT A.* FROM information_schema.SCHEMATA A;
SELECT A.* FROM information_schema.SCHEMATA_EXTENSIONS A;
SELECT A.* FROM information_schema.ST_GEOMETRY_COLUMNS A;
SELECT A.* FROM information_schema.ST_SPATIAL_REFERENCE_SYSTEMS A;
SELECT A.* FROM information_schema.ST_UNITS_OF_MEASURE A;
SELECT A.* FROM information_schema.STATISTICS A;
SELECT A.* FROM information_schema.TABLE_CONSTRAINTS A;
SELECT A.* FROM information_schema.TABLE_CONSTRAINTS_EXTENSIONS A;
SELECT A.* FROM information_schema.TABLE_PRIVILEGES A;
SELECT A.* FROM information_schema.TABLES A;
SELECT A.* FROM information_schema.TABLES_EXTENSIONS A;
SELECT A.* FROM information_schema.TABLESPACES A;
SELECT A.* FROM information_schema.TABLESPACES_EXTENSIONS A;
SELECT A.* FROM information_schema.TRIGGERS A;
SELECT A.* FROM information_schema.USER_ATTRIBUTES A;
SELECT A.* FROM information_schema.USER_PRIVILEGES A;
SELECT A.* FROM information_schema.VIEW_ROUTINE_USAGE A;
SELECT A.* FROM information_schema.VIEW_TABLE_USAGE A;
SELECT A.* FROM information_schema.VIEWS A;
SELECT A.* FROM information_schema.COLUMN_PRIVILEGES A;
SELECT A.* FROM information_schema.COLUMN_STATISTICS A;
SELECT A.* FROM information_schema.COLUMNS A;
SELECT A.* FROM information_schema.COLUMNS_EXTENSIONS A;

-----------------------------------
----- priviledges and rbac
-----------------------------------
SELECT A.* FROM information_schema.ADMINISTRABLE_ROLE_AUTHORIZATIONS A;
SELECT A.* FROM information_schema.ROLE_COLUMN_GRANTS A;
SELECT A.* FROM information_schema.ROLE_ROUTINE_GRANTS A;
SELECT A.* FROM information_schema.ROLE_TABLE_GRANTS A;
SELECT A.* FROM information_schema.APPLICABLE_ROLES A;

SELECT A.* FROM information_schema.CHARACTER_SETS A;
SELECT A.* FROM information_schema.CHECK_CONSTRAINTS A;
SELECT A.* FROM information_schema.COLLATION_CHARACTER_SET_APPLICABILITY A;
SELECT A.* FROM information_schema.COLLATIONS A;
SELECT A.* FROM information_schema.ENABLED_ROLES A;
SELECT A.* FROM information_schema.ENGINES A;
SELECT A.* FROM information_schema.EVENTS A;
SELECT A.* FROM information_schema.FILES A;

------------------------------
----- relevant to INNODB. 
------------------------------
SELECT A.* FROM information_schema.INNODB_BUFFER_PAGE A;
SELECT A.* FROM information_schema.INNODB_BUFFER_PAGE_LRU A;
SELECT A.* FROM information_schema.INNODB_BUFFER_POOL_STATS A;
SELECT A.* FROM information_schema.INNODB_CACHED_INDEXES A;
SELECT A.* FROM information_schema.INNODB_CMP A;
SELECT A.* FROM information_schema.INNODB_CMP_PER_INDEX A;
SELECT A.* FROM information_schema.INNODB_CMP_PER_INDEX_RESET A;
SELECT A.* FROM information_schema.INNODB_CMP_RESET A;
SELECT A.* FROM information_schema.INNODB_CMPMEM A;
SELECT A.* FROM information_schema.INNODB_CMPMEM_RESET A;
SELECT A.* FROM information_schema.INNODB_COLUMNS A;
SELECT A.* FROM information_schema.INNODB_DATAFILES A;
SELECT A.* FROM information_schema.INNODB_FIELDS A;
SELECT A.* FROM information_schema.INNODB_FOREIGN A;
SELECT A.* FROM information_schema.INNODB_FOREIGN_COLS A;
SELECT A.* FROM information_schema.INNODB_FT_BEING_DELETED A;
SELECT A.* FROM information_schema.INNODB_FT_CONFIG A;
SELECT A.* FROM information_schema.INNODB_FT_DEFAULT_STOPWORD A;
SELECT A.* FROM information_schema.INNODB_FT_DELETED A;
SELECT A.* FROM information_schema.INNODB_FT_INDEX_CACHE A;
SELECT A.* FROM information_schema.INNODB_FT_INDEX_TABLE A;
SELECT A.* FROM information_schema.INNODB_INDEXES A;
SELECT A.* FROM information_schema.INNODB_METRICS A;
SELECT A.* FROM information_schema.INNODB_SESSION_TEMP_TABLESPACES A;
SELECT A.* FROM information_schema.INNODB_TABLES A;
SELECT A.* FROM information_schema.INNODB_TABLESPACES A;
SELECT A.* FROM information_schema.INNODB_TABLESPACES_BRIEF A;
SELECT A.* FROM information_schema.INNODB_TABLESTATS A;
SELECT A.* FROM information_schema.INNODB_TEMP_TABLE_INFO A;
SELECT A.* FROM information_schema.INNODB_TRX A;
SELECT A.* FROM information_schema.INNODB_VIRTUAL A;
