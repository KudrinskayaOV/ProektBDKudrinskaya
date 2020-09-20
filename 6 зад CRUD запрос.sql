
/*6 ������� ������� - CRUD -�������*/

/*��������� ����� ������ - ���������� � ����� ���������*/
insert into Tourist_shop.Title (ID_title, title_name, title_wage)  values('5','������� ���������','55000.00');
 /*�������� (���������) ������������ ������ - �������� ������ �������� � ��������� ������� ���������*/
update Tourist_shop.Title set title_wage = '60000.00' where title_name='������� ���������';
/* ������� ������������ ������ - ������� ������, ��� � ������� ������� ����� �������� 60000*/
delete from Tourist_shop.Title where title_wage = '60000.00';
/*�������� ������, ���������������  ��������  - ���������� ��� ������, � ������� � ������� �������� <= 100000.00*/
select * from Tourist_shop.Title where title_wage <= '100000.00'

/*��������� ����� ������ - ���������� � ����� ����������*/
insert into Tourist_shop.Employee (ID_employee, ID_title, firstname_employee,
middlename_employee, lastname_employee, birthdate_employee, date_of_employment, 
address_employee, telephone_employee) 
values('9','1','������', '������������','��������', '02.02.1983', '15.09.2020', '�������, ��.������, �.13, �� 22', '89140256579')
/*�������� (���������) ������������ ������ - � ���������� � ����� 9 �������� ���� ����������� �� ������*/
update Tourist_shop.Employee set date_of_employment = '14.09.2020' where ID_employee ='9';
/* ������� ������������ ������ - ������� �����, ��� � ���� ���� ����������� �� ������ ����� 14.09.2020 */
delete from Tourist_shop.Employee where date_of_employment = '14.09.2020';
/*�������� ������, ���������������  �������� - ���������� ��� ������, � ������� � ������� ���� ����������� �� ������ <='01.09.2020'*/
select * from Tourist_shop.Employee where date_of_employment <= '01.09.2020'

