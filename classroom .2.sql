CREATE DATABASE TEMP1;
DROP DATABASE IF EXISTS temp1;
drop database temp2;
create database temp2;

CREATE DATABASE college;
CREATE DATABASE IF NOT EXISTS college;
USE college;
CREATE TABLE student(
ID INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);


INSERT INTO student VALUES(1,"AMISHA",21);
INSERT INTO student VALUES(2,"DIVYA",23);
INSERT INTO student VALUES(3,"Alka",21);
select*from student;
SHOW DATABASES;
SHOW TABLES;

CREATE TABLE FRIEND(
ID INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

INSERT INTO FRIEND VALUES(1,"AMISHA",21),(2,"DIVYA",23),(3,"Alka",21);
select*from FRIEND;
SHOW DATABASES;
SHOW TABLES;
INSERT INTO FRIEND(id,name,age) VALUES(4,"AMISHA",21),(5,"DIVYA",23),(6,"Alka",21);


CREATE DATABASE puspa_company;
CREATE DATABASE if not exists puspa_company;
use puspa_company;

CREATE TABLE employee(
id INT PRIMARY KEY,
name varchar(50),
salary int DEFAULT 25000
);
INSERT INTO employee VALUES(1,amisha,);
SELECT*FROM employee;


CREATE TABLE newtab(
age int check(age>=18)
);
INSERT INTO newtab VALUES(20);



CREATE DATABASE college;
CREATE DATABASE IF NOT EXISTS college;
USE college;
CREATE TABLE student(
ID INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

INSERT INTO student VALUES(1,"AMISHA",21);
INSERT INTO student VALUES(2,"DIVYA",23);
INSERT INTO student VALUES(3,"Alka",21);
INSERT INTO student VALUES(4,"Alka",21);
INSERT INTO student VALUES(5,"Alka",21);

select * FROM student;
select name FROM student;
select  distinct name FROM student;

select * from student where age>21;
select * from student where age>20 and age>21;
select * from student where age>20 or age>21;
select*
from student
where id+1>3;

select*
from student
where age=21;

select*
from student
where age!=21;

select*
from student
where age between 20 and 23;

select*
from student
where age not in(21,22);

select*
from student
limit 3;

select*
from student
where age>20
limit 3;

select*
from student
order by age;

select*
from student
order by age desc
limit 3;

select count(age)
from student;

select max(age)
from student;

select avg(age)
from student;

select min(age)
from student;

select sum(age)
from student;

select max(age)
from student;

select name,avg(age)
from student
group by name;

select name,count(name)
from student
group by name
having max(age)>22;

select name
from student
where age<23
group by name
having count(age)=2
order by age;

set sql_safe_updates=0;
update student
set name="ritu"
where name="alka";

select*
from student;

update student set age=25
where age=23;
select*
from student;

create database temp3;
use temp3;
CREATE TABLE Students_c (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Class VARCHAR(20),
    Subject VARCHAR(50),
    Marks INT
);


INSERT INTO Students_c (StudentID, FirstName, LastName, DateOfBirth, Gender, Class, Subject, Marks)
VALUES
(1, 'Ravi', 'Kumar', '2005-03-15', 'Male', '10th', 'Math', 85),
(2, 'Anita', 'Sharma', '2004-07-22', 'Female', '10th', 'Science', 92),
(3, 'Amit', 'Verma', '2005-01-10', 'Male', '10th', 'English', 78),
(4, 'Priya', 'Singh', '2004-11-05', 'Female', '10th', 'Math', 88),
(5, 'Rahul', 'Yadav', '2005-02-28', 'Male', '10th', 'Science', 74);

select*
from students_c;
set sql_safe_updates=0;
update student_c
set marks=83
where marks=78;

select*
from students_c;
delete from students_c
where marks<75;
select*from  students_c;



-- Create Department table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

insert into Department values(101,"cs"),(102,"it");

-- Create Teacher table with foreign key referencing Department
CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY,
    TeacherName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
    on delete cascade
    on update cascade
);




-- 1. Create Database
CREATE DATABASE IF NOT EXISTS FinancialDB;
USE FinancialDB;

-- 2. Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    signup_date DATE
);

-- 3. Create Accounts Table
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    account_type ENUM('Savings', 'Checking', 'Loan', 'Credit Card'),
    balance DECIMAL(15, 2),
    created_at DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- 4. Create Transactions Table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    amount DECIMAL(15, 2),
    transaction_type ENUM('Deposit', 'Withdrawal', 'Transfer', 'Payment'),
    transaction_date DATE,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

-- 5. Create Loans Table
CREATE TABLE Loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    loan_amount DECIMAL(15, 2),
    interest_rate DECIMAL(5, 2),
    tenure_months INT,
    start_date DATE,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

-- 6. Create Payments Table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    loan_id INT,
    payment_amount DECIMAL(15, 2),
    payment_date DATE,
    FOREIGN KEY (loan_id) REFERENCES Loans(loan_id)
);

-- 7. Insert Initial Customers
INSERT INTO Customers (name, email, city, state, country, signup_date)
VALUES  
('Alice Smith', 'alice@example.com', 'New York', 'NY', 'USA', '2023-01-15'),
('Bob Johnson', 'bob@example.com', 'Los Angeles', 'CA', 'USA', '2022-05-10'),
('Carol White', 'carol@example.com', 'Dallas', 'TX', 'USA', '2021-07-12'),
('David Brown', 'david@example.com', 'Chicago', 'IL', 'USA', '2020-03-18'),
('Eve Davis', 'eve@example.com', 'San Francisco', 'CA', 'USA', '2022-11-25'),
('Frank Moore', 'frank@example.com', 'Miami', 'FL', 'USA', '2023-02-20'),
('Grace Hill', 'grace@example.com', 'Houston', 'TX', 'USA', '2023-03-01'),
('Henry King', 'henry@example.com', 'Boston', 'MA', 'USA', '2023-04-10'),
('Isabel Lewis', 'isabel@example.com', 'Seattle', 'WA', 'USA', '2022-09-15'),
('Jack Green', 'jack@example.com', 'Denver', 'CO', 'USA', '2023-05-05');
select* from Customers;

-- 8. Insert 40 Additional Random Customers
INSERT INTO Customers (name, email, city, state, country, signup_date)
SELECT
  CONCAT('Customer_', LPAD(FLOOR(RAND() * 10000), 4, '0')),
  CONCAT('user', LPAD(FLOOR(RAND() * 10000), 4, '0'), '@example.com'),
  ELT(FLOOR(RAND()*5)+1, 'Phoenix', 'Austin', 'Atlanta', 'Portland', 'San Diego'),
  ELT(FLOOR(RAND()*5)+1, 'AZ', 'TX', 'GA', 'OR', 'CA'),
  'USA',
  DATE_ADD('2021-01-01', INTERVAL FLOOR(RAND()*1000) DAY)
FROM (
  SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION
  SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10 UNION
  SELECT 11 UNION SELECT 12 UNION SELECT 13 UNION SELECT 14 UNION SELECT 15 UNION
  SELECT 16 UNION SELECT 17 UNION SELECT 18 UNION SELECT 19 UNION SELECT 20
) AS t;

-- 9. Insert Data into Accounts
INSERT INTO Accounts (customer_id, account_type, balance, created_at)
SELECT
  customer_id,
  ELT(FLOOR(RAND()*4)+1, 'Savings', 'Checking', 'Loan', 'Credit Card'),
  ROUND(RAND()*20000, 2),
  DATE_ADD('2021-01-01', INTERVAL FLOOR(RAND()*1000) DAY)
FROM Customers
LIMIT 100;

-- 10. Insert Data into Transactions
INSERT INTO Transactions (account_id, amount, transaction_type, transaction_date)
SELECT
  account_id,
  ROUND(RAND()*5000, 2),
  ELT(FLOOR(RAND()*4)+1, 'Deposit', 'Withdrawal', 'Transfer', 'Payment'),
  DATE_ADD('2021-01-01', INTERVAL FLOOR(RAND()*1000) DAY)
FROM Accounts
LIMIT 200;

-- 11. Insert Data into Loans
INSERT INTO Loans (account_id, loan_amount, interest_rate, tenure_months, start_date)
SELECT
  account_id,
  ROUND(RAND()*15000 + 1000, 2),
  ROUND(RAND()*10, 2),
  ELT(FLOOR(RAND()*3)+1, 12, 24, 36),
  DATE_ADD('2021-01-01', INTERVAL FLOOR(RAND()*1000) DAY)
FROM Accounts
WHERE account_type = 'Loan'
LIMIT 30;

-- 12. Insert Data into Payments
INSERT INTO Payments (loan_id, payment_amount, payment_date)
SELECT
  loan_id,
  ROUND(RAND()*2000 + 100, 2),
  DATE_ADD('2021-01-01', INTERVAL FLOOR(RAND()*1000) DAY)
FROM Loans
LIMIT 100;-- 1. Create Database
CREATE DATABASE IF NOT EXISTS FinancialDB;
USE FinancialDB;

-- 2. Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    signup_date DATE
);

-- 3. Create Accounts Table
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    account_type ENUM('Savings', 'Checking', 'Loan', 'Credit Card'),
    balance DECIMAL(15, 2),
    created_at DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- 4. Create Transactions Table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    amount DECIMAL(15, 2),
    transaction_type ENUM('Deposit', 'Withdrawal', 'Transfer', 'Payment'),
    transaction_date DATE,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

-- 5. Create Loans Table
CREATE TABLE Loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    loan_amount DECIMAL(15, 2),
    interest_rate DECIMAL(5, 2),
    tenure_months INT,
    start_date DATE,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

-- 6. Create Payments Table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    loan_id INT,
    payment_amount DECIMAL(15, 2),
    payment_date DATE,
    FOREIGN KEY (loan_id) REFERENCES Loans(loan_id)
);

-- 7. Insert Initial Customers
INSERT INTO Customers (name, email, city, state, country, signup_date)
VALUES  
('Alice Smith', 'alice@example.com', 'New York', 'NY', 'USA', '2023-01-15'),
('Bob Johnson', 'bob@example.com', 'Los Angeles', 'CA', 'USA', '2022-05-10'),
('Carol White', 'carol@example.com', 'Dallas', 'TX', 'USA', '2021-07-12'),
('David Brown', 'david@example.com', 'Chicago', 'IL', 'USA', '2020-03-18'),
('Eve Davis', 'eve@example.com', 'San Francisco', 'CA', 'USA', '2022-11-25'),
('Frank Moore', 'frank@example.com', 'Miami', 'FL', 'USA', '2023-02-20'),
('Grace Hill', 'grace@example.com', 'Houston', 'TX', 'USA', '2023-03-01'),
('Henry King', 'henry@example.com', 'Boston', 'MA', 'USA', '2023-04-10'),
('Isabel Lewis', 'isabel@example.com', 'Seattle', 'WA', 'USA', '2022-09-15'),
('Jack Green', 'jack@example.com', 'Denver', 'CO', 'USA', '2023-05-05');

-- 8. Insert 40 Additional Random Customers
INSERT INTO Customers (name, email, city, state, country, signup_date)
SELECT
  CONCAT('Customer_', LPAD(FLOOR(RAND() * 10000), 4, '0')),
  CONCAT('user', LPAD(FLOOR(RAND() * 10000), 4, '0'), '@example.com'),
  ELT(FLOOR(RAND()*5)+1, 'Phoenix', 'Austin', 'Atlanta', 'Portland', 'San Diego'),
  ELT(FLOOR(RAND()*5)+1, 'AZ', 'TX', 'GA', 'OR', 'CA'),
  'USA',
  DATE_ADD('2021-01-01', INTERVAL FLOOR(RAND()*1000) DAY)
FROM (
  SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION
  SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10 UNION
  SELECT 11 UNION SELECT 12 UNION SELECT 13 UNION SELECT 14 UNION SELECT 15 UNION
  SELECT 16 UNION SELECT 17 UNION SELECT 18 UNION SELECT 19 UNION SELECT 20
) AS t;

-- 9. Insert Data into Accounts
INSERT INTO Accounts (customer_id, account_type, balance, created_at)
SELECT
  customer_id,
  ELT(FLOOR(RAND()*4)+1, 'Savings', 'Checking', 'Loan', 'Credit Card'),
  ROUND(RAND()*20000, 2),
  DATE_ADD('2021-01-01', INTERVAL FLOOR(RAND()*1000) DAY)
FROM Customers
LIMIT 100;

-- 10. Insert Data into Transactions
INSERT INTO Transactions (account_id, amount, transaction_type, transaction_date)
SELECT
  account_id,
  ROUND(RAND()*5000, 2),
  ELT(FLOOR(RAND()*4)+1, 'Deposit', 'Withdrawal', 'Transfer', 'Payment'),
  DATE_ADD('2021-01-01', INTERVAL FLOOR(RAND()*1000) DAY)
FROM Accounts
LIMIT 200;

-- 11. Insert Data into Loans
INSERT INTO Loans (account_id, loan_amount, interest_rate, tenure_months, start_date)
SELECT
  account_id,
  ROUND(RAND()*15000 + 1000, 2),
  ROUND(RAND()*10, 2),
  ELT(FLOOR(RAND()*3)+1, 12, 24, 36),
  DATE_ADD('2021-01-01', INTERVAL FLOOR(RAND()*1000) DAY)
FROM Accounts
WHERE account_type = 'Loan'
LIMIT 30;

-- 12. Insert Data into Payments
INSERT INTO Payments (loan_id, payment_amount, payment_date)
SELECT
  loan_id,
  ROUND(RAND()*2000 + 100, 2),
  DATE_ADD('2021-01-01', INTERVAL FLOOR(RAND()*1000) DAY)
FROM Loans
LIMIT 10;






SELECT SUM(balance) AS total_savings_balance
FROM Accounts
WHERE account_type = 'Savings';


SELECT account_type, AVG(balance) AS avg_balance
FROM Accounts
GROUP BY account_type;



SELECT city, COUNT(*) AS num_customers
FROM Customers
GROUP BY city;


SELECT *
FROM Accounts
WHERE balance > (SELECT AVG(balance) FROM Accounts);



SELECT transaction_type, SUM(amount) AS total_amount
FROM Transactions
GROUP BY transaction_type;



SELECT DISTINCT c.*
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
WHERE a.balance > (SELECT AVG(balance) FROM Accounts);



SELECT a.*
FROM Accounts a
JOIN (
    SELECT account_id, AVG(amount) AS avg_trans
    FROM Transactions
    GROUP BY account_id
) t ON a.account_id = t.account_id
WHERE t.avg_trans > (SELECT AVG(amount) FROM Transactions);



SELECT c.customer_id, c.name, SUM(l.loan_amount) AS total_loan
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Loans l ON a.account_id = l.account_id
GROUP BY c.customer_id, c.name;




SELECT DISTINCT c.customer_id, c.name
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Loans l ON a.account_id = l.account_id
JOIN Payments p ON l.loan_id = p.loan_id
GROUP BY l.loan_id, c.customer_id, c.name, l.loan_amount
HAVING SUM(p.payment_amount) > 0.5 * l.loan_amount;



SELECT l.loan_id, l.loan_amount, SUM(p.payment_amount) AS total_paid
FROM Loans l
LEFT JOIN Payments p ON l.loan_id = p.loan_id
GROUP BY l.loan_id, l.loan_amount
HAVING COALESCE(SUM(p.payment_amount), 0) < l.loan_amount;



SELECT c.city, COUNT(DISTINCT c.customer_id) AS customer_count, AVG(a.balance) AS avg_balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.city
HAVING COUNT(DISTINCT c.customer_id) > 1;



SELECT account_id,
       SUM(CASE WHEN transaction_type = 'Deposit' THEN amount ELSE 0 END) AS total_deposit,
       SUM(CASE WHEN transaction_type = 'Withdrawal' THEN amount ELSE 0 END) AS total_withdrawal
FROM Transactions
GROUP BY account_id;



SELECT loan_id, MAX(payment_amount) AS max_payment
FROM Payments
GROUP BY loan_id;


SELECT account_id, COUNT(*) AS num_transactions
FROM Transactions
GROUP BY account_id
ORDER BY num_transactions DESC
LIMIT 1;



SELECT customer_id, COUNT(*) AS total_accounts, SUM(balance) AS total_balance
FROM Accounts
GROUP BY customer_id;



SELECT t.account_id
FROM Transactions t
WHERE t.transaction_date >= CURDATE() - INTERVAL 1 MONTH
GROUP BY t.account_id
HAVING COUNT(*) = (
  SELECT COUNT(*)
  FROM Transactions t2
  WHERE t2.account_id = t.account_id
);



SELECT c.*
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
LEFT JOIN Transactions t ON a.account_id = t.account_id
WHERE t.account_id IS NULL;



SELECT account_id
FROM Transactions
GROUP BY account_id
HAVING SUM(CASE WHEN transaction_type = 'Withdrawal' THEN 1 ELSE 0 END) = 0
   AND SUM(CASE WHEN transaction_type = 'Deposit' THEN 1 ELSE 0 END) > 0;



SELECT loan_id
FROM Payments
GROUP BY loan_id
HAVING MAX(payment_amount) < (SELECT AVG(payment_amount) FROM Payments);



SELECT DISTINCT c.customer_id, c.name
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Loans l ON a.account_id = l.account_id
JOIN Transactions t ON a.account_id = t.account_id
WHERE t.transaction_date > l.start_date;



SELECT c.customer_id, c.name, SUM(p.payment_amount) AS total_paid
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Loans l ON a.account_id = l.account_id
JOIN Payments p ON l.loan_id = p.loan_id
GROUP BY c.customer_id, c.name
ORDER BY total_paid DESC
LIMIT 1;



SELECT customer_id
FROM Accounts
GROUP BY customer_id
HAVING COUNT(DISTINCT account_type) > 1;



SELECT DISTINCT c.customer_id, c.name
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Loans l ON a.account_id = l.account_id
WHERE c.signup_date < '2022-01-01';



SELECT account_id, SUM(amount) AS total_amount
FROM Transactions
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 3;



SELECT c.customer_id, c.name, MIN(t.transaction_date) AS first_transaction
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Transactions t ON a.account_id = t.account_id
GROUP BY c.customer_id, c.name;



SELECT l.loan_id, 
       SUM(p.payment_amount) / l.loan_amount * 100 AS percent_paid
FROM Loans l
LEFT JOIN Payments p ON l.loan_id = p.loan_id
GROUP BY l.loan_id, l.loan_amount;



SELECT DISTINCT c.customer_id, c.name
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Loans l ON a.account_id = l.account_id
LEFT JOIN Payments p ON l.loan_id = p.loan_id
WHERE p.payment_id IS NULL;



SELECT c.customer_id, c.name, a.balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
WHERE a.balance > ALL (
    SELECT a2.balance
    FROM Accounts a2
    JOIN Customers c2 ON a2.customer_id = c2.customer_id
    WHERE c2.city = c.city AND c2.customer_id <> c.customer_id
);



SELECT 
  CASE 
    WHEN tenure_months < 12 THEN '<12'
    WHEN tenure_months BETWEEN 12 AND 24 THEN '12-24'
    ELSE '>24'
  END AS tenure_group,
  AVG(interest_rate) AS avg_interest
FROM Loans
GROUP BY tenure_group;



SELECT *
FROM Accounts
WHERE balance >= (SELECT PERCENTILE_CONT(0.9) WITHIN GROUP (ORDER BY balance) 
  FROM Accounts
);







































































































































