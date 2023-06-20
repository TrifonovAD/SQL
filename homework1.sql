-- Homework 1

-- Задание 1.

CREATE DATABASE IF NOT EXISTS homework1;
USE homework1;

-- Создание таблицы phone

DROP TABLE IF EXISTS phone;
CREATE TABLE phone
(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(45),
    Manufacturer VARCHAR(45),
    ProductCount INT,
    Price INT    
);

INSERT phone (ProductName, Manufacturer, ProductCount, Price)
VALUES
	( "iPhone X", "Apple", 3, 76000 ),
    ( "iPhone 8", "Apple", 2, 51000 ),
    ( "Galaxy S9", "Samsung", 2, 56000 ),
    ( "Galaxy S8", "Samsung", 1, 41000 ),
    ( "P20 Pro", "Huawei", 5, 36000 );
    
SELECT * FROM phone;
    
-- Задание 2. Выведите название, производителя и цену для товаров, количество которых превышает 2 (SQL - файл, скриншот, либо сам код)

SELECT ProductName, Manufacturer, Price
FROM phone
WHERE ProductCount > 2;

-- Задание 3. Выведите весь ассортимент товаров марки “Samsung”

SELECT *
FROM phone
WHERE Manufacturer = "Samsung";


SELECT *
FROM phone
WHERE ProductCount * Price BETWEEN 100000 AND 145000;

/* 4.*** С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE” для 4.3 ):
	4.1. Товары, в которых есть упоминание "Iphone"
*/

SELECT * 
FROM phone 
WHERE ProductName LIKE '%Iphone%';

-- 4.2. Товары, в которых есть упоминание "Galaxy"

SELECT * 
FROM phone 
WHERE ProductName LIKE '%Galaxy%';

-- 4.3.  Товары, в которых есть ЦИФРЫ
SELECT * 
FROM phone 
WHERE ProductName RLIKE "\\d";


-- 4.4.  Товары, в которых есть ЦИФРА "8"
SELECT * 
FROM phone 
WHERE ProductName LIKE '%8%';
