
  create or replace   view ANALYTICS.DBT_SILIAZ.stg_orders
  
   as (
    with source as (
    select * from ANALYTICS.DBT_SILIAZ.raw_orders

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from source

)

select * from renamed
  );

