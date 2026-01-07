create or replace editionable trigger hr.users_trg_01 before
    insert or update on hr.users
    for each row
declare
    v_systimestamp timestamp := systimestamp;
begin
    if inserting then
        :new.created := v_systimestamp;
    end if;
    :new.updated := v_systimestamp;
end users_trg_01;
/

alter trigger hr.users_trg_01 enable;


-- sqlcl_snapshot {"hash":"eab54bc4a91cbc5a16218524cc3339b82b1abb48","type":"TRIGGER","name":"USERS_TRG_01","schemaName":"HR","sxml":""}