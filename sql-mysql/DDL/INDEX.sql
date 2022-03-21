-- https://dev.mysql.com/doc/refman/8.0/en/create-index.html
CREATE INDEX UK_ORDER_000_ORDER_NBR ON T_ORDER_000(ORDER_NBR);

CREATE UNIQUE INDEX IDX_ORDER_000_CDATE ON T_ORDER_000(CDATE);

CREATE FULLTEXT INDEX IDX_ORDER_000_CDATE ON T_ORDER_000(CDATE);

CREATE SPATIAL INDEX IDX_ORDER_000_CDATE ON T_ORDER_000(CDATE);