-- create sample table with data
CREATE TABLE sample_table (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO sample_table (name) VALUES ('John');
INSERT INTO sample_table (name) VALUES ('Jane');
INSERT INTO sample_table (name) VALUES ('Jack');

-- create a user table with data
CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO user (name) VALUES ('John');
INSERT INTO user (name) VALUES ('Jane');
INSERT INTO user (name) VALUES ('Jack');

-- create a department tabe with data
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO department (name) VALUES ('IT');
INSERT INTO department (name) VALUES ('HR');
INSERT INTO department (name) VALUES ('Finance');

-- create a user_department table with data
CREATE TABLE user_department (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (department_id) REFERENCES department(id)
);

INSERT INTO user_department (user_id, department_id) VALUES (1, 1);
INSERT INTO user_department (user_id, department_id) VALUES (2, 2);
INSERT INTO user_department (user_id, department_id) VALUES (3, 3);

-- create a view
CREATE VIEW user_department_view AS
SELECT
    user.id AS user_id,
    user.name AS user_name,
    department.id AS department_id,
    department.name AS department_name
FROM user
INNER JOIN user_department ON user_department.user_id = user.id
INNER JOIN department ON user_department.department_id = department.id;

-- select from view
SELECT * FROM user_department_view;

-- Path: main.sql