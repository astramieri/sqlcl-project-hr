-- liquibase formatted sql
-- changeset HR:1767786268924 stripComments:false  logicalFilePath:ticket-1\hr\ref_constraints\jhist_dept_fk.sql
-- sqlcl_snapshot src/database/hr/ref_constraints/jhist_dept_fk.sql:null:64b16c064ab552f4c83fdc064bcb7cb71fae69ad:create

alter table hr.job_history
    add constraint jhist_dept_fk
        foreign key ( department_id )
            references hr.departments ( department_id )
        enable;

