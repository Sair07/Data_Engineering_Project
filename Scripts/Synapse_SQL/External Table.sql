CREATE MASTER KEY ENCRYPTION BY PASSWORD =''

CREATE DATABASE SCOPED CREDENTIAL cred_sair
WITH
    IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://srazdatalake.blob.core.windows.net/silver',
    CREDENTIAL = cred_sair
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://srazdatalake.blob.core.windows.net/gold',
    CREDENTIAL = cred_sair
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)
-------------------------------------
-- CREATE EXTERNAL TABLE AS EXT_SALES   
-------------------------------------
CREATE EXTERNAL TABLE gold.ext_sales
WITH
(
    LOCATION = 'External_Sales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
select * from gold.sales
-------------------------------------
-- CREATE EXTERNAL TABLE AS ext_products   
-------------------------------------
CREATE EXTERNAL TABLE gold.ext_products
WITH
(
    LOCATION = 'External_Products',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
select * from gold.products
-------------------------------------
-- CREATE EXTERNAL TABLE AS ext_calendar   
-------------------------------------
CREATE EXTERNAL TABLE gold.ext_calendar
WITH
(
    LOCATION = 'External_Calendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
as 
SELECT * FROM gold.calendar
-------------------------------------
-- CREATE EXTERNAL TABLE AS ext_customers   
-------------------------------------
CREATE EXTERNAL TABLE gold.ext_customers
WITH
(
    LOCATION = 'External_Customers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
select * from gold.customers
-------------------------------------
-- CREATE EXTERNAL TABLE AS ext_sub_cat   
-------------------------------------
CREATE EXTERNAL TABLE gold.ext_sub_cat
WITH
(
    LOCATION = 'External_SubCategory',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
select * from gold.sub_cat
-------------------------------------
-- CREATE EXTERNAL TABLE AS ext_sub_cat   
-------------------------------------
CREATE EXTERNAL TABLE gold.ext_territories
WITH
(
    LOCATION = 'External_Territories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
select * from gold.territories
-------------------------------------
-- CREATE EXTERNAL TABLE AS returns   
-------------------------------------
CREATE EXTERNAL TABLE gold.ext_returns
WITH
(
    LOCATION = 'External_Returns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
select * from gold.returns

