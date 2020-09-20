
/*3 задание проекта - создание пустой БД*/
create schema Tourist_shop;

create table Tourist_shop.Supplier (
    ID_supplier int primary key not null
    , supplier_name varchar(100) 
    , country_supplier varchar(100) 
    , city_supplier varchar(100) 
    , address_supplier varchar(100)
    , telephone_supplier varchar(11) 
    , accout_supplier varchar(20)
);


create table Tourist_shop.Category (
    ID_category int primary key not null
    , name_category varchar(100) 
    , description_category varchar(100) 
  );
 
create table Tourist_shop.Product (
    ID_product int primary key not null
    , ID_supplier int not null
    , ID_category int not null
    , name_product varchar(100) 
    , country_product varchar(100)
    , мodel_product varchar(100)
    , сolor_product varchar(100)
    , price_product decimal(12,2)
    , count_product int 
    , date_supply_product date
    ,FOREIGN KEY (ID_supplier) REFERENCES Tourist_shop.Supplier(ID_supplier)
    ,FOREIGN KEY (ID_category) REFERENCES Tourist_shop.Category(ID_category)
);

    create table Tourist_shop.Title (
    ID_title int primary key not null
    , title_name varchar(100) 
    , title_wage decimal(12,2) 
  );
 
  create table Tourist_shop.Employee (
    ID_employee int primary key not null
    , ID_title int  not null
    , firstname_employee varchar(100)
    , middlename_employee varchar(100)
    , lastname_employee varchar(100)
    , birthdate_employee date
    , date_of_employment date
    , address_employee varchar(100)
    , telephone_employee varchar(11) 
    ,FOREIGN KEY (ID_title) REFERENCES Tourist_shop.Title(ID_title)
   );
  
create table Tourist_shop.Realization (
    ID_realization int primary key not null
    , date_realization date
    , time_realization time
    , ID_employee int not null
    ,FOREIGN KEY (ID_employee) REFERENCES Tourist_shop.Employee(ID_employee)
   );

create table Tourist_shop.Product_Realization (
    ID_realization int  not null
    , ID_product int  not null
    , quantity_product int
    , cost_product decimal(12,2)
    ,Primary key (ID_realization, ID_product )
    ,FOREIGN KEY (ID_realization) REFERENCES Tourist_shop.Realization(ID_realization)
    ,FOREIGN KEY (ID_product) REFERENCES Tourist_shop.Product(ID_product)
);

/*4 задание проекта - заполнение БД данными*/
insert into Tourist_shop.Supplier values('1','ООО "Орион"','Россия','Москва','ул.Ленина 45 офис 234', '89140243356', '40817810099910004312' );
insert into Tourist_shop.Supplier values('2','ООО "Алиса"','Россия','Санкт-Петербург','ул. Ленинская 35 офис 22', '89140247889', '40817810099910007788' );
insert into Tourist_shop.Supplier values('3','ООО "Мечта"','Россия','Рязань','ул. Омская 4 офис 27', '89240247777', '40817810099910009999' );
insert into Tourist_shop.Supplier values('4','ООО "Орел"','Россия','Москва','ул. Григорьева 5 офис 7', '89240246666', '40817810099910001177' );
insert into Tourist_shop.Supplier values('5','ООО "Небо"','Россия','Владивосток','ул. Воробьевская 5', '89240245556', '40817810099910008888' );
insert into Tourist_shop.Supplier values('6','ООО "Радуга"','Россия','Ростов','ул. Драпкина 45', '89140248856', '40817810099910001111' );
insert into Tourist_shop.Supplier values('7','ООО "Марс"','Россия','Ростов','ул. Дудова 3', '89140247796', '40817810099910007841' );
insert into Tourist_shop.Supplier values('8','ООО "Венера"','Россия','Владивосток','ул. Смолина 3', '89140245566', '40817810099910007895' );
insert into Tourist_shop.Supplier values('9','ООО "Вишняков"','Россия','Пермь','ул. Каменская 89', '89140289796', '40817810099910004433' );
insert into Tourist_shop.Supplier values('10','ООО "Надежда"','Россия','Свердловск','ул. Рыбаков 13', '89140241296', '40817810099910079252' );

insert into Tourist_shop.Category values('1','одежда','одежда включает: нательное белье, спортивный костюм, куртка, штаны, носки, футболка, шапка');
insert into Tourist_shop.Category values('2','посуда для туризма','посуда для туризма включает: термос, тарелка, кружка, котелок, набор для пикника');
insert into Tourist_shop.Category values('3','палатки и тенты','палатки включают: палатка 1 м., палатка 2-х м., палатка 3-х м.,палатка 4-х м.,шатер');
insert into Tourist_shop.Category values('4','спальные мешки','спальные мешки включают: мешок демисезонный, мешок зимний, мешок 2 м.');
insert into Tourist_shop.Category values('5','кемпинговая мебель','кемпинговая мебель  включают: походное кресло, походный стул, раскладушка');
insert into Tourist_shop.Category values('6','матрасы','матрасы  включают: матрас 60x120, матрас 120x200, матрас 80x200');
insert into Tourist_shop.Category values('7','аксссуары для туризма','аксссуары для туризма  включают: рюкзак, палки, фонарь, коврик, нож');

insert into Tourist_shop.Product values('1','1','1','спортивный костюм','Турция', 'M3Z (48)', 'черный', '4500.00', '50', '10.01.2015');
insert into Tourist_shop.Product values('2','1','1','спортивный костюм','Турция', 'M3Z (50)', 'красный', '4500.00', '50', '10.01.2015' );
insert into Tourist_shop.Product values('3','2','1','шапка','Турция', 'X55-1', 'белый', '500.00', '50' , '11.01.2015');
insert into Tourist_shop.Product values('4','3','2','термос','Китай', 'С22 (3л)', 'черный', '1800.00', '50', '12.01.2015' );
insert into Tourist_shop.Product values('5','3','2','термос','Китай', 'С22 (2л)', 'белый', '1500.00', '50' , '12.01.2015' );
insert into Tourist_shop.Product values('6','4','3','палатка','Россия', 'XC511 (2м)', 'зеленый', '6500.00', '50', '13.01.2015' );
insert into Tourist_shop.Product values('7','4','3','палатка','Россия', 'XC512 (3м)', 'синий', '7500.00', '50' , '13.01.2015' );
insert into Tourist_shop.Product values('8','4','3','шатер','Россия', 'XC500', 'серый', '10000.00', '50' , '13.01.2015' );
insert into Tourist_shop.Product values('9','5','4','спальный мешок','Россия', 'XZ1(дем)', 'серый', '3200.00' , '50', '10.01.2019' );
insert into Tourist_shop.Product values('10','5','4','спальный мешок','Россия', 'XRR15(зим)', 'голубой', '4100.00', '50' , '10.01.2019' );
insert into Tourist_shop.Product values('11','6','5','кресло','Китай', 'ZA-1', 'зеленый', '3500.00', '50' , '13.01.2018' );
insert into Tourist_shop.Product values('12','6','5','кресло','Италия', 'A-189', 'синий', '4400.00', '50', '15.01.2018'  );
insert into Tourist_shop.Product values('13','6','5','раскладушка','Россия', 'X-89 ', 'серый', '5400.00', '50', '15.01.2018'  );
insert into Tourist_shop.Product values('14','6','6','матрас','Россия', 'XSS-159 (60x120)', 'синий', '2400.00', '50', '13.01.2018'   );
insert into Tourist_shop.Product values('15','6','6','матрас','Россия', 'XSS-160 (120x200)', 'черный', '2800.00', '50', '15.01.2018'  );
insert into Tourist_shop.Product values('16','6','6','матрас','Россия', 'XSS-161 (80x200)', 'серый', '2600.00', '50', '15.01.2018'   );
insert into Tourist_shop.Product values('17','3','7','рюкзак','Китай', 'M-164', 'хаки', '1600.00', '50', '12.01.2015' );
insert into Tourist_shop.Product values('18','3','7','рюкзак','Китай', 'M-165', 'синий', '1800.00', '50' , '12.01.2015' );
insert into Tourist_shop.Product values('19','3','7','палки','Россия', 'С45', 'черный', '900.00', '50' , '12.01.2015' );
insert into Tourist_shop.Product values('20','3','7','фонарь','Россия', 'SS-781', 'черный', '800.00', '50' , '12.01.2015' );

insert into Tourist_shop.Title values('1','менеджер','35000.00');
insert into Tourist_shop.Title values('2','старший менеджер','40000.00');
insert into Tourist_shop.Title values('3','директор','100000.00');
insert into Tourist_shop.Title values('4','бухгалтер','50000.00');

insert into Tourist_shop.Employee values('1','1','Борис','Борисович','Белкин', '01.03.1980', '10.01.2015', 'Елизово, ул.Ленина, д.5, кв 4', '89140251088' );
insert into Tourist_shop.Employee values('2','1','Алина','Ивановна','Зайкина', '01.01.1981', '12.02.2016', 'Елизово, ул.Рыбаков, д.18, кв 88', '89140251077');
insert into Tourist_shop.Employee values('3','1','Ольга','Георгиевна','Лисицина', '02.04.1980', '11.03.2017', 'Елизово, ул.Рыбаков, д.9, кв 99', '89140251099');
insert into Tourist_shop.Employee values('4','1','Михаил','Михайлович','Мишкин', '03.03.1985', '14.04.2018', 'Елизово, ул.Советов, д.1, кв 3', '89140251033');
insert into Tourist_shop.Employee values('5','2','Иван','Иванович','Ежков', '04.04.1979', '19.04.2015', 'Елизово, ул.Ленина, д.3, кв 33', '89140251013');
insert into Tourist_shop.Employee values('6','2','Петр','Петрович','Кротков', '05.05.1978', '16.04.2016', 'Елизово, ул.Сырая, д.4, кв 44', '89140251044');
insert into Tourist_shop.Employee values('7','3','Ольга','Владимировна','Кудринская', '02.03.1981', '10.01.2015', 'Елизово, ул.Ленина, д.24, кв 14', '89140251065');
insert into Tourist_shop.Employee values('8','4','Ирина','Александровна','Волкова', '07.02.1982', '10.01.2015', 'Елизово, ул.Ленина, д.7, кв 74', '89140251011')

insert into Tourist_shop.Realization values('1','01.03.2019','15:00','1' );
insert into Tourist_shop.Realization values('2','07.05.2019','17:00','2' );
insert into Tourist_shop.Realization values('3','08.06.2019','18:00','3' );
insert into Tourist_shop.Realization values('4','09.07.2019','13:00','4' );
insert into Tourist_shop.Realization values('5','10.07.2019','11:00','1' );
insert into Tourist_shop.Realization values('6','10.07.2019','12:00','2' );
insert into Tourist_shop.Realization values('7','07.05.2020','13:30','3' );
insert into Tourist_shop.Realization values('8','07.05.2020','15:10','4' );
insert into Tourist_shop.Realization values('9','07.05.2020','17:34','4' );
insert into Tourist_shop.Realization values('10','08.06.2020','11:45','1' );
insert into Tourist_shop.Realization values('11','08.06.2020','18:03','2' );
insert into Tourist_shop.Realization values('12','09.06.2020','12:04','1' );
insert into Tourist_shop.Realization values('13','09.07.2020','12:07','2' );

insert into Tourist_shop.Product_Realization values('1','1','1','4500.00' );
insert into Tourist_shop.Product_Realization values('2','2','1','4500.00' );
insert into Tourist_shop.Product_Realization values('3','3','1','500.00' );
insert into Tourist_shop.Product_Realization values('4','4','1','1800.00' );
insert into Tourist_shop.Product_Realization values('5','5','1','1500.00' );
insert into Tourist_shop.Product_Realization values('6','6','1','6500.00' );
insert into Tourist_shop.Product_Realization values('7','7','1','7500.00' );
insert into Tourist_shop.Product_Realization values('8','8','1','10000.00' );
insert into Tourist_shop.Product_Realization values('9','9','1','3200.00' );
insert into Tourist_shop.Product_Realization values('10','10','1','4100.00' );
insert into Tourist_shop.Product_Realization values('11','11','1','3500.00' );
insert into Tourist_shop.Product_Realization values('12','12','1','4400.00' );
insert into Tourist_shop.Product_Realization values('13','13','1','5400.00' );

/*отображение заполненных таблиц БД*/
select * from Tourist_shop.Supplier
select * from Tourist_shop.Category
select * from Tourist_shop.Product
select * from Tourist_shop.Title
select * from Tourist_shop.Employee
select * from Tourist_shop.Realization
select * from Tourist_shop.Product_Realization

/*5 задание проекта - создание пяти смысловых запросов*/

/* Найти все товары с ценой (за 1 единицу товара)выше 3000 руб. */
Select ID_product, name_product, price_product
from Tourist_shop.Product
where price_product>3000 ;

/* Найти информацию о поставщиках, которые не из Москвы и не из Владивостока*/
Select ID_supplier , supplier_name , city_supplier, telephone_supplier     
from  Tourist_shop.Supplier 
where city_supplier not in ('Москва', 'Владивосток');

/* Вывести информацию о продаже товара, которую осуществлял сотрудник с фамилией Белкин (код реализации, дата продажи, фамилия сотрудника */
select  Realization.ID_realization, Realization.date_realization, Employee.lastname_employee 
from Tourist_shop.Employee
inner join Tourist_shop.Realization
on Employee.ID_employee = Realization.ID_employee
where Employee.lastname_employee = 'Белкин';

/* Найти все товары, у которых страна производитель - Турция или Россия*/
Select ID_product, name_product, country_product 
from Tourist_shop.Product
where country_product= 'Турция' or country_product= 'Россия';


/* Вывести информацию о количестве сотрудников и должностях, на котороых работают с зарплатой меньше 50000 рублей)*/
select count(Employee.ID_employee ),title_name
from Tourist_shop.Title
inner join Tourist_shop.Employee
on Employee.ID_title = Title.ID_title
where Title.title_wage<50000
group by title_name;

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

/*8 задание проекта - сложные представления с join*/
/*представление - для отображения сотрудников (Фамилия и адрес) и названий их должностей*/
create view predstavlenie8_Employee
as 
select lastname_employee, date_of_employment, 
	address_employee,  title.title_name
from Tourist_shop.Employee
inner join Tourist_shop.title
on Employee.ID_title = Title.ID_title;

 select * from predstavlenie8_Employee
 drop view predstavlenie8_Employee

/*представление - для отображения списка товаров магазина и их поставщиков с указанием телефона*/
create view predstavlenie8_product
as 
select ID_product, name_product, Supplier.supplier_name, Supplier.telephone_supplier
from Tourist_shop.Product
inner join Tourist_shop.Supplier
on Product.ID_supplier = Supplier.ID_supplier;

 select * from predstavlenie8_product
 drop view predstavlenie8_product

