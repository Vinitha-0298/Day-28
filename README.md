# Day-28
Triggers
---------

In this program,i have created 2 tables.

1.Products table.
-----------------
  Stores the original product details like(product_id,product_name,expiry_date,total_amount).

2.Product_insert table.
------------------------
  Stores the copy of inserted records along with the timestamp.

Trigger working:
------------------
* The trigger runs after a new record is inserted.
* For each row means it works for every inserted row.
* The trigger copies data from products to product_insert.

new keyword ---> gets values of newly inserted record.
now()       ---> stores current date and time.

Insert Trigger:
-----------------
The insert trigger is used to automatically maintains a copy of the newly inserted data.
