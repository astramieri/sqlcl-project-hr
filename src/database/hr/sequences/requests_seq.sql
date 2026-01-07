create sequence hr.requests_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ nocache noorder nocycle
nokeep noscale global;


-- sqlcl_snapshot {"hash":"b6d5edcd1a556bfc5065df34843a42d27e671b04","type":"SEQUENCE","name":"REQUESTS_SEQ","schemaName":"HR","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>HR</SCHEMA>\n   <NAME>REQUESTS_SEQ</NAME>\n   \n   <INCREMENT>1</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>9999999999999999999999999999</MAXVALUE>\n   <CACHE>0</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}