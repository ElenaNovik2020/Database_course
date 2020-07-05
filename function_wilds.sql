USE wilds;
DROP FUNCTION IF EXISTS personaldiscount;

DELIMITER -

CREATE FUNCTION personaldiscount(client_id BIGINT)
RETURNS FLOAT READS SQL DATA
	BEGIN
			DECLARE percent_buy FLOAT;
            DECLARE total_buy DECIMAL(11,2);
            DECLARE personal_discount FLOAT;
            SET percent_buy = (SELECT 
	SUM(op.quantity_purchased*op.price_discounts)/SUM(op.quantity_ordered*op.price_discounts) 
	FROM orders_products AS op
			LEFT JOIN orders  AS o
				ON op.order_id = o.id
			LEFT JOIN clients AS c 
				ON o.client_id = c.id
			LEFT JOIN products AS p 
				ON op.product_id = p.id 
	 WHERE o.client_id = client_id);
     
     SET total_buy = (SELECT 
	SUM(op.quantity_purchased*op.price_discounts)
	FROM orders_products AS op
			LEFT JOIN orders  AS o
				ON op.order_id = o.id
			LEFT JOIN clients AS c 
				ON o.client_id = c.id
			LEFT JOIN products AS p 
				ON op.product_id = p.id 
	 WHERE o.client_id = client_id);
   
		CASE
            WHEN (percent_buy*100 BETWEEN 20 AND 29,99) AND (total_buy BETWEEN 5000 AND 9999,99) THEN RETURN 5;
            WHEN ((percent_buy*100 BETWEEN 30 AND 49,99) AND (total_buy BETWEEN 5000 AND 9999,99)) OR ((percent_buy*100 BETWEEN 20 AND 29,99) AND (total_buy BETWEEN 10000 AND 29999,99)) THEN RETURN 7;
            WHEN ((percent_buy*100 > 50) AND (total_buy BETWEEN 5000 AND 9999,99)) OR ((percent_buy*100 BETWEEN 2 AND 0,029) AND (total_buy BETWEEN 5000 AND 5999)) OR ((percent_buy*100 BETWEEN 2 AND 3,99) AND (total_buy > 30000)) THEN RETURN 10;
            WHEN ((percent_buy*100 BETWEEN 2 AND 0,029) AND (total_buy BETWEEN 5000 AND 9999,99)) OR ((percent_buy*100 BETWEEN 30 AND 49,99) AND (total_buy > 30000)) THEN RETURN 15;
            WHEN (percent_buy*100 > 50) AND (total_buy > 30000) THEN RETURN 17;
            ELSE 
            RETURN 0;
		END CASE;
	END-
    
DELIMITER ;

SELECT id, fullname, personaldiscount(1) AS discount FROM clients WHERE id = 11;
    