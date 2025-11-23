select
    payment_id,
    order_id,
    payment_method,
    status,
    usd_cents,
    {{ cents_to_dollars('usd_cents') }} as usd_dollars,
    created_at
from {{ ref('stg_payments') }}