use teamyar;

CALL InsertOrUpdateInvoice(1, 2, 3, 100, '2023-07-10');
CALL GetCustomerPurchases('مانیتور', '2023-07-01', '2023-07-10');
CALL GetTopSellingProducts(20, 40, '2023-07-01', '2023-07-31');