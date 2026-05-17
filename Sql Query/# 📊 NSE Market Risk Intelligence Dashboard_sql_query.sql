Create database financial_risk_db;
use financial_risk_db;
 select * from nse_stocks_2020_2024;
 
 # finding the total count of the data 
 select count(*) from nse_stocks_2020_2024;
 
 # finding total distinct stocks from the data 
 select distinct(Stock) from nse_stocks_2020_2024;
 
 # to find minimum date and maximum data 
 
 select min(Date) as minimum_date , max(Date) as maximum_date from nse_stocks_2020_2024;
 
 # Sector wise average volatility — kaun sa sector sabse risky?
 
 select Sector,avg(Volatility_30D) as averag_volatility
 from nse_stocks_2020_2024
 group by Sector;

# Year wise average daily return — har saal market kaisa raha?

select year(Date), avg(Daily_return) as avg_dailuy_return 
from nse_stocks_2020_2024
group by year(date)
order by avg_dailuy_return desc;

# Top 3 best performing days — kaunse 3 din sabse zyada return aaya? (Hint: ORDER BY aur LIMIT)

select * from nse_stocks_2020_2024;

select Daily_return,Date as daily_date
from nse_stocks_2020_2024
order by Daily_return desc
Limit 3;

# 30 Day Moving Average of Close price 
select * from nse_stocks_2020_2024;

select Close,date,Stock,
avg(Close) over (partition by Stock order by Date rows between 29 preceding and current row) as "30_days_moving_avergae"
from nse_stocks_2020_2024;

# Using a CTE, classify each stock into a Risk Category based on its average volatility over the entire period.
# High Risk = avg volatility > 1.8
# Medium Risk = avg volatility between 1.4 and 1.8
# Low Risk = avg volatility < 1.4

with average_cte as (
select avg(Volatility_30D) as Risk_Category,Stock
from nse_stocks_2020_2024
group by Stock
)
select Risk_Category,Stock,
case 
    when Risk_Category > 1.8 then "High Risk"
    when Risk_Category between  1.4 And 1.8 then "Medium Risk"
    else "Low Risk"
    end as Risk_level
from average_cte