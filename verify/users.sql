-- Verify users

BEGIN;

SELECT id, created_at, updated_at, first_name, last_name, address
  FROM "1".users
 WHERE FALSE;

SELECT nextval('1.users_id_seq');

SELECT user_type from "1".users where FALSE;

ROLLBACK;