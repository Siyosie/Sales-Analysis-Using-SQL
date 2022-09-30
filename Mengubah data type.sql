SET SQL_SAFE_UPDATES =0;
UPDATE dqlab_sales_store SET 
order_date =str_to_date
(order_date, "%Y-%M-%d")
;
