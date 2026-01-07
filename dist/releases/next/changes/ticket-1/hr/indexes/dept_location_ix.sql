-- liquibase formatted sql
-- changeset HR:1767786266496 stripComments:false  logicalFilePath:ticket-1\hr\indexes\dept_location_ix.sql
-- sqlcl_snapshot src/database/hr/indexes/dept_location_ix.sql:null:6a055986d1b70ca9ef4e67c23b628d66fac5f1c0:create

create index hr.dept_location_ix on
    hr.departments (
        location_id
    );

