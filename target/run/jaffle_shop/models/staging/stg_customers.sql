
  create or replace   view ANALYTICS.DBT_SILIAZ.stg_customers
  
   as (
    with source as (
    select * from ANALYTICS.DBT_SILIAZ.raw_customers

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed
  );

