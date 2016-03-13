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
    ) ENGINE=INNODB;

CREATE TABLE users(

    user_id INT(11) NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(15) NOT NULL,
    user_pass VARCHAR(15) NOT NULL,
    user_email VARCHAR(20) NOT NULL,
    user_created_at DATETIME DEFAULT NOT NULL,
    user_updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (users_id),
    ) ENGINE=INNODB;

CREATE TABLE customer(

    customer_id INT(11) NOT NULL,
    customer_first_name VARCHAR(30) NOT NULL,
    customer_last_name VARCHAR(30) NOT NULL,
    customer_phone INT(10) NOT NULL,
    customer_created_at DATETIME DEFAULT NOT NULL,
    customer_updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (customer_id)
    ) ENGINE=INNODB;

CREATE TABLE auto_parts(

    auto_part_id INT(11) NOT NULL AUTO_INCREMENT,
    auto_part_name VARCHAR(30) NOT NULL,
    auto_part_type VARCHAR(30) NOT NULL,
    PRIMARY KEY (auto_part_id)
    ) ENGINE=INNODB;

CREATE TABLE cars(

    car_id INT(11) NOT NULL AUTO_INCREMENT,
    car_name VARCHAR(30) NOT NULL,
    car_class VARCHAR(30) NOT NULL,
    car_type VARCHAR(30) NOT NULL,
    car_vintage TINY INT(2) NOT NULL,
    car_used TINYINT(2) NOT NULL,
    car_new TINYINT(2) NOT NULL,
    PRIMARY KEY (car_id)
) ENGINE=INNODB;

CREATE TABLE INVENTORY();