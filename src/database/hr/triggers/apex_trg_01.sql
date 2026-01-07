create or replace editionable trigger hr.apex_trg_01 before
    insert or update on hr.apex
    for each row
declare
    v_systimestamp timestamp := systimestamp;
begin
    if inserting then
        :new.created := v_systimestamp;
    end if;
    :new.updated := v_systimestamp;
end apex_trg_01;
/

alter trigger hr.apex_trg_01 enable;


-- sqlcl_snapshot {"hash":"b5cbc46b2277bb31f103cf37f8b812c3e9cedbf9","type":"TRIGGER","name":"APEX_TRG_01","schemaName":"HR","sxml":""}