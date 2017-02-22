SELECT * FROM shop;


SELECT MAX(article) AS article FROM shop;


SELECT article, dealer, price
FROM shop
WHERE price=(SELECT MAX(price) FROM shop);

SELECT s1.article, s1.dealer, s1.price
FROM shop s1
LEFT JOIN shop s2 ON s1.price < s2.price
WHERE s2.article IS NULL;
SELECT article, dealer, price
FROM shop
ORDER BY price DESC
LIMIT 1;