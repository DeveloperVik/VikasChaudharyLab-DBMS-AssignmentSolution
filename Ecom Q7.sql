SELECT Product.PRO_ID, `PRO_NAME V` AS `PRODUCT NAME` FROM PRODUCT
LEFT JOIN Supplier_pricing ON Product.PRO_ID = Supplier_pricing.PRO_ID
   LEFT JOIN `Order` ON Supplier_pricing.PRICING_ID = `Order`.PRICING_ID
   WHERE ORD_DATE > '2021-10-05';