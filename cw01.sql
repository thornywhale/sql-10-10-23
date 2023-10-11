DROP TABLE IF EXISTS "users";
CREATE TABLE IF NOT EXISTS "users"(
  "first_name" VARCHAR(32) NOT NULL CHECK("first_name" != ''),
  "last_name" VARCHAR(32) NOT NULL CHECK("last_name" != ''),
  "email" VARCHAR(128) NOT NULL CHECK("email" != '') UNIQUE,
  "gender" BOOLEAN,
  "birth_date" DATE CHECK("birth_date" < current_date),
  "height" NUMERIC(3, 2) CHECK(
    "height" > 0
    AND "height" < 300
  )
);
INSERT INTO "users"
VALUES(
    'Brad',
    'Pitt',
    'pitt@gmail.com',
    TRUE,
    '1963-12-18',
    1.87
  );
DROP TABLE IF EXISTS "messages";
CREATE TABLE IF NOT EXISTS "messages"(
  "id" BIGSERIAL PRIMARY KEY,
  "body" TEXT NOT NULL CHECK("body" != ''),
  "author" VARCHAR(64) CHECK("author" != ''),
  "createAt" TIMESTAMP NOT NULL DEFAULT current_timestamp,
  "IsRead" BOOLEAN NOT NULL DEFAULT FALSE
);
INSERT INTO "messages"("id", "author", "body")
VALUES ('qwerty', 'tom'),
  ('brad', 'hi');