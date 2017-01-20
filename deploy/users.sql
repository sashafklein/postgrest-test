-- Deploy users

BEGIN;

CREATE TABLE "1".users
(
  id serial,
  created_at timestamp with time zone not NULL,
  updated_at timestamp with time zone not NULL,
  first_name character varying not NULL,
  last_name character varying not NULL,
  address character varying not NULL
)
WITH (
  OIDS = FALSE
);

ALTER TABLE "1".users
  ADD CONSTRAINT users_pkey PRIMARY KEY(id);

ALTER TABLE "1".users
  ADD CONSTRAINT created_updated_in_order
  CHECK (created_at <= updated_at);

CREATE TYPE user_type_enum AS ENUM ('consumer', 'pro', 'admin');

ALTER TABLE "1".users
  ADD COLUMN user_type user_type_enum NOT NULL;

COMMIT;
