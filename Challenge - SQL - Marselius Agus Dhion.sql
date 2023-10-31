-- Query 1 : Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
SELECT ROUND(AVG(c.age), 2) AS Avg_age, c."Marital Status"
FROM "Transaction" t
INNER JOIN customer c 
ON c.customerid = t.customerid
GROUP BY 2

-- Query 2 : Berapa rata-rata umur customer jika dilihat dari gender nya ?
SELECT ROUND(AVG(c.age), 2) AS Avg_age, c.gender
FROM "Transaction" t
INNER JOIN customer c 
ON c.customerid = t.customerid
GROUP BY 2

-- Query 3 : Tentukan nama store dengan total quantity terbanyak!
SELECT s.storename, SUM(t.qty) AS quantity
FROM store s
INNER JOIN "Transaction" t ON s.storeid = t.storeid
GROUP BY 1 ORDER BY quantity DESC
LIMIT 1

-- Query 4 : Tentukan nama produk terlaris dengan total amount terbanyak! 
SELECT p."Product Name", SUM(t.totalamount) AS total_amount
FROM product p
INNER JOIN "Transaction" t ON p.productid = t.productid
GROUP BY 1 ORDER BY total_amount DESC
LIMIT 1
