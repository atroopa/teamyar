-- Test Cases:
-- Testing the `InsertOrUpdateInvoice` stored procedure with sample input parameters.
-- This will insert or update an invoice record in the `sales_invoices` table.

USE `teamyar`;

CALL InsertOrUpdateInvoice(1, 2, 3, 100, '2023-07-10');

-- Testing the `GetCustomerPurchases` stored procedure with sample input parameters.
-- This will retrieve customer purchases for a specific product within a date range.

CALL GetCustomerPurchases('مانیتور', '2023-07-01', '2023-07-10');

-- Testing the `GetTopSellingProducts` stored procedure with sample input parameters.
-- This will retrieve the top selling products based on age range and date range.

CALL GetTopSellingProducts(20, 40, '2023-07-01', '2023-07-31');
