with 
DBT_TABS as (
select * from DBT.INFORMATION_SCHEMA.tables where table_Catalog = 'DBT'),
DBT_COLUMNS as (
select * from DBT.INFORMATION_SCHEMA.columns where table_Catalog = 'DBT')
select * from DBT_TABS