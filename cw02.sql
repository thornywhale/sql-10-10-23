DROP TABLE IF EXISTS "users";
CREATE TABLE IF NOT EXISTS "users"(
  "id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(32) NOT NULL CHECK("first_name" != ''),
  "last_name" VARCHAR(32) NOT NULL CHECK("last_name" != ''),
  "email" VARCHAR(128) NOT NULL CHECK("email" != ''),
  "gender" BOOLEAN,
  "birth_date" DATE CHECK("birth_date" < current_date),
  "height" NUMERIC(3, 2) CHECK(
    "height" > 0
    AND "height" < 300
  )
);
INSERT INTO "users"(
    "first_name",
    "last_name",
    "email",
    "gender",
    "birth_date",
    "height"
  )
VALUES(
    'Brad',
    'Pitt',
    'pitt@gmail.com',
    TRUE,
    '1963-12-18',
    1.87
  ),
  (
    'Brad',
    'Pitt',
    'pitt@gmail.com',
    TRUE,
    '1963-12-18',
    1.87
  ),
  (
    'Brad',
    'Pitt',
    'pitt@gmail.com',
    TRUE,
    '1963-12-18',
    1.87
  ),
  (
    'Brad',
    'Pitt',
    'pitt@gmail.com',
    TRUE,
    '1963-12-18',
    1.87
  ),
  (
    'Brad',
    'Pitt',
    'pitt@gmail.com',
    FALSE,
    '1963-12-18',
    1.87
  );
DROP TABLE IF EXISTS "messages";
CREATE TABLE IF NOT EXISTS "messages"(
  "id" BIGSERIAL PRIMARY KEY,
  "user_id" INT REFERENCES "users"("id"),
  "body" TEXT NOT NULL CHECK("body" != ''),
  "author" VARCHAR(64) CHECK("author" != ''),
  "created_at" TIMESTAMP NOT NULL DEFAULT current_timestamp,
  "is_read" BOOLEAN NOT NULL DEFAULT FALSE
);
INSERT INTO "messages"("user_id", "body")
VALUES (2, 'qwerty'),
  (4, 'hi'),
  (5, 'hi'),
  (1, 'hello'),
  (2, 'hi');

DROP TABLE IF EXISTS "orders";
CREATE TABLE "orders"(
  "id" BIGSERIAL PRIMARY KEY,
  "customer_id" INT REFERENCES "users"("id"),
  "order_date" TIMESTAMP NOT NULL DEFAULT current_timestamp,
  
)