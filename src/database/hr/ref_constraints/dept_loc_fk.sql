alter table hr.departments
    add constraint dept_loc_fk
        foreign key ( location_id )
            references hr.locations ( location_id )
        enable;


-- sqlcl_snapshot {"hash":"7753fe10ac301663f95b1a5d034c1582bdc2ed09","type":"REF_CONSTRAINT","name":"DEPT_LOC_FK","schemaName":"HR","sxml":""}