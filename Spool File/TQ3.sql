SQL> SELECT vn.vendor_id, vn.vendor_name, vn.vendor_phone FROM Vendor vn WHERE vn.vendor_id IN (SELECT p.vendor_id FROM Product p GROUP BY p.vendor_id HAVING COUNT(p.product_id) > 3);

 VENDOR_ID VENDOR_NAME               VENDOR_PHONE                                                                                                                                                                                                                                                           
---------- ------------------------- ---------------                                                                                                                                                                                                                                                        
         3 MSI                       9843775663                                                                                                                                                                                                                                                             

SQL> spool off;
