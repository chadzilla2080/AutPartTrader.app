GRANT ALL PRIVILEGES ON 'db_name'.* TO 'user_name' IDENTIFIED BY 'pass';

CREATE TABLE dealers(

    dealer_id INT(11) NOT NULL AUTO_INCREMENT,
    dealer_name VARCHAR(30) NOT NULL,
    dealer_address VARCHAR(11) NOT NULL,
    dealer_state VARCHAR(2) NOT NULL,
    dealer_zip INT(5) NOT NULL,
    dealer_created_at DATETIME DEFAULT NOT NULL,
    dealer_updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    PRIMARY KEY (dealer_id)
    )ENGINE=INNODB;

CREATE TABLE users(

    user_id INT(11) NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(15) NOT NULL,
    user_pass VARCHAR(15) NOT NULL,
    user_email VARCHAR(20) NOT NULL,
    user_created_at DATETIME DEFAULT NOT NULL,
    user_updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (users_id),
    )ENGINE=INNODB;

CREATE TABLE customer(

    customer_id INT(11) NOT NULL,
    customer_first_name VARCHAR(30) NOT NULL,
    customer_last_name VARCHAR(30) NOT NULL,
    customer_phone INT(10) NOT NULL,
    customer_created_at DATETIME DEFAULT NOT NULL,
    customer_updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (customer_id)
    )ENGINE=INNODB;


CREATE TABLE countries(

    country_id INT(4) NOT NULL AUTO_INCREMENT,
    country_name VARCHAR(20)  NOT NULL,
    PRIMARY KEY (country_id)
    )ENGINE=INNODB;


CREATE TABLE region(

      region_id INT(5) NOT NULL AUTO_INCREMENT,
      region_name VARCHAR(25) NOT NULL,
      PRIMARY KEY(region_id)
      )ENGINE=INNODB;


CREATE TABLE orders(

    order_id INT(11) NOT NULL AUTO_INCREMENT,
    order_type VARCHAR(30) NOT NULL,
    order_amount INT(5) NOT NULL,
    PRIMARY KEY (order_id),
    )ENGINE=INNODB;

CREATE TABLE inventory(

    inventory_id INT(11) NOT NULL AUTO_INCREMENT,
    inventory_cost INT(11) NOT NULL,
    inventory_on_hand INT(11) NOT NULL,
    inventory_dated_added DATETIME DEFAULT NOT NULL,
    inventory_update_at TIMESTAMP ON UPDATE
    PRIMARY KEY (inventory_id)
    )ENGINE=INNODB;


CREATE TABLE auto_parts(

    auto_part_id INT(11) NOT NULL AUTO_INCREMENT,
    auto_part_name VARCHAR(30) NOT NULL,
    auto_part_type VARCHAR(30) NOT NULL,
    PRIMARY KEY (auto_part_id)
    )ENGINE=INNODB;

CREATE TABLE cars(

    car_id INT(11) NOT NULL AUTO_INCREMENT,
    car_name VARCHAR(30) NOT NULL,
    car_class VARCHAR(30) NOT NULL,
    car_type VARCHAR(30) NOT NULL,
    car_vintage TINY INT(2) NOT NULL,
    car_used TINYINT(2) NOT NULL,
    car_new TINYINT(2) NOT NULL,
    PRIMARY KEY (car_id)
    )ENGINE=INNODB;

CREATE TABLE car_manufactures(

    car_manufacture_id INT(11) NOT NULL AUTO_INCREMENT,
    car_manufacture_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (car_manufacture_id)
    )ENGINE=INNODB;

CREATE TABLE engines(

    engine_id INT(11) NOT NULL AUTO_INCREMENT,
    engine_name VARCHAR(30) NOT NULL,
    engine_size VARCHAR(5) NOT NULL,
    engine_type VARCHAR(5) NOT NULL,
    engine_emission_type VARCHAR(15) NOT NULL,
    engine_country VARCHAR(30) NOT NULL,
    engine_zip_code INT(5) NOT NULL,
    engine_date_added DATETIME DEFAULT NOT NULL,
    engine_updated_at TIMESTAMP ON UPDATE,
    PRIMARY KEY (engine_id)
    )ENGINE=INNODB;
