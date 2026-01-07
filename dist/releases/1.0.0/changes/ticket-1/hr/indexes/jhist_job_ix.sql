-- liquibase formatted sql
-- changeset HR:1767786267313 stripComments:false  logicalFilePath:ticket-1\hr\indexes\jhist_job_ix.sql
-- sqlcl_snapshot src/database/hr/indexes/jhist_job_ix.sql:null:6e5ccccf8f1814fffd9e0ce1d1b87fdc5d479acc:create

create index hr.jhist_job_ix on
    hr.job_history (
        job_id
    );

