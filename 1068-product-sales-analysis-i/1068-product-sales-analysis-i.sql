select product_name, year, price from Sales
left join product
using(product_id);
