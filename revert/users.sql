-- Revert users

BEGIN;

ALTER TABLE "1".users
  DROP COLUMN user_type;

DROP TYPE user_type_enum;

DROP TABLE "1".users;

COMMIT;
