/*  DQLab Store Overall Performance
		- Overall Performance by Year
*/
SELECT
	year(order_date) as years,
    sum(sales) as sales,
	count(*) as number_of_order
FROM
	dqlab_sales_store
WHERE
	order_status = 'Order Finished'
GROUP BY
	year (order_date)
ORDER BY
	year (order_date)
;
/*		- Overall Performance by Product Sub Category*/
SELECT 
	YEAR(order_date) as years, 
    product_sub_category, 
    sum(sales) as sales 
FROM 
	dqlab_sales_store 
WHERE 
	order_status = 'Order Finished' 
    AND year(order_date) in ('2011','2012')
GROUP BY 
	years, product_sub_category
ORDER BY 
	years, sum(sales) DESC;

