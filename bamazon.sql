DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE products (
  item_id INTEGER(20) AUTO_INCREMENT NOT NULL,
  PRIMARY KEY (item_id),
  product_name VARCHAR(50) NOT NULL,
  department_name VARCHAR(50) NOT NULL,
  price INTEGER(20) NOT NULL,
  stock_quantity INTEGER(20) NOT NULL
);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Nike Foamposite', 'Shoes', 500, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Air Jordan 1', 'Shoes', 1200, 1);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Samsung TV', 'Electronics', 1900, 72);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Ipad', 'Electorincs', 350, 17);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Apple Watch', 'Electorincs', 500, 27);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Charizard Pokemon card', 'Collectibles', 10000, 1);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Mew Pokemon card', 'Collectibles', 300, 13);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Pikachu Pokemon card', 'Collectibles', 150, 41);

CREATE TABLE orders (
  order_id INTEGER(20) AUTO_INCREMENT NOT NULL,
  item_id INTEGER(20) NOT NULL,
  product_name VARCHAR(50) NOT NULL,
  quantity INTEGER(50) NOT NULL,
  total_price INTEGER(50) NOT NULL,
  leftover_stock INTEGER(50) NOT NULL,
  PRIMARY KEY (order_id)
);

CREATE TABLE inventory_log (
  log_id INTEGER(20) AUTO_INCREMENT NOT NULL,
  PRIMARY KEY (log_id),
  item_id INTEGER(20) NOT NULL,
  product_name VARCHAR(50) NOT NULL,
  current_stock INTEGER(20) NOT NULL,
  quantity_added INTEGER(20) NOT NULL,
  updated_stock INTEGER(20) NOT NULL
);