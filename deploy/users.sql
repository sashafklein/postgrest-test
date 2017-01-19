-- Deploy users

BEGIN;

CREATE TABLE "1".users
(
  id serial,
  createdAt time with time zone not NULL,
  updatedAt time with time zone not NULL,
  firstName character varying not NULL,
  lastName character varying not NULL,
  address character varying not NULL
)
WITH (
  OIDS = FALSE
);

ALTER TABLE "1".users
  ADD CONSTRAINT users_pkey PRIMARY KEY(id);

ALTER TABLE "1".users
  ADD CONSTRAINT created_updated_in_order
  CHECK (createdAt <= updatedAt);

COMMIT;
