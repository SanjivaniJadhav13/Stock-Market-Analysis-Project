use stock_data;
select * from stock_data;

## KPI 1 ##
select Ticker as "Stock" ,avg(VOLUME) AS "Avg Daily Traded Volume" 
FROM STOCK_DATA
group by ticker 
order by avg(volume) DESC; 

## KPI 2 ##
select Ticker as "Stock" ,round(avg(beta),4) AS "Avg of Beta values" 
FROM STOCK_DATA 
group by ticker 
order by avg(beta)  DESC ;

## KPI 3 ##
SELECT Ticker as "Stocks", round(avg(`Dividend Amount`),4) AS Dividend_Amount
FROM stock_data
WHERE Ticker IN ('GOOGL', 'FB', 'AAPL', 'MSFT', 'AMZN')
GROUP BY Ticker;

## KPI 4 ##
SELECT Ticker as " Stocks", round(AVG(`PE Ratio`),3) AS Avg_PE_Ratio
FROM stock_data
WHERE Ticker IN ('AAPL', 'AMZN', 'GOOGL', 'MSFT', 'FB')
GROUP BY Ticker;

## KPI 5 ## 
SELECT Ticker as " Stocks" , round(avg(`Market Cap`),3) as Market_Cap
FROM stock_data
WHERE Ticker IN ('GOOGL', 'AMZN', 'AAPL', 'FB', 'MSFT')
group by Ticker;

## KPI 6 ##
SELECT 
Ticker, round(AVG(`52 Week High`),3) AS 52_Week_High
FROM stock_data
WHERE Ticker IN ('AAPL', 'AMZN', 'FB', 'GOOGL', 'MSFT')
GROUP BY Ticker;

## KPI 7 ##
SELECT 
Ticker, round(AVG(`52 Week Low`),3) AS 52_Week_Low
FROM stock_data
WHERE Ticker IN ('AAPL', 'AMZN', 'FB', 'GOOGL', 'MSFT')
GROUP BY Ticker;

## KPI 8 ##
select TICKER ,`RSI (14 days)` as "RSI (14 Days)",MACD ,
(CASE 
WHEN `RSI (14 days)` <=45 AND MACD >0 THEN "BUY"
WHEN `RSI (14 days)` >=69 AND MACD <0 THEN "SELL"
ELSE "WAIT"
END) AS "Buy/Wait/Sell"
FROM STOCK_DATA;
