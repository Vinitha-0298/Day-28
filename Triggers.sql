create database product;
use product;
create table products(
   product_id int auto_increment primary key,
   product_name varchar(25),
   expiry_date date,
   total_amount decimal(10,2)
);

create table product_insert(
   product_id int,
   product_name varchar(255),
   expiry_date date,
   total_amount decimal(10,2),
   created_at timestamp
);
delimiter $$
Create trigger after_insert
after insert on products for each row
Begin 
  insert into product_insert(product_id,product_name,expiry_date,total_amount,created_at)
   values(new.product_id,new.product_name,new.expiry_date,new.total_amount,now());
End $$

delimiter ;
Insert into products(product_id,product_name,expiry_date,total_amount)
			Values(1,'Biscuit','2026-08-05',80.00);

select * from product_insert;
 
 
   