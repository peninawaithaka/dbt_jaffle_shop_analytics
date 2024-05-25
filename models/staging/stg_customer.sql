{{
    config(
        
        materialized = "view"
    )
}}

with raw_customers as (
    select
        id as customer_id,
        first_name,
        last_name
    from jaffle_shop.staging.customers
)

select * from raw_customers