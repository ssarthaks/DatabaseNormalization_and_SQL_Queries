SQL> SELECT * FROM (SELECT c.*, o.order_id, o.order_date, o.order_status FROM Customer c JOIN Orders o ON c.customer_id = o.customer_id ORDER BY o.order_date DESC) WHERE ROWNUM <= 1;

CUSTOMER_ID CUSTOMER_NAME             ADDRESS                                            CUSTOMER_PHONE  CUSTOMERCATEGORY_ID   ORDER_ID ORDER_DAT ORDER_STATUS                                                                                                                                              
----------- ------------------------- -------------------------------------------------- --------------- ------------------- ---------- --------- -------------------------                                                                                                                                 
          4 Sandeep Lama              Koteshwor                                          9814576872                        2          8 12-JAN-24 Pending                                                                                                                                                   

SQL> spool off;
