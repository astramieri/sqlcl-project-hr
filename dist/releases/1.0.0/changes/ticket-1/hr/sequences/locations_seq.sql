-- liquibase formatted sql
-- changeset HR:1767786269804 stripComments:false  logicalFilePath:ticket-1\hr\sequences\locations_seq.sql
-- sqlcl_snapshot src/database/hr/sequences/locations_seq.sql:null:fe693be81f156b922f880e5ae787c8abe02a074b:create

create sequence hr.locations_seq minvalue 1 maxvalue 9900 increment by 100 /* start with n */ nocache noorder nocycle nokeep noscale global
;

