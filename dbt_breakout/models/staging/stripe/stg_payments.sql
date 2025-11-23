select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- amount is stored in cents
    amount as usd_cents,
    created as created_at

from {{ source('stripe', 'payment') }}
WHERE
    {{ limit_data_in_dev('created', 10,'2018-04-09') }}