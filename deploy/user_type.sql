-- Deploy user_type
-- requires: users

BEGIN;

CREATE TYPE user_type_enum AS ENUM ('consumer', 'pro', 'admin');

ALTER TABLE "1".users
  ADD COLUMN user_type user_type_enum NOT NULL;

COMMIT;
