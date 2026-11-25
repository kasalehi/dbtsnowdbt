{% snapshot dim_customers %}

{{
    config(
        schema='marts',
        unique_key='customer_id',
        strategy='check',
        check_cols=[
            'first_name',
            'last_name',
            'email',
            'phone',
            'city',
            'country'
        ]
    )
}}

select * from {{ ref('stg_customers') }}

{% endsnapshot %}
