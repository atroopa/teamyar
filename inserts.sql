-- Insert products
INSERT INTO `products` (`name`, `brand`, `color`, `model`, `features`) VALUES
  ('مانیتور', 'SAMSUNG', 'سفید', 'X10-50 - 19 اینچ', 'ویژگی های مانیتور سامسونگ '),
  ('مانیتور', 'SAMSUNG', 'مشکی', 'X10-50 - 19 اینچ', 'ویژگی های مانیتور سامسونگ '),
  ('مانیتور', 'LG', 'مشکی', 'L350H - 17 اینچ', 'ویژگی های مانیتور ال جی - صفحه نماش IP'),
  ('کیبورد', 'Logitech', '', '33J510', 'ویژگی های کیبورد لاجیتک');

-- Insert warehouses
INSERT INTO `warehouses` (`name`) VALUES
  ('تهران شعبه مرکزی'),
  ('تهران شعبه ولیعصر'),
  ('اصفهان شعبه حسن آباد');

-- Insert customers
INSERT INTO `customers` (`name`, `city`, `age`) VALUES
  ('مشتری ۱', 'تهران', 30),
  ('مشتری ۲', 'تهران', 25),
  ('مشتری ۳', 'اصفهان', 40);

-- Insert sales invoices
INSERT INTO `sales_invoices` (`customer_id`, `warehouse_id`, `product_id`, `quantity`, `date`) VALUES
  (1, 1, 1, 200, '2023-07-01'),
  (1, 1, 2, 250, '2023-07-01'),
  (1, 1, 4, 1000, '2023-07-01'),
  (2, 2, 1, 150, '2023-07-01'),
  (2, 2, 2, 250, '2023-07-01'),
  (2, 2, 3, 2000, '2023-07-01'),
  (3, 3, 1, 1500, '2023-07-01'),
  (3, 3, 4, 500, '2023-07-01');

-- Insert popular products
INSERT INTO `popular_products` (`product_id`) VALUES
  (1),
  (2),
  (3),
  (4);
