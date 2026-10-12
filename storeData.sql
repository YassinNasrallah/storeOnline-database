create table Customers (
  customerId INT AUTO_INCREMENT PRIMARY KEY,
  firstName varchar(30),
  lastName varchar(30),
  birthDate date ,
  moneySpent int
);
insert into Customers(firstName, lastName, birthDate, moneySpent) values(
'omaima',
'khoulal',
 '2005-10-08',
 50
);
select * from Customers


create table Products (
  ProductId INT AUTO_INCREMENT PRIMARY KEY,
  category varchar(30),
  price decimal(10,2)
);
insert into Products(category, price) values(
'nike gloves',
30.99
);
select * from Products




create table Employees (
  employeeId INT AUTO_INCREMENT PRIMARY KEY,
  firstName varchar(30),
  lastName varchar(30),
  birthDate Date
);
insert into Employees(firstName, lastName, birthDate) values(
'alex',
'mith',
'1985-10-2'
);
select * from Employees


CREATE TABLE Orders (
    orderId INT AUTO_INCREMENT PRIMARY KEY,
    customerId INT NOT NULL,
    employeeId INT NOT NULL,
    productId INT NOT NULL,
    orderTotal DECIMAL(10,2),
    orderDate DATE,
    FOREIGN KEY (customerId) REFERENCES Customers(customerId),
    FOREIGN KEY (employeeId) REFERENCES Employees(employeeId),
    FOREIGN KEY (productId) REFERENCES Products(ProductId)
);
insert into Orders(customerId, employeeId,productId, orderTotal, orderDate) values(
1,
1,
1,
500,
'2026-12-10'
)

select * from Orders