/* Customer Analytics
		- Customers Transactions per Year
*/
SELECT 
	year(order_date) as years, 
    count(distinct customer) as number_of_customer
FROM dqlab_sales_store
WHERE order_status = 'Order Finished'
GROUP BY years;  

/* 	- New Customers Transactions per Year*/
SELECT 
	year(first_date_transaction) as years, 
    count(customer) as number_of_new_customer
FROM 
(
	SELECT 
		distinct lower(customer) as customer, 
        min(order_date) as first_date_transaction
	FROM
        dqlab_sales_store
	WHERE
		order_status = "Order Finished"
	Group by customer
) as first_transaction
GROUP BY years
ORDER BY years;        
