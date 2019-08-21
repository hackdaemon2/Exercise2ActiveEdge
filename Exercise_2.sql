CREATE DATABASE IF NOT EXISTS Exercise2;

USE Exercise2;

CREATE TABLE IF NOT EXISTS T1 (
    id INTEGER(11) AUTO_INCREMENT,
    name VARCHAR(255),
    age INTEGER(11),
    PRIMARY KEY id
);

CREATE TABLE IF NOT EXISTS T2 (
    id INTEGER(11) AUTO_INCREMENT,
    name VARCHAR(255),
    age INTEGER(11),
    PRIMARY KEY id
);

INSERT INTO T1 (id, name, age) VALUES (23, 'Tar', 46), (12, 'Bar', 32), (14, 'Foo', 70);

INSERT INTO T2 (id, name, age) VALUES (14, 'Foobar', 70), (12, 'Bar', 32);


select 1 
from (
    select id from t1
    union all
    select id from t2
    union all
    select name from t1
    union all
    select name from t2 
    union all
    select age from t1
    union all
    select age from t2 
    union all
) a
order by name;