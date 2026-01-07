alter table hr.employees
    add constraint emp_dept_fk
        foreign key ( department_id )
            references hr.departments ( department_id )
        enable;


-- sqlcl_snapshot {"hash":"d0603b444d843459e663eb0328630adacdc1ef38","type":"REF_CONSTRAINT","name":"EMP_DEPT_FK","schemaName":"HR","sxml":""}