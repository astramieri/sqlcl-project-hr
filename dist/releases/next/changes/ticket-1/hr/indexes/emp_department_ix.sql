-- liquibase formatted sql
-- changeset HR:1767786266597 stripComments:false  logicalFilePath:ticket-1\hr\indexes\emp_department_ix.sql
-- sqlcl_snapshot src/database/hr/indexes/emp_department_ix.sql:null:91079e564474cfce3c3eadfad63f59723065cf2c:create

create index hr.emp_department_ix on
    hr.employees (
        department_id
    );

