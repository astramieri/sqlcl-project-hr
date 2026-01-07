alter table hr.job_history
    add constraint jhist_job_fk
        foreign key ( job_id )
            references hr.jobs ( job_id )
        enable;


-- sqlcl_snapshot {"hash":"7d2d6bce105b82c93498400fdda0215b85ea9737","type":"REF_CONSTRAINT","name":"JHIST_JOB_FK","schemaName":"HR","sxml":""}