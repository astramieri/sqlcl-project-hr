-- liquibase formatted sql
-- changeset HR:1767786266983 stripComments:false  logicalFilePath:ticket-1\hr\indexes\emp_name_ix.sql
-- sqlcl_snapshot src/database/hr/indexes/emp_name_ix.sql:null:0916d649f8b124fbabe6c7a4748b8a361262b689:create

create index hr.emp_name_ix on
    hr.employees (
        last_name,
        first_name
    );

