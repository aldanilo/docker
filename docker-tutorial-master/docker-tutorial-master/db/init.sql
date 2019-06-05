CREATE DATABASE geofusion;
use geofusion;


CREATE TABLE bairros (
  codigo VARCHAR(255) CHARACTER SET UTF8 COLLATE utf8_general_ci
  , nome VARCHAR(255) CHARACTER SET UTF8 COLLATE utf8_general_ci
  , municipio VARCHAR(255) CHARACTER SET UTF8 COLLATE utf8_general_ci
  , uf VARCHAR(255) CHARACTER SET UTF8 COLLATE utf8_general_ci
  , area FLOAT NOT NULL
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/bairros.csv' 
INTO TABLE bairros 
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;
