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


