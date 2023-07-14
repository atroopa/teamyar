-- CREATE PROCEDURE `GetTopSellingProducts`:
-- Retrieves the top selling products based on age range and date range.

DELIMITER //
CREATE PROCEDURE `GetTopSellingProducts` (
  IN `p_min_age` INT,
  IN `p_max_age` INT,
  IN `p_start_date` DATE,
  IN `p_end_date` DATE
)
BEGIN
  SELECT `p`.`name` AS `product_name`,
         SUM(`si`.`quantity`) AS `total_quantity`
  FROM `sales_invoices` `si`
  INNER JOIN `customers` `c` ON `si`.`customer_id` = `c`.`id`
  INNER JOIN `products` `p` ON `si`.`product_id` = `p`.`id`
  WHERE `c`.`age` BETWEEN `p_min_age` AND `p_max_age`
    AND `si`.`date` BETWEEN `p_start_date` AND `p_end_date`
  GROUP BY `p`.`name`
  ORDER BY `total_quantity` DESC
  LIMIT 10;
END //
DELIMITER ;