-- liquibase formatted sql
-- changeset HR:1767786267100 stripComments:false  logicalFilePath:ticket-1\hr\indexes\jhist_department_ix.sql
-- sqlcl_snapshot src/database/hr/indexes/jhist_department_ix.sql:null:80fe739869473a681a7c29b53cb450d75115f2fd:create

create index hr.jhist_department_ix on
    hr.job_history (
        department_id
    );

