create sequence hr.departments_seq minvalue 1 maxvalue 9990 increment by 10 /* start with n */ nocache noorder nocycle nokeep noscale
global;


-- sqlcl_snapshot {"hash":"ca969c16fc8260ec1bbcec8d399ca66b96e44693","type":"SEQUENCE","name":"DEPARTMENTS_SEQ","schemaName":"HR","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>HR</SCHEMA>\n   <NAME>DEPARTMENTS_SEQ</NAME>\n   \n   <INCREMENT>10</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>9990</MAXVALUE>\n   <CACHE>0</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}