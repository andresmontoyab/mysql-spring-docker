CREATE DATABASE person;
USE person;
CREATE TABLE person 
( 
	id smallint unsigned not null auto_increment, 
	name varchar(20) not null, 
	last_name varchar(20) not null, 
	primary key (id) );

INSERT INTO person ( id, name, last_name) VALUES ( 10001, 'Auto Sample One', 'Auto Sample One' );
INSERT INTO person ( id, name, last_name) VALUES ( 10002, 'Auto Sample two', 'Auto Sample One' );