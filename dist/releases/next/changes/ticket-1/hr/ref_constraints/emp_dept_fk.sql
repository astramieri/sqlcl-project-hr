-- liquibase formatted sql
-- changeset HR:1767786268577 stripComments:false  logicalFilePath:ticket-1\hr\ref_constraints\emp_dept_fk.sql
-- sqlcl_snapshot src/database/hr/ref_constraints/emp_dept_fk.sql:null:d0603b444d843459e663eb0328630adacdc1ef38:create

alter table hr.employees
    add constraint emp_dept_fk
        foreign key ( department_id )
            references hr.departments ( department_id )
        enable;

