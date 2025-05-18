-- models/orders_incremental.sql

{{ config(
    materialized='incremental',
    unique_key='id'
) }}

SELECT
    id
FROM {{ ref('my_first_dbt_model') }}

{% if is_incremental() %}
WHERE id > (SELECT MAX(id) FROM {{ this }})
{% endif %}
