CREATE DATABASE office;

USE office;
SELECT * FROM employee;

CREATE TABLE employee(
emp_id int auto_increment,
emp_name varchar(35),
emp_age int,
emp_gender varchar(6),
emp_address varchar(20),
emp_email varchar(40),
emp_phone varchar(10),
emp_salary double,
PRIMARY KEY(emp_id)
);

INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUE ('Prabesh Magar',23,'Male','Kathmandu','prabeshtech232@gmail.com','9863499762',10374.3);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUE ('Bikash Acharya',53,'Male','Bhaktapur','bikash5321@gmail.com','9853499762',72352.36);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUE ('Batika Singh',18,'Female','Hetauda','singhhetauda34@yandex.com','9855350374',26002.0);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUE ('Sulabh Basnet',35,'Male','Ghaighat','basnetloverboy@yahoo.com','9867620023',8261.47);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUE ('Kumar Sanu',62,'Male','Dolakha','dolakhasanu52@live.com','9863499762',10374.3);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUE ('Sunita Rana',42,'Female','Chitwan','sunitarana1936@gmail.com','9855510374',20000.24);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUES('Kartik Aryan',35,'Male','Bharatpur','aryanraj25@yahoo.com','9825500173',38732.3);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUES('Subash Thakur',25,'Male','Khasa','thakursubash17@yahoo.com','9837300011',8376.28);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUES('Salina Tamang',43,'Female','Thamel','tamangnew263@gmail.com','9863520015',7003.37);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUES('Archana Karki',67,'Female','Sankhamul','karkiarch22@gmail.com','9862620015',23363.07);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUES('Roshan Kuwar',23,'Male','Kageshwori','lovelykuwar3936@gmail.com','9863572315',40001.43);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUES('Sahil Rana',36,'Male','Koteshwor','pukuluku32@gmail.com','9827272315',18261.21);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUES('Himanchal Kumar',38,'Male','Baneshwor','himanchal37@gmail.com','9700272315',73234.43);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUES('Rajesh Bolero',48,'Male','Tokha','turbobolero22@hotmail.com','9700284333',33283.73);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUES('Upahar Basnet',20,'Female','Gaighat','upaharbasnet38@outlook.com','9700284256',40003.7);
INSERT INTO employee(emp_name,emp_age,emp_gender,emp_address,emp_email,emp_phone,emp_salary) VALUES('Shristi Bogate',31,'Female','Thapathali','shristikarta@outlook.com','9700626256',11023.68);

-- IN STORED PROCEDURE

DELIMITER //
CREATE PROCEDURE get_emp(In val int)
BEGIN
SELECT * FROM employee LIMIT val;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE fetch_emp_name(In name varchar(30))
BEGIN
SELECT * FROM employee WHERE emp_name = name;
END //
DELIMITER ;

DROP PROCEDURE get_emp;

CALL get_emp(7);
CALL fetch_emp_name('Sunita Rana');

-- OUT STORED PROCEDURE

DELIMITER //
CREATE PROCEDURE fetch_emp_maxSalary(out max_salary double) 
BEGIN
SELECT max(emp_salary) into max_salary FROM employee; -- Stored in max_salary
END //
DELIMITER ;

CALL fetch_emp_maxSalary(@Max);
SELECT @Max as Max_Salary;


-- INOUT STORED PROCEDURE

DELIMITER //
DROP PROCEDURE IF EXISTS incrementRow;
CREATE PROCEDURE incrementRow(inout val int)
BEGIN
SET val=val+2;
SELECT * FROM employee WHERE emp_id=val;
END //
DELIMITER ;

-- Create variable
SET @val=18;
CALL incrementRow(@val);