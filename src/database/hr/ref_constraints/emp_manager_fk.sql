alter table hr.employees
    add constraint emp_manager_fk
        foreign key ( manager_id )
            references hr.employees ( employee_id )
        enable;


-- sqlcl_snapshot {"hash":"40bd8c7e27274f66d35373f8cf928041c514225d","type":"REF_CONSTRAINT","name":"EMP_MANAGER_FK","schemaName":"HR","sxml":""}