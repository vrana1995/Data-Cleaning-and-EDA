## To Show the transaction table with complete details;
use sales;
select *
from transactions;

## Count the total number of transactions;
use sales;
select count(*)
from transactions;


## Joining the Transactions table with date table using inner join;
select*
from transactions t
join date d on 
t.order_date=d.date;

##Joining the above joined table with product to get the product details into table(USING CLAUSE);
select*
from transactions t
join date d on 
t.order_date=d.date
join products p
using(product_code);

## Grouping products by  product code and finding the number sold for each product(Group By clause);
select  product_code,count(*) as "Number sold"
from transactions t
join date d on 
t.order_date=d.date
join products p
using(product_code)
group by product_code;

##Given for transaction some we have currency in USD type and all transaction are in INR only;
select *
from transactions
where currency = "USD"

## Changing USD to INR using UPDATE CLAUSE;
Update transactions
set currency="INR"
where currency="USD";

## Also Deleting rows from Markets table where market name is a foreign country as Company is INDIA based;(DELETE CLAUSE)
delete from markets
where markets_code = "Mark097"or markets_code ="Mark999";



