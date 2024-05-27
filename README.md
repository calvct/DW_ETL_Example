# Data Warehousing Application

This project aims to develop a data warehousing application using Visual Studio 2019 and C#.NET. to extract, transform, and load (ETL) data from operational systems into a star schema data warehouse built on MySQL. The application will also perform basic analysis on the data to provide insights into customer behavior and sales trends.

## Getting Started

These instructions will give you a copy of the project up and running on
your local machine for development and testing purposes. See deployment
for notes on deploying the project on a live system.

### Import SQL to OLTP

1. Open MySQL on your Local Computer. You can use MySQL Workbench.
2. Import SQL. You can choose only 1 OLTP, depends on your OLTP area.
   - [oltp-1.sql](DW_ETL_Example/Resources/SQL/oltp-1.sql)
   - [oltp-2.sql](DW_ETL_Example/Resources/SQL/oltp-2.sql)
   - [oltp-3.sql](DW_ETL_Example/Resources/SQL/oltp-3.sql)
3. Check if the database already created and data already imported.
   - Products = 20 data
   - Customers = 20 data
   - Orders = 20 data
   - OrderDetails = 50 data

### Import SQL to OLAP

1. Open MySQL on your Cloud Server. 
2. Import Dimensional Table SQL. [olap.sql](DW_ETL_Example/Resources/SQL/olap.sql)
3. Import Fact Table SQL. [fact-table.sql](DW_ETL_Example/Resources/SQL/fact-table.sql)
4. Import SQL for Analysis the Metrics. We will use `VIEW` and `STORED PROCEDURE`. [transform-analysis.sql](DW_ETL_Example/Resources/SQL/transform-analysis.sql)
5. Check if the database already created and data already imported.
   - Products = 20 data
   - Customers = *NO data*
   - Orders = *NO data*
   - OrderDetails = *NO data*
   - SalesFact = *NO data*
   - View = `vSales`, `vSoldProducts`
   - Procedure = `pSalesFilter`, `pSoldProductsFilter`

## Built With

  - [Contributor Covenant](https://www.contributor-covenant.org/) - Used
    for the Code of Conduct
  - [Creative Commons](https://creativecommons.org/) - Used to choose
    the license

## Authors

  - **Indra Maryati** -
    [Github](https://github.com/indramaryati)

## Acknowledgments

  - Hat tip to anyone whose code is used
  - Inspiration
  - etc
