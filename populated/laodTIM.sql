set echo on
spool C:\cprg250s\TIMBER\populated\loadtimberPopulate.txt
rem
DELETE TABLE TIM_product_order;
DELETE TABLE TIM_product_supplier;
DELETE TABLE TIM_product;
DELETE TABLE TIM_product_review;
DELETE TABLE TIM_order;
DELETE TABLE TIM_supplier;
DELETE TABLE TIM_category;
DELETE TABLE TIM_Customer_timber;
DELETE TABLE TIM_parent_category;
rem

insert into TIM_Customer_timber(customer#,customer_street_address,customer_prov,customer_postal_code,customer_phone,customer_email_address,city,istimbermember) 
    values(3001,'27 Castlebury way NE','BC','T3J1K7','587.664.1708','sarbjeetr@gmail.com','Calgary',1);
insert into TIM_Customer_timber(customer#,customer_street_address,customer_prov,customer_postal_code,customer_phone,customer_email_address,city,istimbermember) 
    values(3002,'1016 Sheppard','MB','S3N7T8','709.370.8373','mavpkl@gmail.com','Windsor',0);
insert into TIM_Customer_timber(customer#,customer_street_address,customer_prov,customer_postal_code,customer_phone,customer_email_address,city,istimbermember) 
    values(3003,'2 Park Ct','AB','H3J1L7','456.678.5678','ramankaur3@gmail.com','Robb',1);
insert into TIM_Customer_timber(customer#,customer_street_address,customer_prov,customer_postal_code,customer_phone,customer_email_address,city,istimbermember) 
    values(3004,'2832 St John street','AB','L3J9K7','500.660.1708','diya2@gmail.com','calgary',1);
insert into TIM_Customer_timber(customer#,customer_street_address,customer_prov,customer_postal_code,customer_phone,customer_email_address,city,istimbermember) 
    values(3005,'4 ste. Catherine Ouest','QC','G8M2H6','769.799.6525','koliniz@gmail.com','Montreal',0);
rem

insert into TIM_parent_category(parent_category_number) values(2101);
insert into TIM_parent_category(parent_category_number) values(2102);
insert into TIM_parent_category(parent_category_number) values(2103);
insert into TIM_parent_category(parent_category_number) values(2104);
insert into TIM_parent_category(parent_category_number) values(2105);
rem
insert into TIM_category(category#,category_description,category_parent#) values(2001,'Home accessories',2101);
insert into TIM_category(category#,category_description,category_parent#) values(2002,'Beauty',2102);
insert into TIM_category(category#,category_description,category_parent#) values(2003,'Clothes and Acessories',2101);
insert into TIM_category(category#,category_description,category_parent#) values(2004,'Sports and Outdoors',2104);
insert into TIM_category(category#,category_description,category_parent#) values(2005,'Jewelery',2105);

rem
insert into TIM_product(product#,product_title,product_description,product_price,product_weight,istaxexempt,category#)
    values(1001,'Shark ION Robot Vacuum with Wi-Fi and Voice Control','Three Brush Types, One Powerful Clean: Tri Brush System combines side brushes, channel brushes, and a multi-surface brushroll to handle debris on all surfaces.',189.99,6,0,2001);
insert into TIM_product(product#,product_title,product_description,product_price,product_weight,istaxexempt,category#)
    values(1002,'Makeup Mirror Touch Screen Vanity Mirror with LED Brightness Adjustable Portable USB Rechargeable','33 Highly Bright LED Lights - This makeup mirror provides bright and clear reflection; allows your face is clearly visible; Can be used for makeup, skin care, shaving, etc.',22.94,1.2,0,2002);
insert into TIM_product(product#,product_title,product_description,product_price,product_weight,istaxexempt,category#)
    values(1003,'Beetles 20 Pcs Gel Nail Polish','WHAT YOU GET:Beetles 2022 nails trend color 20 Gorgeous shades of Magic Academy Collection Fall Winter Gel Nail Polish Kit. 20 X Mini Gel Colors (5ml./each bottle) + 3 x No Wipe Base and Glossy Top Coat( 7.5ml./ each bottle).',37.99,1.5,0,2002);
insert into TIM_product(product#,product_title,product_description,product_price,product_weight,istaxexempt,category#)
    values(1004,'Bison UPF 50+ Sun Protection T-Shirt, Womens Functional Jacket','【Sunscreen】UPF 50+ fabric, effectively blocking more than 98% of UV rays, can protect you from the sun s scorching heat.',49,1.7,0,2003);
insert into TIM_product(product#,product_title,product_description,product_price,product_weight,istaxexempt,category#)
    values(1005,'iDOO Air Mattress, Inflatable Airbed with Built-in Pump','3 Mins fast easy inflation and deflation: The built-in pump inflates/deflates the air mattress within 3-4 mins to achieve your desired comfort level with the switch of a button. Whether you like a firm/soft air mattress, iDOO has you covered',126.98,2,0,2004);
insert into TIM_product(product#,product_title,product_description,product_price,product_weight,istaxexempt,category#)
    values(1006,'CDE Love Heart Pendant Necklace','BIRTHDAY MOTHERS DAY GIFTS :What better way to express the love in your life than with her very own unique mom necklace? Put a smile on her face this Mothers Day with a small token of appreciation. Show your love by our gorgeous necklaces for women as your go-to resource for funny, quirky, cute, and memorable mother gifts for women this spring!',69.99,1,0,2005);
insert into TIM_product(product#,product_title,product_description,product_price,product_weight,istaxexempt,category#)
    values(1007,'Thick Gold Hoop Earrings Lightweight','Lightweight Thick Gold Hoop Earrings: hollow tube design make the thick hoop earrings became lightweight, you will feel comfortable for everyday wear. Simple chunky style make it suitable for any occasion, a must have for women earring collection.',12.99,1.1,0,2005);
rem
insert into TIM_supplier(supplier#,supplier_name,supplier_email,supplier_prov,supplier_city)
    values(6001,'Amazon','amazon@gmail.com','QC','Sherbrooke');
insert into TIM_supplier(supplier#,supplier_name,supplier_email,supplier_prov,supplier_city)
    values(6002,'Alibaba','Alibaba@gmail.com','AB','Vegreville');
insert into TIM_supplier(supplier#,supplier_name,supplier_email,supplier_prov,supplier_city)
    values(6003,'Wish.com','wish@gmail.com','NS','Halifax');
rem
insert into TIM_Order(order#,order_date,order_delivery_date,shipping_amount,tax_amount,order_items,shipping_prov,customer#) 
    values(4001,'8-SEP-21','9-SEP-21',0,9.49,1,'BC',3001);
insert into TIM_Order(order#,order_date,order_delivery_date,shipping_amount,tax_amount,order_items,shipping_prov,customer#) 
    values(4002,'10-AUG-21','12-AUG-21',9.95,2.39,1,'MB',3002);
insert into TIM_Order(order#,order_date,order_delivery_date,shipping_amount,tax_amount,order_items,shipping_prov,customer#) 
    values(4003,'14-OCT-21','14-OCT-21',9.95,2.90,1,'MB',3002);
insert into TIM_Order(order#,order_date,order_delivery_date,shipping_amount,tax_amount,order_items,shipping_prov,customer#) 
    values(4004,'11-JAN-22','13-JAN-21',0,6.34,1,'AB',3003);
insert into TIM_Order(order#,order_date,order_delivery_date,shipping_amount,tax_amount,order_items,shipping_prov,customer#) 
    values(4005,'14-FEB-22','24-FEB-22',0,3.49,1,'BC',3001);
insert into TIM_Order(order#,order_date,order_delivery_date,shipping_amount,tax_amount,order_items,shipping_prov,customer#) 
    values(4006,'15-MAR-22','16-MAR-22',0,0.65,1,'AB',3004);
rem

insert into TIM_Product_Review(review#, rating, comments, product#, customer#, review_date)
    values(5001, 4, 'I recommend this product! Great little gal! (Named her Eva) we decided
     we only need to schedule her for Monday Wednesday Friday - for people without pets it 
     should be less. Takes her 1.5 hours for our 1200 sq ft floor.', 1001, 3001, '08-Aug-22');
insert into TIM_Product_Review(review#, rating, comments, product#, customer#, review_date)
    values(5002, 5, 'Love this product!', 1002, 3002, '09-Sep-21');
insert into TIM_Product_Review(review#, rating, comments, product#, customer#, review_date)
    values(5003, 4, 'Havent used all the colours yet but I love Beetles gel polish', 1003, 3002, '21-Nov-21');
insert into TIM_Product_Review(review#, rating, comments, product#, customer#, review_date)
    values(5004, 5, 'Perfect fit and high SPF guard is wonderful. Drys very quickly I love
     the neon yellow', 1004, 3003, '18-Oct-22');
insert into TIM_Product_Review(review#, rating, comments, product#, customer#, review_date)
    values(5005, 4, 'Not the most comfortable air bed I have owned but not bad.', 1005, 3001, '05-Oct-22');
rem
insert into TIM_product_order(order#, product#)
    values(4001, 1001);
insert into TIM_product_order(order#, product#)
    values(4002, 1003);
insert into TIM_product_order(order#, product#)
    values(4003, 1004);
insert into TIM_product_order(order#, product#)
    values(4004, 1005);
insert into TIM_product_order(order#, product#)
    values(4005, 1006);
insert into TIM_product_order(order#, product#)
    values(4006, 1007);
rem
insert into TIM_Product_Supplier(quantity_on_hand,days_delivery,supplier#,product#)
    values(500,2,6001,1001);
insert into TIM_Product_Supplier(quantity_on_hand,days_delivery,supplier#,product#)
    values(150,3,6003,1002);
insert into TIM_Product_Supplier(quantity_on_hand,days_delivery,supplier#,product#)
    values(200,4,6002,1003);
rem







commit;
spool off

    

