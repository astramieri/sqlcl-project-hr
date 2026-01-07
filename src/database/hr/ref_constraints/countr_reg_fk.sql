alter table hr.countries
    add constraint countr_reg_fk
        foreign key ( region_id )
            references hr.regions ( region_id )
        enable;


-- sqlcl_snapshot {"hash":"cd645bb78c0bf0280ccde8abd8b719cf39f96368","type":"REF_CONSTRAINT","name":"COUNTR_REG_FK","schemaName":"HR","sxml":""}