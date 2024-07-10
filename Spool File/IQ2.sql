SQL> SELECT o.*, oi.order_quantity, oi.order_unitprice FROM Orders o JOIN Orderitems oi ON o.order_id = oi.order_id JOIN Product p ON oi.product_id = p.product_id WHERE p.product_name = 'Samsung OLED TV' AND o.order_date BETWEEN '01-May-2023' AND '28-May-2023';

  ORDER_ID ORDER_DAT ORDER_STATUS              CUSTOMER_ID ORDER_QUANTITY ORDER_UNITPRICE                                                                                                                                                                                                                   
---------- --------- ------------------------- ----------- -------------- ---------------                                                                                                                                                                                                                   
         1 14-MAY-23 Shipped                             3              1            2900                                                                                                                                                                                                                   

SQL> spool off;
