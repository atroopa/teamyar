-- CREATE PROCEDURE `GetCustomerPurchases`:
-- Retrieves customer purchases based on the product name and date range.

DELIMITER //
CREATE PROCEDURE `GetCustomerPurchases` (
  IN `p_product_name` VARCHAR(100),
  IN `p_start_date` DATE,
  IN `p_end_date` DATE
)
BEGIN
  SELECT `c`.`name` AS `customer_name`,
         `p`.`name` AS `product_name`,
         `p`.`features` AS `product_features`,
         SUM(`si`.`quantity`) AS `total_quantity`
  FROM `sales_invoices` `si`
  INNER JOIN `customers` `c` ON `si`.`customer_id` = `c`.`id`
  INNER JOIN `products` `p` ON `si`.`product_id` = `p`.`id`
  INNER JOIN `warehouses` `w` ON `si`.`warehouse_id` = `w`.`id`
  WHERE `p`.`name` = `p_product_name`
    AND `w`.`name` IN ('تهران شعبه مرکزی', 'تهران شعبه ولیعصر')
    AND `si`.`date` BETWEEN `p_start_date` AND `p_end_date`
  GROUP BY `c`.`name`, `p`.`name`, `p`.`features`;
END //
DELIMITER ;
