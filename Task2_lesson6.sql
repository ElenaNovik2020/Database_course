CREATE OR REPLACE VIEW prod_cat AS SELECT 	p.name AS "Товар",
											c.name AS "Раздел"
											FROM catalogs AS c
											JOIN 
											products AS p 
											ON c.id = p.catalog_id;
											