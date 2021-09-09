with payments as (
  
  select
    id as payment_id,
    orderid as order_id,
    amount / 100 as amount,
    created as created_at,
    paymentmethod as payment_method,
    status
  
  from {{ source('stripe', 'payment') }}
)

select * from payments