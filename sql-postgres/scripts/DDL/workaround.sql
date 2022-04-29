------------------------------
----- compliance with oracle
------------------------------
CREATE OR REPLACE VIEW dual AS
SELECT NULL::"unknown"
WHERE 1 = 1;

-- ALTER TABLE dual OWNER TO public;
GRANT ALL ON dual TO scoring, advisor, workflow;
GRANT SELECT ON dual TO public;
