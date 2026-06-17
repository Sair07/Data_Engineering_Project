-------------------------
-- Creating View calendar
-------------------------
CREATE VIEW gold.calendar
AS
SELECT
    * 
FROM    
    OPENROWSET
    (
        BULK 'https://srazdatalake.blob.core.windows.net/silver/Calendar/',
        FORMAT  = 'PARQUET'
    ) as calQuery
-------------------------
-- Creating View customers
-------------------------
CREATE VIEW gold.customers
AS
SELECT
    * 
FROM    
    OPENROWSET
    (
        BULK 'https://srazdatalake.blob.core.windows.net/silver/Customers/',
        FORMAT  = 'PARQUET'
    ) as custQuery
-------------------------
-- Creating View products
-------------------------
CREATE VIEW gold.products
AS
SELECT
    * 
FROM    
    OPENROWSET
    (
        BULK 'https://srazdatalake.blob.core.windows.net/silver/Products/',
        FORMAT  = 'PARQUET'
    ) as ProdQuery
-------------------------
-- Creating View Sub Category
-------------------------
CREATE VIEW gold.sub_cat
AS
SELECT
    * 
FROM    
    OPENROWSET
    (
        BULK 'https://srazdatalake.blob.core.windows.net/silver/Sub_category/',
        FORMAT  = 'PARQUET'
    ) as sub_catQuery
-------------------------
-- Creating View returns
-------------------------
CREATE VIEW gold.returns
AS
SELECT
    * 
FROM    
    OPENROWSET
    (
        BULK 'https://srazdatalake.blob.core.windows.net/silver/Returns/',
        FORMAT  = 'PARQUET'
    ) as returnQuery
-------------------------
-- Creating View Territories
-------------------------
CREATE VIEW gold.territories
AS
SELECT
    * 
FROM    
    OPENROWSET
    (
        BULK 'https://srazdatalake.blob.core.windows.net/silver/Territories/',
        FORMAT  = 'PARQUET'
    ) as terrQuery
-------------------------
-- Creating View Sales
-------------------------
CREATE VIEW gold.sales
AS
SELECT
    * 
FROM    
    OPENROWSET
    (
        BULK 'https://srazdatalake.blob.core.windows.net/silver/sales/',
        FORMAT  = 'PARQUET'
    ) as salesQuery

