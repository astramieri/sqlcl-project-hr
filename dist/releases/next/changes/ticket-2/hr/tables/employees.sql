-- liquibase formatted sql
-- changeset HR:1767794035731 stripComments:false  logicalFilePath:ticket-2\hr\tables\employees.sql
-- sqlcl_snapshot src/database/hr/tables/employees.sql:148b11b632ff078a1d2e4f8e0aa8a22fbff2a650:5559132f7eab0d5d31c28c501c6373b692fdda4d:alter

alter table hr.employees add (
    bonus number(8, 2)
)
/

