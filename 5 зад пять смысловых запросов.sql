


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

