SQL> SELECT o.order_id, TO_CHAR(o.order_date, 'DD-Mon-YYYY') AS order_date, o.order_status, SUM(oi.order_quantity * oi.order_unitprice) AS order_total FROM Orders o JOIN Orderitems oi ON o.order_id = oi.order_id GROUP BY o.order_id, o.order_date, o.order_status HAVING SUM(oi.order_quantity * oi.order_unitprice) >= (SELECT AVG(order_total) FROM (SELECT SUM(oi.order_quantity * oi.order_unitprice) AS order_total FROM Orders o JOIN Orderitems oi ON o.order_id = oi.order_id GROUP BY o.order_id));

  ORDER_ID ORDER_DATE           ORDER_STATUS              ORDER_TOTAL                                                                                                                                                                                                                                       
---------- -------------------- ------------------------- -----------                                                                                                                                                                                                                                       
         5 16-Aug-2023          Shipped                          5800                                                                                                                                                                                                                                       
         7 29-Mar-2023          Shipped                          5900                                                                                                                                                                                                                                       
         8 12-Jan-2024          Pending                          6750                                                                                                                                                                                                                                       
         1 14-May-2023          Shipped                          5150                                                                                                                                                                                                                                       

SQL> spool off;
