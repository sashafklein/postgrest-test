-- Verify user_type

BEGIN;

SELECT user_type from "1".users where FALSE;

ROLLBACK;
