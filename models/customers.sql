with customers as 
(
    select
        id as customer_id,
        first_name,
        last_name
    from raw.public.raw_customers
),
orders as (
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status
    from raw.public.raw_orders    
),
customer_orders as 
(
    select
        user_id as customer_id,
        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(id) as number_of_orders
    from raw_orders
    group by 1
),
final as 
(
    select
        customer_id,
        first_name,
        last_name,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        coalesce(customer_orders.number_of_orders, 0) as number_of_orders
    from raw_customers
    left join customer_orders
    on customer_orders.customer_id = raw_customers.id
)
select * from final;