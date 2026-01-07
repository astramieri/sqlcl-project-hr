alter table hr.employees
    add constraint emp_job_fk
        foreign key ( job_id )
            references hr.jobs ( job_id )
        enable;


-- sqlcl_snapshot {"hash":"582f7740d154e4659892749e16bba9b6c37146e4","type":"REF_CONSTRAINT","name":"EMP_JOB_FK","schemaName":"HR","sxml":""}