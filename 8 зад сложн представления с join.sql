/*8 ������� ������� - ������� ������������� � join*/
/*������������� - ��� ����������� ����������� (������� � �����) � �������� �� ����������*/
create view predstavlenie8_Employee
as 
select lastname_employee, date_of_employment, 
	address_employee,  title.title_name
from Tourist_shop.Employee
inner join Tourist_shop.title
on Employee.ID_title = Title.ID_title;

 select * from predstavlenie8_Employee
 drop view predstavlenie8_Employee

/*������������� - ��� ����������� ������ ������� �������� � �� ����������� � ��������� ��������*/
create view predstavlenie8_product
as 
select ID_product, name_product, Supplier.supplier_name, Supplier.telephone_supplier
from Tourist_shop.Product
inner join Tourist_shop.Supplier
on Product.ID_supplier = Supplier.ID_supplier;

 select * from predstavlenie8_product
 drop view predstavlenie8_product



