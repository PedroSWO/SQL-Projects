SELECT *
FROM transactions;

-- column names: id, user_id, date, currency, money_in, money_out

SELECT SUM(money_in)
FROM transactions;

-- total: 17173.0

SELECT SUM(money_out)
FROM transactions;

-- total: 33417.0

SELECT COUNT(money_in)
FROM transactions
WHERE currency = 'BIT';

-- transactions: 43
-- transactions where BIT is the currency: 21

SELECT MAX(money_in), MAX(money_out)
FROM transactions;

-- largest transaction: money_out 

SELECT AVG(money_in)
FROM transactions
WHERE currency = 'ETH';

-- 131.888888888889

SELECT date, AVG(money_in), AVG(money_out)
FROM transactions
GROUP BY date;

SELECT date, 
  ROUND(AVG(money_in), 2), 
  ROUND(AVG(money_out), 2)
FROM transactions
GROUP BY date;