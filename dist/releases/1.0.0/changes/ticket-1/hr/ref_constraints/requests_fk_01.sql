-- liquibase formatted sql
-- changeset HR:1767786269399 stripComments:false  logicalFilePath:ticket-1\hr\ref_constraints\requests_fk_01.sql
-- sqlcl_snapshot src/database/hr/ref_constraints/requests_fk_01.sql:null:dc79f8430a81633ca57b25eb446e6854bae19f35:create

alter table hr.requests
    add constraint requests_fk_01
        foreign key ( employee_id )
            references hr.employees ( employee_id )
        enable;

