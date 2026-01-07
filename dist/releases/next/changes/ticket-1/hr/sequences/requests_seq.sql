-- liquibase formatted sql
-- changeset HR:1767786269943 stripComments:false  logicalFilePath:ticket-1\hr\sequences\requests_seq.sql
-- sqlcl_snapshot src/database/hr/sequences/requests_seq.sql:null:b6d5edcd1a556bfc5065df34843a42d27e671b04:create

create sequence hr.requests_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ nocache noorder nocycle
nokeep noscale global;

