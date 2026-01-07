alter table hr.locations
    add constraint loc_c_id_fk
        foreign key ( country_id )
            references hr.countries ( country_id )
        enable;


-- sqlcl_snapshot {"hash":"22af5cb54c626fa04ed6ae8b3da6486d8e4960b1","type":"REF_CONSTRAINT","name":"LOC_C_ID_FK","schemaName":"HR","sxml":""}