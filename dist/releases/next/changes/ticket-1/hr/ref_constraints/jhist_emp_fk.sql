-- liquibase formatted sql
-- changeset HR:1767786269026 stripComments:false  logicalFilePath:ticket-1\hr\ref_constraints\jhist_emp_fk.sql
-- sqlcl_snapshot src/database/hr/ref_constraints/jhist_emp_fk.sql:null:1d96d3e1b50a60a9afd99d260a01b834eb2cca4c:create

alter table hr.job_history
    add constraint jhist_emp_fk
        foreign key ( employee_id )
            references hr.employees ( employee_id )
        enable;

