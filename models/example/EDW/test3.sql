with dbt_tab_col_2 as (select * from {{ ref("test2") }})
select *
from dbt_tab_col_2
