/* DQLab Store Promotion Effectiveness and Efficiency
		-Promotion Effectiveness and Efficiency by Years
*/
SELECT 
	year(order_date) as years, 
    sum(sales) as sales, 
    sum(discount_value) as promotion_value, 
    round(((sum(discount_value))/(sum(sales))*100),2) as burn_rate_percentage
FROM dqlab_sales_store
WHERE order_status = 'Order Finished'
GROUP BY years
ORDER BY years;

/*		- Promotion Effectiveness and Efficiency by Product Sub Category in 2012*/
SELECT 
	year(order_date) as years, 
    product_sub_category, 
    product_category, 
    sum(sales) as sales, 
    sum(discount_value) as promotion_value, 
    round(((sum(discount_value))/(sum(sales))*100),2) as burn_rate_percentage
FROM 
	dqlab_sales_store
WHERE 
	order_status = 'Order Finished' 
    AND 
    year(order_date) = '2012'
GROUP BY 
	years, 
    product_sub_category, 
    product_category
ORDER BY 
	years, sum(sales) DESC;
