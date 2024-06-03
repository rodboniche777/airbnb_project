{% snapshot scd_raw_listings %}
{{
 config(
    target_schema='dbt_rboniche',
    unique_key='id',
    strategy='timestamp',
    updated_at='updated_at',
    invalidate_hard_deletes=True
 )
}}
select * FROM {{ source('raw', 'raw_listings') }}

{% endsnapshot %}