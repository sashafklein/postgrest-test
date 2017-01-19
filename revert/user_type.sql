-- Revert user_type

BEGIN;

ALTER TABLE "1".users
  DROP COLUMN user_type;

DROP TYPE user_type_enum;

COMMIT;
