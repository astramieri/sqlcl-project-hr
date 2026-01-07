alter table hr.job_history
    add constraint jhist_emp_fk
        foreign key ( employee_id )
            references hr.employees ( employee_id )
        enable;


-- sqlcl_snapshot {"hash":"1d96d3e1b50a60a9afd99d260a01b834eb2cca4c","type":"REF_CONSTRAINT","name":"JHIST_EMP_FK","schemaName":"HR","sxml":""}