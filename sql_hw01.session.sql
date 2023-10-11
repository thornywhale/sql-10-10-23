DROP TABLE IF EXISTS "products";
CREATE TABLE IF NOT EXISTS "products"(
  "name" VARCHAR(256) NOT NULL CHECK(
    AND length("name") >= 4
    AND length("name") <= 256
  ) UNIQUE,
  "price" NUMERIC(7, 2) NOT NULL CHECK(
    "price" >= 0
    AND "price" <= 10000
  ),
  "currency" VARCHAR(4) NOT NULL CHECK(
    length("currency") = 3
    OR length("currency") = 2
  ),
  "production_date" TIMESTAMP WITHOUT TIME ZONE NOT NULL CHECK("production_date" < current_date),
  "amount" SMALLINT NOT NULL CHECK(
    "amount" >= 0
    AND "amount" <= 1000
  )
);
INSERT INTO "products"
VALUES(
    'bread',
    1,
    'USD',
    '2023-10-10 23:50:00',
    400
  ),
  (
    'hamon',
    5555,
    'UAH',
    '2023-10-05 22:00:00',
    25
  ),
  (
    'milk',
    40,
    'UAH',
    '2023-10-07 06:15:00',
    999
  );