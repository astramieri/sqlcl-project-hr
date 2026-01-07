-- liquibase formatted sql
-- changeset HR:1767786268444 stripComments:false  logicalFilePath:ticket-1\hr\ref_constraints\dept_mgr_fk.sql
-- sqlcl_snapshot src/database/hr/ref_constraints/dept_mgr_fk.sql:null:8eb72c1421b9bf33b68969455c69c23958c7a94e:create

alter table hr.departments
    add constraint dept_mgr_fk
        foreign key ( manager_id )
            references hr.employees ( employee_id )
        enable;

