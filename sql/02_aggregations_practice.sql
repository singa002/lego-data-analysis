--total number of lego sets available
SELECT COUNT(*) AS total_sets
FROM sets;

-- average price of all retail sets
SELECT AVG(USD_MSRP) as avg_retail_price
FROM sets;


--most expensive and least expensive retail set including names
SELECT Name, USD_MSRP
FROM sets
WHERE USD_MSRP = (SELECT MAX(USD_MSRP) FROM sets)
OR USD_MSRP = (SELECT MIN(USD_MSRP) FROM sets);