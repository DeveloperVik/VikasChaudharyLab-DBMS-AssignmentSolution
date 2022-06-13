SELECT Category.CAT_ID, Category.CAT_NAME, `PRO_NAME V` AS `Product Name`, MIN(SUPP_PRICE) AS `Product Price` FROM Supplier_pricing
LEFT JOIN Product ON Supplier_pricing.PRO_ID = Product.PRO_ID
   LEFT JOIN Category ON Product.CAT_ID = Category.CAT_ID
   GROUP BY Category.CAT_ID, Category.CAT_NAME;