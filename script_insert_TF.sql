USE olist_bd;


INSERT INTO geolocation_dataset(geolocation_zip_code_prefix, geolocation_city, geolocation_state) VALUES (80010,"curitiba","PR") ;
INSERT INTO geolocation_dataset(geolocation_zip_code_prefix, geolocation_city, geolocation_state) VALUES (13041,"campinas","SP");
INSERT INTO geolocation_dataset(geolocation_zip_code_prefix, geolocation_city, geolocation_state) VALUES (20050,"rio de janeiro","RJ");
INSERT INTO geolocation_dataset(geolocation_zip_code_prefix, geolocation_city, geolocation_state) VALUES (80060,"curitiba","PR");
INSERT INTO geolocation_dataset(geolocation_zip_code_prefix, geolocation_city, geolocation_state) VALUES (14409,"franca","SP");

INSERT INTO sellers_dataset(seller_id, geolocation_zip_code_prefix, seller_city, seller_state) VALUES ("3442f8959a84dea7ee197c632cb2df15",80010,"campinas","SP");
INSERT INTO sellers_dataset(seller_id, geolocation_zip_code_prefix, seller_city, seller_state) VALUES ("8bd0f31cf0a614c658f6763bd02dea69",14409,"sao paulo","SP");
INSERT INTO sellers_dataset(seller_id, geolocation_zip_code_prefix, seller_city, seller_state) VALUES ("d1b65fc7debc3361ea86b5f14c68d2e2",13041,"campinas","SP");
INSERT INTO sellers_dataset(seller_id, geolocation_zip_code_prefix, seller_city, seller_state) VALUES ("ce3ad9de960102d0677a81f5d0bb7b2d",20050,"rio de janeiro","RJ");
INSERT INTO sellers_dataset(seller_id, geolocation_zip_code_prefix, seller_city, seller_state) VALUES ("ccc4bbb5f32a6ab2b7066a4130f114e3",80060,"curitiba","PR");


INSERT INTO order_dataset(order_id, order_status) VALUES ("e481f51cbdc54678b7cc49136f2d6af7","delivered");
INSERT INTO order_dataset(order_id, order_status) VALUES ("53cdb2fc8bc7dce0b6741e2150273451","delivered");
INSERT INTO order_dataset(order_id, order_status) VALUES ("47770eb9100c2d0c44946d9cf07ec65d","delivered");
INSERT INTO order_dataset(order_id, order_status) VALUES ("ee64d42b8cf066f35eac1cf57de1aa85","shipped");
INSERT INTO order_dataset(order_id, order_status) VALUES ("3a129877493c8189c59c60eb71d97c29","canceled");

INSERT INTO order_customer_dataset(customerunique_id, order_id, geolocation_zip_code_prefix, customer_city, customer_state) VALUES ("861eff4711a542e4b93843c6dd7febb0","e481f51cbdc54678b7cc49136f2d6af7",80010,"franca","SP") ;
INSERT INTO order_customer_dataset(customerunique_id, order_id, geolocation_zip_code_prefix, customer_city, customer_state) VALUES ("345ecd01c38d18a9036ed96c73b8d066","53cdb2fc8bc7dce0b6741e2150273451",13041,"campinas","SP");
INSERT INTO order_customer_dataset(customerunique_id, order_id, geolocation_zip_code_prefix, customer_city, customer_state) VALUES ("1175e95fb47ddff9de6b2b06188f7e0d","47770eb9100c2d0c44946d9cf07ec65d",80060,"curitiba","PR");
INSERT INTO order_customer_dataset(customerunique_id, order_id, geolocation_zip_code_prefix, customer_city, customer_state) VALUES ("2a46fb94aef5cbeeb850418118cee090","ee64d42b8cf066f35eac1cf57de1aa85",20050,"rio de janeiro","RJ");
INSERT INTO order_customer_dataset(customerunique_id, order_id, geolocation_zip_code_prefix, customer_city, customer_state) VALUES ("3fdc39171d444e1a1cd4da98ac2e4adb","3a129877493c8189c59c60eb71d97c29",14409,"sao paulo","SP");

INSERT INTO order_items_dataset(order_item_id, order_id, price, seller_id) VALUES (1,"e481f51cbdc54678b7cc49136f2d6af7",58.90,"3442f8959a84dea7ee197c632cb2df15");
INSERT INTO order_items_dataset(order_item_id, order_id, price, seller_id) VALUES (4,"53cdb2fc8bc7dce0b6741e2150273451",19.90,"8bd0f31cf0a614c658f6763bd02dea69");
INSERT INTO order_items_dataset(order_item_id, order_id, price, seller_id) VALUES (2,"47770eb9100c2d0c44946d9cf07ec65d",49.90,"d1b65fc7debc3361ea86b5f14c68d2e2");
INSERT INTO order_items_dataset(order_item_id, order_id, price, seller_id) VALUES (5,"ee64d42b8cf066f35eac1cf57de1aa85",144.00,"ce3ad9de960102d0677a81f5d0bb7b2d");
INSERT INTO order_items_dataset(order_item_id, order_id, price, seller_id) VALUES (3,"3a129877493c8189c59c60eb71d97c29",21.33,"ccc4bbb5f32a6ab2b7066a4130f114e3");










