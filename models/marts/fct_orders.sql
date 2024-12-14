{{
    config(
        materialized='table',
        )
}}

with orders as (
    
    select * from {{ ref('stg_orders') }}

),


customers as (

    select * from {{ ref('stg_customers') }}
),

final as (

    select 
        orders.order_id, 
        orders.order_date,
        orders.customer_id,
        orders.status,
--        orders.priority_code,
--        orders.ship_priority,
--        orders.clerk_name,
        customers.first_name,
--        customers.market_segment
       
    from orders
    inner join customers
        on orders.customer_id = customers.customer_id
)

select *
from final
order by order_date