with 

source as (

    select * from {{ source('raw', 'raw_gz_ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        cast(ship_cost AS float64) AS ship_cost

    from source

)

select * from renamed
