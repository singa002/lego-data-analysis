
--see first 20
SELECT Name, Theme, USD_MSRP
FROM sets
LIMIT 20;

--sets over 100 dollars retail from highest to lowest
SELECT Name, USD_MSRP
FROM sets
WHERE USD_MSRP > 100
ORDER BY USD_MSRP DESC; 

--star wars themed sets and their retail prices
SELECT Name, Theme, USD_MSRP
FROM sets
WHERE Theme = 'Star Wars'