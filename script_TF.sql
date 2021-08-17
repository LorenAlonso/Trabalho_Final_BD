CREATE DATABASE olist_BD;
USE olist_BD;

CREATE TABLE order_dataset(
order_id varchar(40) NOT NULL,
order_status varchar(20),

PRIMARY KEY (order_id)
)ENGINE = innodb;

CREATE TABLE order_customer_dataset(
customerunique_id varchar(40) NOT NULL,
order_id varchar(40) NOT NULL,
geolocation_zip_code_prefix int(5),
customer_city varchar(30),
customer_state varchar (30),

PRIMARY KEY (customerunique_id)
) ENGINE = innodb;

CREATE TABLE geolocation_dataset(
geolocation_zip_code_prefix int(5) NOT NULL,
geolocation_city varchar(40) ,
geolocation_state varchar(40),

PRIMARY KEY (geolocation_zip_code_prefix)
)ENGINE = innodb;

CREATE TABLE order_items_dataset(
order_item_id int(5) NOT NULL,
order_id varchar(40),
price float(4),
seller_id varchar(40),

PRIMARY KEY (order_item_id)
)ENGINE = innodb;

CREATE TABLE sellers_dataset(
seller_id varchar(40) NOT NULL,
geolocation_zip_code_prefix int(5),
seller_city varchar(20),
seller_state varchar(20),

PRIMARY KEY (seller_id)
)ENGINE = innodb;

ALTER TABLE order_customer_dataset ADD CONSTRAINT fk_order_id FOREIGN KEY ( order_id ) REFERENCES order_dataset ( order_id ) ;
ALTER TABLE order_customer_dataset ADD CONSTRAINT fk_geolocation_prefix FOREIGN KEY ( geolocation_zip_code_prefix ) REFERENCES geolocation_dataset ( geolocation_zip_code_prefix ) ;

ALTER TABLE order_items_dataset ADD CONSTRAINT fk_seller_id FOREIGN KEY ( seller_id ) REFERENCES sellers_dataset ( seller_id ) ;
ALTER TABLE order_items_dataset ADD CONSTRAINT fk_seller_order_id FOREIGN KEY ( order_id ) REFERENCES order_dataset ( order_id ) ;

ALTER TABLE sellers_dataset ADD CONSTRAINT fk_geolocation_seller_prefix FOREIGN KEY ( geolocation_zip_code_prefix ) REFERENCES geolocation_dataset ( geolocation_zip_code_prefix ) ;
