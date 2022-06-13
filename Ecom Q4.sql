SELECT ORD_ID AS `Order Id`, `PRO_NAME V` AS `Product Name` FROM `Order`
LEFT JOIN Supplier_pricing ON `Order`.PRICING_ID = Supplier_pricing.PRICING_ID
   LEFT JOIN Product ON Supplier_pricing.PRO_ID = Product.PRO_ID
   WHERE CUS_ID = 2;