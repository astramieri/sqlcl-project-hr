alter table hr.job_history
    add constraint jhist_dept_fk
        foreign key ( department_id )
            references hr.departments ( department_id )
        enable;


-- sqlcl_snapshot {"hash":"64b16c064ab552f4c83fdc064bcb7cb71fae69ad","type":"REF_CONSTRAINT","name":"JHIST_DEPT_FK","schemaName":"HR","sxml":""}