create sequence hr.locations_seq minvalue 1 maxvalue 9900 increment by 100 /* start with n */ nocache noorder nocycle nokeep noscale global
;


-- sqlcl_snapshot {"hash":"fe693be81f156b922f880e5ae787c8abe02a074b","type":"SEQUENCE","name":"LOCATIONS_SEQ","schemaName":"HR","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>HR</SCHEMA>\n   <NAME>LOCATIONS_SEQ</NAME>\n   \n   <INCREMENT>100</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>9900</MAXVALUE>\n   <CACHE>0</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}