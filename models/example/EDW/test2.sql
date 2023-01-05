with DBT_TAB_COL as (
    select * from {{ref('test1')}}
)
SELECT * from DBT_TAB_COL;
