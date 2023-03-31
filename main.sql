-- create sample table with data
CREATE TABLE sample_table (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO sample_table (name) VALUES ('John');
INSERT INTO sample_table (name) VALUES ('Jane');
INSERT INTO sample_table (name) VALUES ('Jack');

-- Path: main.sql