DROP DATABASE IF EXISTS bamazon;
CREATE database bamazon;
USE bamazon;
CREATE TABLE products
(
  item_id INT NOT NULL
  AUTO_INCREMENT,
  product_name VARCHAR
  (100) NULL,
  department_name VARCHAR
  (100) NULL,
  price DECIMAL
  (10) NULL,
  stock_quantity DECIMAL
  (65) NULL,

  PRIMARY KEY
  (item_id)
);
  SELECT *
  FROM bamazon;
  INSERT INTO products
    (item_id, product_name, department_name, stock_quantity, price)
  VALUES
    (1, "vanilla", "dairy", 100, 3);
  INSERT INTO products
    (item_id, product_name, department_name, stock_quantity, price)
  VALUES
    (2, "chocolate", "dairy", 70, 5);
  INSERT INTO products
    (item_id, product_name, department_name, stock_quantity, price)
  VALUES
    (3, "strawberry", "dairy", 30, 6);
  INSERT INTO products
    (item_id, product_name, department_name, stock_quantity, price)
  VALUES
    (4, "bubblegum", "dairy", 20, 8);
  INSERT INTO products
    (item_id, product_name, department_name, stock_quantity, price)
  VALUES
    (5, "neopolitan", "dairy", 40, 10);
  INSERT INTO products
    (item_id, product_name, department_name, stock_quantity, price)
  VALUES
    (6, "blueberry", "dairy", 90, 6);
  INSERT INTO products
    (item_id, product_name, department_name, stock_quantity, price)
  VALUES
    (7, "coffee", "dairy", 80, 5);
  INSERT INTO products
    (item_id, product_name, department_name, stock_quantity, price)
  VALUES
    (8, "cinnamon", "dairy", 10, 3);
  INSERT INTO products
    (item_id, product_name, department_name, stock_quantity, price)
  VALUES
    (9, "mango", "dairy", 60, 8);
  INSERT INTO products
    (item_id, product_name, department_name, stock_quantity, price)
  VALUES
    (10, "pistachio", "dairy", 70, 7);

