-- liquibase formatted sql
-- changeset HR:1767786269525 stripComments:false  logicalFilePath:ticket-1\hr\sequences\departments_seq.sql
-- sqlcl_snapshot src/database/hr/sequences/departments_seq.sql:null:ca969c16fc8260ec1bbcec8d399ca66b96e44693:create

create sequence hr.departments_seq minvalue 1 maxvalue 9990 increment by 10 /* start with n */ nocache noorder nocycle nokeep noscale
global;

