DROP PROCEDURE IF EXISTS RatingPro;
DELIMITER $$
CREATE PROCEDURE Supplier_ratings()
BEGIN
   SELECT Supplier.SUPP_ID, SUPP_NAME, RAT_RATSTARS,
 CASE
  WHEN RAT_RATSTARS = 5 THEN 'Excellent Service'
  WHEN RAT_RATSTARS > 4 THEN 'Good Service'
  WHEN RAT_RATSTARS > 2 THEN 'Average Service'
  ELSE 'Poor Service'
 END AS Type_of_Service
 FROM Rating INNER JOIN `Order` ON Rating.ORD_ID = `Order`.ORD_ID
 INNER JOIN Supplier_pricing ON `Order`.PRICING_ID = Supplier_pricing.PRICING_ID
 INNER JOIN Supplier ON Supplier_pricing.SUPP_ID = Supplier.SUPP_ID;
   END $$
DELIMITER ;

CALL Supplier_ratings();