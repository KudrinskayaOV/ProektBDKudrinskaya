
/*6 задание проекта - CRUD -запросы*/

/*добавляет новые данные - информацию о новой должности*/
insert into Tourist_shop.Title (ID_title, title_name, title_wage)  values('5','главный бухгалтер','55000.00');
 /*Изменяет (обновляет) существующие данные - изменяет размер зарплаты у должности главный бухгалтер*/
update Tourist_shop.Title set title_wage = '60000.00' where title_name='главный бухгалтер';
/* Удаляет существующие данные - удаляет запись, где в столбце заплата стоит значение 60000*/
delete from Tourist_shop.Title where title_wage = '60000.00';
/*Выбирает данные, удовлетворяющие  условиям  - отображает все записи, в которых в столбце зарплата <= 100000.00*/
select * from Tourist_shop.Title where title_wage <= '100000.00'

/*добавляет новые данные - информацию о новом сотруднике*/
insert into Tourist_shop.Employee (ID_employee, ID_title, firstname_employee,
middlename_employee, lastname_employee, birthdate_employee, date_of_employment, 
address_employee, telephone_employee) 
values('9','1','Марина', 'Владимировна','Петухова', '02.02.1983', '15.09.2020', 'Елизово, ул.Ленина, д.13, кв 22', '89140256579')
/*Изменяет (обновляет) существующие данные - у сотрудника с кодом 9 изменяет дату поступления на работу*/
update Tourist_shop.Employee set date_of_employment = '14.09.2020' where ID_employee ='9';
/* Удаляет существующие данные - удаляет сроку, где в поле дата поступления на работу стоит 14.09.2020 */
delete from Tourist_shop.Employee where date_of_employment = '14.09.2020';
/*Выбирает данные, удовлетворяющие  условиям - отображает все записи, в которых в столбце дата поступления на работу <='01.09.2020'*/
select * from Tourist_shop.Employee where date_of_employment <= '01.09.2020'

