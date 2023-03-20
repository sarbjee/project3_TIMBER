set echo on
spool C:\cprg250s\TIMBER\populated\loadtimberPopulate.txt
rem
DROP TABLE TIM_product_order;
DROP TABLE TIM_product_supplier;
DROP TABLE TIM_product;
DROP TABLE TIM_product_review;
DROP TABLE TIM_order;
DROP TABLE TIM_supplier;
DROP TABLE TIM_category;
DROP TABLE TIM_Customer;
DROP TABLE TIM_parent_category;
rem
insert into TIM_customer(customer#,customer_street_address,customer_prov,customer_postal_code,customer_phone,customer_email_address,customer_city,istimbermember) 
    values(3001,'27 Castlebury way NE','BC','T3J1K7','587.664.1708','sarbjeetb2@gmail.com','Calgary',1);
insert into TIM_customer(customer#,customer_street_address,customer_prov,customer_postal_code,customer_phone,customer_email_address,customer_city,istimbermember) 
    values(3002,'1016 Sheppard','MB','S3N7T8','709.370.8373','mavpkl@gmail.com','Windsor',0);
insert into TIM_customer(customer#,customer_street_address,customer_prov,customer_postal_code,customer_phone,customer_email_address,customer_city,istimbermember) 
    values(3003,'2 Park Ct','AB','H3J1L7','456.678.5678','ramankaur3@gmail.com','Robb',1);
insert into TIM_customer(customer#,customer_street_address,customer_prov,customer_postal_code,customer_phone,customer_email_address,customer_city,istimbermember) 
    values(3004,'2832 St John street','AB','L3J9K7','500.660.1708','diya2@gmail.com','calgary',1);
insert into TIM_customer(customer#,customer_street_address,customer_prov,customer_postal_code,customer_phone,customer_email_address,customer_city,istimbermember) 
    values(3005,'4 Ste Catherine ouest','QC','G8M2H7','587.664.9700','kolan2@gmail.com','Montreal',1);
rem
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
    values(6001,'Amazon','amazon@gmail.com','AB','Sherbrooke');
    

