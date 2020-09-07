docker run --name mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -v /Users/jt/tmp:/var/lib/mysql -p 3306:3306 -d mysql


docker run --name mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -p 3306:3306 -d mysql
docker run --name mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=yes - myvol -p 3306:3306 -d mysql

docker run --name mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -v myvol:/app -p 3306:3306 -d mysql

### 
docker run --name mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -v myvol:/app -p 3306:3306 -d mysql


## Get into 

winpty docker exec -it mysql bash

## Create Schema

CREATE DATABASE person;
USE person;
CREATE TABLE person 
( 
	id smallint unsigned not null auto_increment, 
	name varchar(20) not null, 
	last_name varchar(20) not null, 
	primary key (id) );

INSERT INTO person ( id, name, last_name) VALUES ( 10001, 'Manual Sample One', 'Manual Sample One' );
INSERT INTO person ( id, name, last_name) VALUES ( 10002, 'Manual Sample two', 'Manual Sample One' );


docker run --name mysql-schema -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -v myvol:/app -p 3306:3306 -d mysql-with-schema-person 
docker run --name mysql-schema-yy -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -v myvol:/app -p 3306:3306 -d mysql-with-schema-person 


docker run --name schema-yy -v myvol:/app -p 3306:3306 -d mysql-with-schema-person