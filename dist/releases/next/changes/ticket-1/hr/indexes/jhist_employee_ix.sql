-- liquibase formatted sql
-- changeset HR:1767786267211 stripComments:false  logicalFilePath:ticket-1\hr\indexes\jhist_employee_ix.sql
-- sqlcl_snapshot src/database/hr/indexes/jhist_employee_ix.sql:null:953335b1557db03a52c4787a210d51b01da067b4:create

create index hr.jhist_employee_ix on
    hr.job_history (
        employee_id
    );

