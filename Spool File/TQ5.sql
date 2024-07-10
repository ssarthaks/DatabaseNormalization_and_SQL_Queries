SQL> SELECT customer_id, customer_name, address, customer_phone, total_spending FROM (SELECT c.customer_id, c.customer_name, c.address, c.customer_phone, SUM(oi.order_quantity * oi.order_unitprice) AS total_spending, RANK() OVER (ORDER BY SUM(oi.order_quantity * oi.order_unitprice) DESC) AS rnk FROM Customer c JOIN Orders o ON c.customer_id = o.customer_id JOIN Orderitems oi ON o.order_id = oi.order_id WHERE TO_CHAR(o.order_date, 'MM') = '08' GROUP BY c.customer_id, c.customer_name, c.address, c.customer_phone) WHERE rnk = 1;

CUSTOMER_ID CUSTOMER_NAME             ADDRESS                                            CUSTOMER_PHONE  TOTAL_SPENDING                                                                                                                                                                                     
----------- ------------------------- -------------------------------------------------- --------------- --------------                                                                                                                                                                                     
          5 Ram Lama                  Kakani                                             9817864572                6550                                                                                                                                                                                     

SQL> spool off;
