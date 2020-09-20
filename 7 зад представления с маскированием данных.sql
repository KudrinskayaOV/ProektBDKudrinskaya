/*7 задание проекта - представление с маскированием данных*/
create view shifr_Supplier 
as 
select ID_supplier, supplier_name, 
	'-----------' as telephone_supplier,
	'***************' accout_supplier
from Tourist_shop.Supplier;


create view shifr_Product 
as 
select ID_product, name_product, country_product, 
	' № мodel_product ' as мodel_product
from Tourist_shop.Product;


create view shifr_Employee
as 
select ID_employee, lastname_employee, date_of_employment, 
	' address ' as address_employee
from Tourist_shop.Employee;

create view shifr_Title
as 
select ID_title, title_name, 
	' **000' as title_wage
from Tourist_shop.Title;


  select * from shifr_Supplier 
  select * from shifr_Product
  select * from shifr_Employee
  select * from shifr_Title
   
   drop view shifr_Supplier
   drop view shifr_Product
   drop view shifr_Employee
   drop view shifr_Title



