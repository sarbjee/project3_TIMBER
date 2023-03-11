set echo on
spool C:\cprg250s\TIMBER\project3_TIMBER\loadtimberOutput.txt
--- drop table 
DROP TABLE TIM_product_supplier cascade constraints;
DROP TABLE TIM_product cascade constraints;
DROP TABLE TIM_product_review cascade constraints;
DROP TABLE TIM_order cascade constraints;
DROP TABLE TIM_supplier cascade constraints;
DROP TABLE TIM_category cascade constraints;
DROP TABLE TIM_customer cascade constraints;
-- create tables
CREATE TABLE TIM_customer(
    customer_number NUMBER CONSTRAINT SYS_CUST_PK PRIMARY KEY,
    customer_street_address VARCHAR2(20) NOT NULL,
    customer_prov CHAR(2) NOT NULL
        CONSTRAINT SYS_CUP_CK CHECK(customer_prov IN('AB','BC','MB','NS','NT','ON','PE','QC','SK','YT','NL','NB')),
    customer_postal_code CHAR(6) NOT NULL
        CONSTRAINT SYS_CPC_CK CHECK(regexp_like(customer_postal_code,'[A-Z][0-9][A-Z][0-9][A-Z][0-9]')),
    customer_phone CHAR(12) NOT NULL
        CONSTRAINT SYS_CP_CK CHECK (regexp_like(customer_phone,'[0-9]{3}\.[0-9]{3}\.[0-9]{4}')),
    customer_email_address VARCHAR2(20) NOT NULL
        CONSTRAINT SYS_CE_CK CHECK(regexp_like(customer_email_address,'^(?:(?!.*?[.]{2})[a-zA-Z0-9](?:[a-zA-Z0-9.+!%-]{1,64}|)|\"[a-zA-Z0-9.+!% -]{1,64}\")@[a-zA-Z0-9][a-zA-Z0-9.-]+(.[a-z]{2,}|.[0-9]{1,})$')),
    CONSTRAINT sys_UCE_UK UNIQUE(customer_email_address),
    is_timber_member NUMBER(1) NOT NULL
        CONSTRAINT SYS_ISTM_CK CHECK(is_timber_member IN(0,1)));
CREATE TABLE TIM_order(
    order# NUMBER,
    order_date DATE NOT NULL,
    order_delivery_date DATE NOT NULL,
    shipping_amount NUMBER(10,2),
    tax_amount NUMBER(10,2),
    shipping_prov CHAR(2) NOT NULL
        CONSTRAINT SYS_O_CK CHECK(shipping_prov IN('AB','BC','MB','NS','NT','ON','PE','QC','SK','YT','NL','NB')),
    customer_number NUMBER);
ALTER TABLE TIM_order
    ADD CONSTRAINT SYS_O_FK FOREIGN KEY(customer_number) REFERENCES TIM_customer(customer_number);
    
spool off