DROP TABLE IF EXISTS test;
CREATE TABLE test(
  a VARCHAR(16),
  b INT,
  CONSTRAINT "a_b_pair" UNIQUE (a, b)
);
INSERT INTO test
VALUES('q', 1),
  ('sdhdh', 5),
  ('2', 2),
  ('q775', 2);