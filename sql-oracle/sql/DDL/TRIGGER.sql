------------------------------
----- BEFORE
------------------------------
CREATE TRIGGER TRG_ORDER_BEFORE
    BEFORE INSERT ON T_ORDER
    FOR EACH ROW
    AS BEGIN
        INSERT INTO T_ORDER_TRG_AFTER() VALUES();
    END;

------------------------------
----- AFTER
------------------------------
CREATE TRIGGER TRG_ORDER_AFTER
    AFTER INSERT ON T_ORDER
    FOR EACH ROW
    AS BEGIN
        INSERT INTO T_ORDER_TRG_AFTER() VALUES();
    END;

DROP TRIGGER TRG_ORDER_AFTER ON T_ORDER;
