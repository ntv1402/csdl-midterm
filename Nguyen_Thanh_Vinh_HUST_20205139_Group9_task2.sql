SELECT  OrderYear as "1stPurchaseYear", Count(DISTINCT  CustomerKey) as NoNewNustomer
FROM (select DATEPART(YEAR, OrderDate) AS OrderYear, CustomerKey
		FROM FactInternetSales)
		AS InternetMonthAmount
GROUP BY OrderYear
ORDER BY OrderYear