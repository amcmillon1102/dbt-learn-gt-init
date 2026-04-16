
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from `jaffle-shop-493417`.`dbt_abigail`.`stg_jaffle_shop__orders`
    group by status

)

select *
from all_values
where value_field not in (
    'placed','shipped','completed','returned','return_pending'
)