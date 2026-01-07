-- liquibase formatted sql
-- changeset HR:1767786266726 stripComments:false  logicalFilePath:ticket-1\hr\indexes\emp_job_ix.sql
-- sqlcl_snapshot src/database/hr/indexes/emp_job_ix.sql:null:397e4c1e520a79eba9064262557502b083df1dc7:create

create index hr.emp_job_ix on
    hr.employees (
        job_id
    );

