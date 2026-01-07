-- liquibase formatted sql
-- changeset HR:1767786269666 stripComments:false  logicalFilePath:ticket-1\hr\sequences\employees_seq.sql
-- sqlcl_snapshot src/database/hr/sequences/employees_seq.sql:null:4dc8a19e97cb725e3505b39433a147889bbe5feb:create

create sequence hr.employees_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ nocache noorder nocycle
nokeep noscale global;

