-- liquibase formatted sql
-- changeset HR:1767786270045 stripComments:false  logicalFilePath:ticket-1\hr\sequences\users_seq.sql
-- sqlcl_snapshot src/database/hr/sequences/users_seq.sql:null:f3f45216fcad7d505a766784d7f1c6d399cd5aae:create

create sequence hr.users_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ nocache noorder nocycle
nokeep noscale global;

