-- liquibase formatted sql
-- changeset HR:1767786268715 stripComments:false  logicalFilePath:ticket-1\hr\ref_constraints\emp_job_fk.sql
-- sqlcl_snapshot src/database/hr/ref_constraints/emp_job_fk.sql:null:582f7740d154e4659892749e16bba9b6c37146e4:create

alter table hr.employees
    add constraint emp_job_fk
        foreign key ( job_id )
            references hr.jobs ( job_id )
        enable;

