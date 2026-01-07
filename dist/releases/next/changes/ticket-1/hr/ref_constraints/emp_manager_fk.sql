-- liquibase formatted sql
-- changeset HR:1767786268821 stripComments:false  logicalFilePath:ticket-1\hr\ref_constraints\emp_manager_fk.sql
-- sqlcl_snapshot src/database/hr/ref_constraints/emp_manager_fk.sql:null:40bd8c7e27274f66d35373f8cf928041c514225d:create

alter table hr.employees
    add constraint emp_manager_fk
        foreign key ( manager_id )
            references hr.employees ( employee_id )
        enable;

