-- liquibase formatted sql
-- changeset HR:1767786269163 stripComments:false  logicalFilePath:ticket-1\hr\ref_constraints\jhist_job_fk.sql
-- sqlcl_snapshot src/database/hr/ref_constraints/jhist_job_fk.sql:null:7d2d6bce105b82c93498400fdda0215b85ea9737:create

alter table hr.job_history
    add constraint jhist_job_fk
        foreign key ( job_id )
            references hr.jobs ( job_id )
        enable;

