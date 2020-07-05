USE wilds;

-- Процедура вычисления цены товара с учетом персональной скидки клиента и скидки на товар по акциям:
DROP PROCEDURE IF EXISTS price_product_for_client;
DELIMITER //
CREATE PROCEDURE price_product_for_client(IN cl_id BIGINT, pr_id BIGINT)
	BEGIN
    DECLARE stock_discount FLOAT;
	DECLARE personal_discount FLOAT;
    DECLARE sum_discount FLOAT;
	SET stock_discount = (SELECT stocks.discount FROM stocks WHERE stocks.product_id = pr_id);
    SET personal_discount = (SELECT personal_discount FROM personal_discount WHERE personal_discount.client_id = cl_id);
    -- SET sum_discount = 1 - (stock_discount + personal_discount);
	SELECT products.price*(1 - (stock_discount + personal_discount)) AS discount_price FROM products WHERE products.id = pr_id;
	END //
DELIMITER ;    
call price_product_for_client (11, 58);
