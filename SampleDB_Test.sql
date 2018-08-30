SELECT * FROM classicmodels.offices;
SELECT * FROM classicmodels.employees;
select * from classicmodels.customers;

/* ====================================== INNERjoin(Commit_user:daegeun_sql / branch:main_user) ↓====================================== */
/*officeCode、reportsTo=1002, 1143*/
select classicmodels.offices.officeCode, classicmodels.employees.reportsTo
from classicmodels.offices inner join classicmodels.employees
	on classicmodels.offices.officeCode = classicmodels.employees.officeCode
where classicmodels.employees.reportsTo = 1002 or classicmodels.employees.reportsTo = 1143
order by classicmodels.offices.officeCode desc;

/*officeCode、reportsTo=1002, 1143　　のoお客様*/
select classicmodels.customers.salesRepEmployeeNumber
from classicmodels.offices inner join classicmodels.employees
		on classicmodels.offices.officeCode = classicmodels.employees.officeCode
	inner join classicmodels.customers
		on classicmodels.employees.employeeNumber = classicmodels.customers.salesRepEmployeeNumber
where classicmodels.employees.reportsTo=1002 or classicmodels.employees.reportsTo=1143
order by classicmodels.customers.salesRepEmployeeNumber desc;
/* ====================================== INNER join(Commit_user:daegeun_sql / branch:main_user) ↑====================================== */


select * from classicmodels.products;
select * from classicmodels.productlines;
select * from classicmodels.orders;


/* ====================================== Left&RiGHT Outer join(Commit_user:daegeun_sql_testOffice) -> (Commit_user:daegeun_sql_testHome) ↓====================================== */
/*products, productlines Join line*/
select classicmodels.products.productLine
from classicmodels.products left outer join classicmodels.productlines
	on classicmodels.products.productLine = classicmodels.productlines.productLine
order by classicmodels.products.productLine desc;

select classicmodels.products.productLine
from classicmodels.products right outer join classicmodels.productlines
	on classicmodels.products.productLine = classicmodels.productlines.productLine
order by classicmodels.products.productLine desc;
/* ====================================== Left&RiGHT Outer join(Commit_user:daegeun_sql_testOffice) -> (Commit_user:daegeun_sql_testHome) ↑====================================== */