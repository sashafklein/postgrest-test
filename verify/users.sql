-- Verify users

BEGIN;

SELECT id, createdAt, updatedAt, firstName, lastName, address
  FROM "1".users
 WHERE FALSE;

SELECT nextval('1.users_id_seq');

ROLLBACK;
