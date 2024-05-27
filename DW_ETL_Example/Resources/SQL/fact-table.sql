/*
Fact Table:

Name: SalesByCustomer
Description: This table stores transactional data about customer orders.
Columns:
OrderID (FK): References the OrderID in the Orders table (primary key).
CustomerID (FK): References the CustomerID in the Customers table (primary key).
OrderDate: Date of the order.
TotalAmount: Total amount of the order after discounts.
Quantity: Total quantity of products ordered (sum across all order details).
Discount: Total discount applied to the order (sum across all order details).

Name: SalesByProduct
Description: Stores transactional data about sales of products.
Columns:
OrderID (FK): References the OrderID in the Orders table (primary key).
CustomerID (FK): References the CustomerID in the Customers table (primary key).
OrderDate: Date of the order.
TotalAmount: Total amount of the order after discounts.
ProductID (FK): References the ProductID in the Products table (primary key).
Quantity: Total quantity of a specific product sold in this order.
Discount: Total discount applied to this specific product within the order.

Name: OrdersByRegion
Description: Stores summarized order data grouped by region.
Columns:
Region (Dimension Attribute): Region where the order was placed.
OrderCount: Total number of orders placed in a specific region (aggregated).
TotalSales: Total sales amount across all orders in a specific region (aggregated).
AverageOrderValue (Calculated Dimension Attribute): Average order value for a specific region (calculated as TotalSales divided by OrderCount).

Name: ProductOrdersByRegion
Description: Stores detailed data about product orders grouped by region.
Columns:
Region (Dimension Attribute): Region where the order was placed.
ProductID (FK): References the ProductID in the Products table (primary key).
Quantity: Total quantity of a specific product ordered within a region (aggregated).
TotalSales: Total sales amount for a specific product within a region (aggregated).
Discount: Total discount applied to a specific product within a region (aggregated).
OrderID (FK): References the OrderID in the Orders table (optional, for tracing back to individual orders).

Name: CustomerOrdersByOrigin
Description: Stores transactional data about customer orders based on their origin.
Columns:
CustOrigin (Dimension Attribute): Origin of the customer (e.g., Website, Referral, In-Store).
OrderID (FK): References the OrderID in the Orders table (primary key).
CustomerID (FK): References the CustomerID in the Customers table (primary key).
OrderDate: Date of the order.
TotalAmount: Total amount of the order after discounts.
Quantity: Total quantity of products ordered (sum across all order details).
Discount: Total discount applied to the order (sum across all order details).
*/