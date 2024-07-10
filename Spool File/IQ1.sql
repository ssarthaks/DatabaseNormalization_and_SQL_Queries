SQL> SELECT c.*, cc.customercategory FROM Customer c JOIN Customercategory cc ON c.customercategory_id = cc.customercategory_id WHERE cc.customercategory = 'Staff(S)';

CUSTOMER_ID CUSTOMER_NAME             ADDRESS                                            CUSTOMER_PHONE  CUSTOMERCATEGORY_ID CUSTOMERCATEGORY                                                                                                                                                               
----------- ------------------------- -------------------------------------------------- --------------- ------------------- --------------------                                                                                                                                                           
          1 John Smith                Baluwatar                                          9812345612                        2 Staff(S)                                                                                                                                                                       
          4 Sandeep Lama              Koteshwor                                          9814576872                        2 Staff(S)                                                                                                                                                                       
          6 Aayush Singh              Putalisadak                                        9898767892                        2 Staff(S)                                                                                                                                                                       
          7 Arijit Maharjan           Rani Pokhari                                       9683456782                        2 Staff(S)                                                                                                                                                                       

SQL> spool off;
