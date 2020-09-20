


/*5 ������� ������� - �������� ���� ��������� ��������*/

/* ����� ��� ������ � ����� (�� 1 ������� ������)���� 3000 ���. */
Select ID_product, name_product, price_product
from Tourist_shop.Product
where price_product>3000 ;

/* ����� ���������� � �����������, ������� �� �� ������ � �� �� ������������*/
Select ID_supplier , supplier_name , city_supplier, telephone_supplier     
from  Tourist_shop.Supplier 
where city_supplier not in ('������', '�����������');

/* ������� ���������� � ������� ������, ������� ����������� ��������� � �������� ������ (��� ����������, ���� �������, ������� ���������� */
select  Realization.ID_realization, Realization.date_realization, Employee.lastname_employee 
from Tourist_shop.Employee
inner join Tourist_shop.Realization
on Employee.ID_employee = Realization.ID_employee
where Employee.lastname_employee = '������';

/* ����� ��� ������, � ������� ������ ������������� - ������ ��� ������*/
Select ID_product, name_product, country_product 
from Tourist_shop.Product
where country_product= '������' or country_product= '������';


/* ������� ���������� � ���������� ����������� � ����������, �� �������� �������� � ��������� ������ 50000 ������)*/
select count(Employee.ID_employee ),title_name
from Tourist_shop.Title
inner join Tourist_shop.Employee
on Employee.ID_title = Title.ID_title
where Title.title_wage<50000
group by title_name;

