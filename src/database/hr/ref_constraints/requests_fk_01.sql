alter table hr.requests
    add constraint requests_fk_01
        foreign key ( employee_id )
            references hr.employees ( employee_id )
        enable;


-- sqlcl_snapshot {"hash":"dc79f8430a81633ca57b25eb446e6854bae19f35","type":"REF_CONSTRAINT","name":"REQUESTS_FK_01","schemaName":"HR","sxml":""}