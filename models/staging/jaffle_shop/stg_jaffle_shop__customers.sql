<<<<<<< HEAD
{{ config(materialized='table') }}

with 

source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

=======
with 

source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

>>>>>>> 6bcbf5ea257881f82a2e4662ebce1ea65edc3cb2
select * from renamed