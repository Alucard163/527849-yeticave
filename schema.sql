CREATE DATABASE yeticave
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

USE yeticave;

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR(128)
);

CREATE TABLE lots (
    id INT AUTO_INCREMENT PRIMARY KEY,
    create_date DATETIME,
    category_id INT,
    name CHAR(128),
    description TEXT,
    pic CHAR(128),
    start_price DECIMAL,
    final_date DATE,
    counter INT,
    author_id INT,
    winner_id INT
);

CREATE INDEX l_name ON lots(name);
CREATE INDEX l_cat ON lots(category_id);

CREATE TABLE rates (
    id INT AUTO_INCREMENT PRIMARY KEY,
    bet_date DATETIME,
    bet_price DECIMAL,
    lot_id INT,
    user_id INT
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    reg_date DATETIME,
    email CHAR(128),
    name CHAR(128),
    passw CHAR(64),
    avatar CHAR(128),
    contacts TEXT
);

CREATE UNIQUE INDEX email ON users(email);
CREATE INDEX u_email ON users(email);