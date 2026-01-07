alter table hr.departments
    add constraint dept_mgr_fk
        foreign key ( manager_id )
            references hr.employees ( employee_id )
        enable;


-- sqlcl_snapshot {"hash":"8eb72c1421b9bf33b68969455c69c23958c7a94e","type":"REF_CONSTRAINT","name":"DEPT_MGR_FK","schemaName":"HR","sxml":""}