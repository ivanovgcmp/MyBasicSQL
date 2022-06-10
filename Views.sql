CREATE VIEW vw_goods_and_goods_categories AS
    SELECT g.id_goods, g.goods, COUNT(g.goods) AS 'Количество', g.id_categories, c.categories_name
    FROM goods AS g
	LEFT JOIN goods_categories AS c
	    ON g.id_categories = c.id_categories
	    GROUP BY id_categories
	    ORDER BY id_goods ASC
	    
CREATE VIEW vw_goods_and_goods_categories AS
    SELECT g.id_goods, g.goods, COUNT(g.goods) AS 'Количество', g.id_categories, c.categories_name
    FROM goods AS g
	INNER JOIN goods_categories AS c
	    ON g.id_categories = c.id_categories
	    GROUP BY id_categories
	    ORDER BY id_goods ASC
	    
CREATE VIEW vw_goods_and_goods_categories AS
    SELECT g.id_goods, g.goods, COUNT(g.goods) AS 'Количество', g.id_categories, c.categories_name
    FROM goods AS g
	RIGHT JOIN goods_categories AS c
	    ON g.id_categories = c.id_categories
	    GROUP BY id_categories
	    ORDER BY id_goods ASC

SELECT * 
FROM vw_goods_and_goods_categories
	    
DROP VIEW vw_goods_and_goods_categories 