-- Use the `ref` function to select from other models
select id
from {{ ref("my_first_dbt_model") }}

union all
select id + 1
from {{ ref("my_first_dbt_model") }}

union all
select id + 2
from {{ ref("my_first_dbt_model") }}

union all
select id + 3
from {{ ref("my_first_dbt_model") }}
