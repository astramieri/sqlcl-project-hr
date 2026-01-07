-- liquibase formatted sql
-- changeset HR:1767786266855 stripComments:false  logicalFilePath:ticket-1\hr\indexes\emp_manager_ix.sql
-- sqlcl_snapshot src/database/hr/indexes/emp_manager_ix.sql:null:9cfb68f5503800a714bbf433b6690131b962059d:create

create index hr.emp_manager_ix on
    hr.employees (
        manager_id
    );

