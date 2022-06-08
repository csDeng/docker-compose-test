DROP TABLE IF EXISTS test_number;

CREATE TABLE test_number(
	id int unsigned primary key auto_increment,
	num int 
) engine=innodb;

insert into test_number(num) values
(1),
(2),
(3);
