SQL> SELECT * FROM Product WHERE SUBSTR(product_name, 2, 1) = 'a' AND product_stock > 50;

PRODUCT_ID PRODUCT_NAME              PRODUCT_DESCRIPTION                                PRODUCT_PRICE PRODUCT_STOCK  VENDOR_ID PRODUCTCATEGORY_ID                                                                                                                                                           
---------- ------------------------- -------------------------------------------------- ------------- ------------- ---------- ------------------                                                                                                                                                           
         9 Samsung OLED TV           70 inch 8K OLED TV                                          2900            72          4                  7                                                                                                                                                           

SQL> spool off;
