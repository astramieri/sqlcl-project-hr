-- liquibase formatted sql
-- changeset HR:1767786273884 stripComments:false  logicalFilePath:ticket-1\hr\triggers\secure_employees.sql
-- sqlcl_snapshot src/database/hr/triggers/secure_employees.sql:null:392fe7c3a6713bb99e84c2996310eed8b93f60ef:create

create or replace editionable trigger hr.secure_employees before
    insert or update or delete on hr.employees
begin
    secure_dml;
end secure_employees;
/

alter trigger hr.secure_employees disable;

