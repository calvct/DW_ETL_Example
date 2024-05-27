/*
Key Metrics: 
1. Daily/Weekly/Monthly Sales: Provides information on total sales over various time periods, helping CEOtrack sales performance over time.
2. Average Order Value: Shows the average value of orders placed by customers, aiding in planning promotions or special offer packages.
3. Customer Purchase Frequency: Provides insights into how often customers return to order, helping identify loyal customers and develop loyalty programs.
4. Best-Selling Products Analysis: Identifies the most frequently sold products, enabling CEO make better stock and promotional decisions.
5. Best-City for Selling Performances: Provides information on which City (OLTP) sold the highest amount, helping CEO to promote city's manager.
*/

/* Ini untuk Key Metrics 1. 
	Pertama kita buat dulu VIEW untuk mendapatkan semua sales yg pernah terjadi.
	Setelah itu kita buat PROCEDURE untuk membantu kita melakukan QUERY filtering di Front-End
*/ 

-- kita sudah membuat FactTable bernama SalesFact
SELECT * FROM SalesFact;

DROP VIEW IF EXISTS vSales;
CREATE VIEW vSales AS
SELECT o.OrderDate as SalesDate, sum(o.TotalAmount) as TotalSales
FROM Orders o
GROUP BY o.OrderDate;

SELECT * FROM vSales;

DROP PROCEDURE IF EXISTS pSalesFilter;
DELIMITER $$
CREATE PROCEDURE pSalesFilter(IN parMode char(1), IN parStart DATE, IN parEnd DATE)
BEGIN
  IF parMode = '0' THEN
		-- Daily
    SELECT DATE_FORMAT(SalesDate,'%d-%m-%y') as SalesDate, TotalSales
    FROM vSales;
  ELSEIF parMode = '1' THEN
		-- Weekly
    SELECT YEARWEEK(SalesDate) YearWeek, sum(TotalSales) as TotalSales
    FROM vSales
    GROUP BY YEARWEEK(SalesDate);
  ELSEIF parMode = '2' THEN
		-- Monthly
    SELECT MONTH(SalesDate) as MonthNo, sum(TotalSales) as TotalSales
    FROM vSales
    GROUP BY MONTH(SalesDate);
	ELSEIF parMode = '3' THEN
		-- SpesificRange (Date)
    SELECT DATE_FORMAT(SalesDate,'%d-%m-%y') as SalesDate, TotalSales
    FROM vSales
    WHERE SalesDate >= parStart AND SalesDate <= parEnd;
  END IF;
END$$
DELIMITER ;

CALL pSalesFilter('3','2024-01-15','2024-01-20');

/* ---------------------------------------------------------------------------------------- */ 
/* Ini untuk Key Metrics 4. 
	Pertama kita buat dulu VIEW untuk mendapatkan semua product yg terjual.
	Setelah itu kita buat PROCEDURE untuk membantu kita melakukan QUERY filtering di Front-End
*/ 

DROP VIEW IF EXISTS vSoldProducts;
CREATE VIEW vSoldProducts AS
SELECT o.OrderDate, sf.ProductID, p.ProductName, sum(sf.Quantity) as TotalSold
FROM SalesFact sf
LEFT JOIN Products p ON p.ProductID = sf.ProductID
LEFT JOIN Orders o ON o.OrderID = sf.OrderID
GROUP BY o.OrderDate, sf.ProductID, p.ProductName
ORDER BY o.OrderDate, sf.ProductID, sum(sf.Quantity) DESC;

SELECT * FROM vSoldProducts;

DROP PROCEDURE IF EXISTS pSoldProductsFilter;
DELIMITER $$
CREATE PROCEDURE pSoldProductsFilter(IN parMode char(1))
BEGIN
  IF parMode = '0' THEN
		-- ALL
    SELECT sp.ProductID, sp.ProductName, sum(sp.TotalSold) as TotalSold
		FROM vSoldProducts sp
		GROUP BY sp.ProductID
		ORDER BY TotalSold DESC;
  ELSEIF parMode = '1' THEN
		-- Monthly
		SELECT MONTH(sp.OrderDate) as MonthNo, sp.ProductID, sp.ProductName, sum(sp.TotalSold) as TotalSold
		FROM vSoldProducts sp
		GROUP BY sp.ProductID
		ORDER BY MonthNo DESC, ProductID, TotalSold DESC;
  ELSEIF parMode = '2' THEN
		-- Yearly
    SELECT YEAR(sp.OrderDate) as YearNo, sp.ProductID, sp.ProductName, sum(sp.TotalSold) as TotalSold
		FROM vSoldProducts sp
		GROUP BY sp.ProductID
		ORDER BY YearNo DESC, ProductID, TotalSold DESC;
	END IF;
END$$
DELIMITER ;

CALL pSoldProductsFilter('2');