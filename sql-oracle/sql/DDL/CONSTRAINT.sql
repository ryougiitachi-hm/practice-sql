------------------------------
----- add constraint
------------------------------
-- UNIQUE KEY
ALTER TABLE T_ORDER_XXX ADD CONSTRAINT UK_ORDER_XXX_COL UNIQUE (COL_NAME);

-- FOREIGN KEY
-- Just example, usually won't be applied like this.
ALTER TABLE T_ORDER_XXX ADD CONSTRAINT FK_ORDER_XXX_STATUS FOREIGN KEY (STATUS_ID) REFERENCES T_ORDER_STATUS_ID(ID);

-- CHECK
ALTER TABLE T_ORDER_XXX ADD CONSTRAINT CHK_ORDER_XXX_AMOUNT CHECK (AMOUNT > 0);

-- NOT NULL
ALTER TABLE T_ORDER_XXX ADD CONSTRAINT NN_ORDER_XXX_NBR ORDER_NBR NOT NULL;

------------------------------
----- drop constraint
------------------------------
-- release constraint
ALTER TABLE T_ORDER_XXX DROP CONSTRAINT NN_ORDER_XXX_NBR ORDER_NBR;
