set echo on
spool C:\cprg250s\TIMBER\project3_TIMBER\loadtimberOutput.txt
--- drop table 
DROP TABLE TIM_product_order cascade constraints;
DROP TABLE TIM_product_supplier cascade constraints;
DROP TABLE TIM_product cascade constraints;
DROP TABLE TIM_product_review cascade constraints;
DROP TABLE TIM_order cascade constraints;
DROP TABLE TIM_supplier cascade constraints;
DROP TABLE TIM_category cascade constraints;
DROP TABLE TIM_Customer_timber cascade constraints;
DROP TABLE TIM_parent_category cascade constraints;
rem
-- create tables
CREATE TABLE TIM_Customer_timber(
    customer# NUMBER CONSTRAINT SYS_CUST_PK PRIMARY KEY,
    customer_street_address VARCHAR2(200) NOT NULL,
    customer_prov CHAR(2) NOT NULL
        CONSTRAINT SYS_CUP_CK CHECK(customer_prov IN('AB','BC','MB','NS','NT','ON','PE','QC','SK','YT','NL','NB')),
    customer_postal_code CHAR(6) NOT NULL
        CONSTRAINT SYS_CPC_CK CHECK(regexp_like(customer_postal_code,'[A-Z][0-9][A-Z][0-9][A-Z][0-9]')),
    customer_phone CHAR(12) NOT NULL
        CONSTRAINT SYS_CP_CK CHECK (regexp_like(customer_phone,'[0-9]{3}\.[0-9]{3}\.[0-9]{4}')),
    customer_email_address VARCHAR2(60) NOT NULL
        CONSTRAINT SYS_CE_CK CHECK(regexp_like(customer_email_address,'[a-zA-Z0-9_\-]+@([a-zA-Z0-9_\-]+\.)+(com|org|edu|nz|au])')),
    city VARCHAR2(20) NOT NULL,
    istimbermember NUMBER(1) NOT NULL
        CONSTRAINT SYS_ISTM_CK CHECK(istimbermember IN(0,1)),
    CONSTRAINT sys_UCE_UK UNIQUE(customer_email_address));
CREATE TABLE TIM_parent_category(
    parent_category_number NUMBER CONSTRAINT SYS_PCN_PK PRIMARY KEY
);
rem
CREATE TABLE TIM_order(
    order# NUMBER,
    order_date DATE NOT NULL,
    order_delivery_date DATE NOT NULL,
    shipping_amount NUMBER(10,2),
    tax_amount NUMBER(10,2),
    order_items NUMBER NOT NULL
        CONSTRAINT SYS_ITEMS_CK CHECK(order_items>0),
    shipping_prov CHAR(2) NOT NULL
        CONSTRAINT SYS_O_CK CHECK(shipping_prov IN('AB','BC','MB','NS','NT','ON','PE','QC','SK','YT','NL','NB')),
    customer# NUMBER);
rem
ALTER TABLE TIM_order
    ADD CONSTRAINT SYS_O_FK FOREIGN KEY(customer#) REFERENCES TIM_Customer_timber(customer#)
    ADD CONSTRAINT sys_OR_PK PRIMARY KEY(order#);
rem
CREATE TABLE TIM_category(
    category# NUMBER CONSTRAINT SYS_CAT_PK PRIMARY KEY,
    category_description VARCHAR2(50) NOT NULL,
    category_parent# NUMBER CONSTRAINT SYS_PCC_PK REFERENCES TIM_parent_category(parent_category_number)); 
rem 
CREATE TABLE TIM_supplier(
    supplier# NUMBER CONSTRAINT SYS_SUPP_PK PRIMARY KEY,
    supplier_name VARCHAR2(20) NOT NULL,
    supplier_email VARCHAR2(50) NOT NULL
        CONSTRAINT SYS_S_CK CHECK(regexp_like(supplier_email,'[a-zA-Z0-9_\-]+@([a-zA-Z0-9_\-]+\.)+(com|org|edu|nz|au])')),
    CONSTRAINT SYS_SE_UK UNIQUE(supplier_email),
    supplier_prov CHAR(2) NOT NULL
        CONSTRAINT SYS_SUPP_CK CHECK(supplier_prov IN('AB','BC','MB','NS','NT','ON','PE','QC','SK','YT','NL','NB')),
    supplier_city VARCHAR2(20) NOT NULL);
rem
CREATE TABLE TIM_product(
    product# NUMBER CONSTRAINT SYS_PRO_PK PRIMARY KEY,
    product_title VARCHAR2(100) NOT NULL,
    product_description VARCHAR2(500) NOT NULL,
    product_price NUMBER(10,2) NOT NULL
        CONSTRAINT SYS_PP_CK CHECK(product_price > 0),
    product_weight NUMBER(3,2) NOT NULL
        CONSTRAINT SYS_PW_CK CHECK(product_weight > 0),
    istaxexempt CHAR(1) NOT NULL
        CONSTRAINT SYS_TE_CK CHECK(istaxexempt IN (0,1)),
    category# NUMBER CONSTRAINT SYS_PC_PK REFERENCES TIM_category(category#));
rem
CREATE TABLE TIM_product_order(
    order# NUMBER CONSTRAINT SYS_ORDER_PROORDER_FK REFERENCES TIM_order(order#),
    product# NUMBER CONSTRAINT SYS_PRO_PORD_FK REFERENCES TIM_product(product#),
    CONSTRAINT SYS_CUSPRO_PRODOR_PK PRIMARY KEY(order#,product#)
);
CREATE TABLE TIM_product_supplier(
    supplier# NUMBER CONSTRAINT SYS_SPS_PK REFERENCES TIM_supplier(supplier#),
    product# NUMBER CONSTRAINT SYS_PPS_PK REFERENCES TIM_product(product#),
    quantity_on_hand NUMBER NOT NULL,
    days_delivery NUMBER NOT NULL);
rem
ALTER TABLE TIM_product_supplier
    ADD CONSTRAINT SYS_SSPP_PK PRIMARY KEY(supplier#,product#);
CREATE TABLE TIM_product_review(
    review# NUMBER CONSTRAINT SYS_REV_PK PRIMARY KEY,
    rating NUMBER NOT NULL
        CONSTRAINT SYS_RATING_CK CHECK(rating between 1 and 5),
    comments VARCHAR2(500),
    review_date DATE NOT NULL,
    product# NUMBER CONSTRAINT SYS_PPV_PK REFERENCES TIM_product(product#),
    customer# NUMBER CONSTRAINT SYS_CPR_PK REFERENCES TIM_Customer_timber(customer#));
commit;
spool off