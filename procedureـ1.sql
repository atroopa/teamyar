-- CREATE PROCEDURE `InsertOrUpdateInvoice`:
-- Checks if an invoice exists for the given customer and product, updates it if exists, or inserts a new one if not.

DELIMITER //
CREATE PROCEDURE `InsertOrUpdateInvoice` (
  IN `p_customer_id` INT,
  IN `p_warehouse_id` INT,
  IN `p_product_id` INT,
  IN `p_quantity` INT,
  IN `p_date` DATE
)
BEGIN
  DECLARE `invoice_id` INT;
  
  -- Check if an invoice exists for the customer and product
  SELECT `id` INTO `invoice_id`
  FROM `sales_invoices`
  WHERE `customer_id` = `p_customer_id`
    AND `product_id` = `p_product_id`;
  
  IF `invoice_id` IS NOT NULL THEN
    -- Update the existing invoice
    UPDATE `sales_invoices`
    SET `warehouse_id` = `p_warehouse_id`,
        `quantity` = `p_quantity`,
        `date` = `p_date`
    WHERE `id` = `invoice_id`;
  ELSE
    -- Insert a new invoice
    INSERT INTO `sales_invoices` (`customer_id`, `warehouse_id`, `product_id`, `quantity`, `date`)
    VALUES (`p_customer_id`, `p_warehouse_id`, `p_product_id`, `p_quantity`, `p_date`);
  END IF;
END //
DELIMITER ;