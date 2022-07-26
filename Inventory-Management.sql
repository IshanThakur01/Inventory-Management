create database Project;
use Project;

drop table if exists brands;
create table if not exists brands(
bid int(5) primary key,
bname varchar(20)
);
alter table brands
add primary
key(bid);

drop table if exists inv_user;
create table if not exists inv_user(
 user_id varchar(20),
name varchar(20),
password varchar(20),
last_login timestamp,
user_type varchar(10)
);

drop table if exists categories;
create table if not exists categories(
cid int(5),
category_name varchar(20)
);

alter table categories
add primary
key(cid);
alter table inv_user
add primary key(user_id);

create table if not exists product(
pid int(5) primary key,
cid int(5) references categories(cid),
bid int(5) references brands(bid),
sid int(5),
pname varchar(20),
p_stock int(5),
price int(5),
added_date date);

create table if not exists stores(
sid int(5),
sname varchar(20),
address varchar(20),
mobno int(10)
);

alter table stores
add primary key(sid);
alter table product
add foreign key(sid)references stores(sid);

create table if not exists provides(
bid int(5)references brands(bid),
sid int(5)references stores(sid),
discount int(5));

create table if not exists customer_cart(
cust_id int(5) primary key,
name varchar(20),
mobno int(10)
);

create table if not exists select_product(
cust_id int(5) references customer_cart(cust_id),
pid int(5)references product(pid),
quantity int(4)
);

create table if not exists transaction(
id int(5) primary key,
total_amount int(5),
paid int(5),
due int(5),
gst int(3),
discount int(5),
payment_method varchar(10),
cart_id int(5) references customer_cart(cust_id)
);

create table if not exists invoice(
item_no int(5),
product_name varchar(20),
quantity int(5),
net_price int(5),
transaction_id int(5)references transaction(id)
);

INSERT INTO BRANDS values(
'&bid',
'&bname');
Enter value for bid: 1
old 2: '&bid'
new 2: '1'
Enter value for bname: Apple
old 4: '&bname')
new 4: 'Apple')


insert into brands values(2,'Samsung');

insert into brands values(3,'Nike');

insert into brands values(4,'Fortune');

insert into inv_user values(
'&user_id',
'&name',
'&password',
'&last_login',
'&user_type');
Enter value for user_id: vidit@gmail.com
old 2: '&user_id',
new 2: 'vidit@gmail.com',
Enter value for name: vidit
old 3: '&name',
new 3: 'vidit',
Enter value for password: 1234
old 4: '&password',
new 4: '1234',
Enter value for last_login: 31-oct-18 12:40
old 5: '&last_login',
new 5: '31-oct-18 12:40',
Enter value for user_type: admin
old 6: '&user_type')
new 6: 'admin')

insert into inv_user values('harsh@gmail.com','Harsh Khanelwal','1111','30-oct18 10:20','Manager');

insert into inv_user values('prashant@gmail.com','Prashant','0011','29-oct-18
10:20','Accountant');


insert into categories values(
'&cid',
'&category_name');
Enter value for cid: 1
old 2: '&cid',
new 2: '1',
Enter value for category_name: Electroincs
old 3: '&category_name')
new 3: 'Electroincs')

insert into categories values(2,'Clothing');

insert into categories values(3,'Grocey');


insert into stores values(
'&sid',
'&sname',
'&address',
'&mobno');
Enter value for sid:
1 old 2: '&sid',
new 2: '1',
Enter value for sname: Ram kumar
old 3: '&sname',
new 3: 'Ram kumar',
Enter value for address: Katpadi vellore
old 4: '&address',
new 4: 'Katpadi vellore',
Enter value for mobno: 9999999999
old 5: '&mobno')
new 5: '9999999999')

insert into stores values(2,'Rakesh kumar','chennai',8888555541);

insert into stores values(3,'Suraj','Haryana',7777555541);


insert into product values(
'&pid',
'&cid',
'&bid',
'&sid',
'&pname',
'&p_stock',
'&price',
'&added_date');
Enter value for pid: 1
old 2: '&pid',
new 2: '1',
Enter value for cid: 1
old 3: '&cid',
new 3: '1',
Enter value for bid: 1
old 4: '&bid',
new 4: '1',
Enter value for sid: 1
old 5: '&sid',
new 5: '1',
Enter value for pname: IPHONE
old 6: '&pname',
new 6: 'IPHONE',
Enter value for p_stock: 4
old 7: '&p_stock',
new 7: '4',
Enter value for price: 45000
old 8: '&price',
new 8: '45000',
Enter value for added_date: 31-oct-18
old 9: '&added_date')
new 9: '31-oct-18')

insert into product values(2,1,1,1,'Airpods',3,19000,'27-oct18');
insert into product values(3,1,1,1,'Smart Watch',3,19000,'27-oct-18');

insert into product values(4,2,3,2,'Air Max',6,7000,'27-oct-18');

insert into product values(5,3,4,3,'REFINED OIL',6,750,'25-oct-18');

insert into provides values(1,1,12);

insert into provides values(2,2,7);

insert into provides values(3,3,15);

insert into provides values(1,2,7);

insert into provides values(4,2,19);

insert into provides values(4,3,20);

insert into customer_cart values(
'&cust_id',
'&name',
'&mobno');
Enter value for cust_id: 1
old 2: '&cust_id',
new 2: '1',
Enter value for name: Ram
old 3: '&name',
new 3: 'Ram',
Enter value for mobno: 9876543210
old 4: '&mobno')
new 4: '9876543210')

insert into customer_cart values(2,'Shyam',7777777777);

insert into customer_cart values(3,'Mohan',7777777775);

insert into select_product values(
'&cust_id',
'&pid',
'&quantity');
Enter value for cust_id: 1
old 2: '&cust_id',
new 2: '1',
Enter value for pid: 2
old 3: '&pid',
new 3: '2',
Enter value for quantity: 2
old 4: '&quantity')
new 4: '2')

insert into select_product values(1,3,1);

insert into select_product values(2,3,3);

insert into select_product values(3,2,1);

insert into transaction values(
'&id',
'&total_amount',
'&paid',
'&due',
'&gst',
'&discount',
'&payment_method',
'&cart_id');
Enter value for id: 1
old 2: '&id',
new 2: '1',
Enter value for total_amount: 57000
old 3: '&total_amount',
new 3: '25000',
Enter value for paid: 2000
old 4: '&paid',
new 4: '20000',
Enter value for due: 5000
old 5: '&due',
new 5: '5000',
Enter value for gst: 350
old 6: '&gst',
new 6: '350',
Enter value for discount: 350
old 7: '&discount',
new 7: '350',
Enter value for payment_method: card
old 8: '&payment_method',
new 8: 'card',
Enter value for cart_id: 1
old 9: '&cart_id')
new 9: '1')

insert into transaction values(2,57000,57000,0,570,570,'cash',2);
insert into transaction values(3,19000,17000,2000,190,190,'cash',3);
insert into transaction values(3,19000,17000,2000,190,190,'cash',3);

PL/SQL
Functions:
declare
due1 int(7);
cart_id1 int(7);
function get_cart(c_id int)return int is
begin
return (c_id);
end;
begin
cart_id1:=get_cart('&c_id');
select due into due1 from transaction where cart_id=cart_id1;
dbms_output.put_line(due1);
end;
/
Enter value for c_id: 1
old 9: cart_id1:=get_cart('&c_id');
new 9: cart_id1:=get_cart('1');
5000
PL/SQL procedure successfully completed.
Cursors:
DECLARE
p_id product.pid%type;
p_name product.pname%type;
p_stock product.p_stock%type;
cursor p_product is
select pid,pname ,p_stock from product;
begin
open p_product;
loop
fetch p_product into p_id,p_name,p_stock;
exit when p_product%notfound;
dbms_output.put_line(p_id||' '||p_name||' '||p_stock);
end loop;
14 close p_product;
15 end;
16 /
1 IPHONE 4
2 Airpods 3
3 Smart Watch 3
4 Air Max 6
5 REFINED OIL 6
PL/SQL procedure successfully completed.
Procedure:
DECLARE
2 a int;
3 b int;
4 PROCEDURE check_stock(x IN int) IS
5 BEGIN
6 IF x < 2 THEN
7 dbms_output.put_line('Stock is Less');
8 ELSE
9 dbms_output.put_line('Enough
Stock'); 10 END IF;
11 END;
12 BEGIN
13 b:='&b';
14 select p_stock into a from product where pid=b;
15 check_stock(a);
16 END;
17 /
Enter value for b: 2
old 13: b:='&b';
new 13: b:='2';
Enough Stock
