create sequence hr.employees_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ nocache noorder nocycle
nokeep noscale global;


-- sqlcl_snapshot {"hash":"4dc8a19e97cb725e3505b39433a147889bbe5feb","type":"SEQUENCE","name":"EMPLOYEES_SEQ","schemaName":"HR","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>HR</SCHEMA>\n   <NAME>EMPLOYEES_SEQ</NAME>\n   \n   <INCREMENT>1</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>9999999999999999999999999999</MAXVALUE>\n   <CACHE>0</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}