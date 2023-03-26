CREATE DATABASE office;

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

SELECT * FROM employee;

SELECT COUNT(emp_id) FROM employee;

SELECT max(emp_salary) FROM employee;
SELECT min(emp_salary) FROM employee;

SELECT sum(emp_salary) FROM employee;
SELECT round(avg(emp_salary),2) FROM employee;

SELECT * FROM employee LIMIT 4;

SELECT * FROM employee ORDER BY emp_age;
SELECT * FROM employee ORDER BY emp_id DESC LIMIT 4;

SELECT * FROM employee WHERE emp_name LIKE 'B%';
SELECT * FROM employee WHERE emp_name LIKE '%a';
SELECT * FROM employee WHERE emp_address LIKE '%g%';
SELECT * FROM employee WHERE emp_address LIKE '___a%';


SELECT emp_gender FROM employee GROUP BY emp_gender;
SELECT emp_gender,COUNT(emp_gender) AS Total FROM employee GROUP BY emp_gender;
SELECT emp_gender,COUNT(emp_gender) AS Total FROM employee GROUP BY emp_gender HAVING COUNT(*) < 3;





