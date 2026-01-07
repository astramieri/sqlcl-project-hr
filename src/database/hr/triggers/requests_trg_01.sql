create or replace editionable trigger hr.requests_trg_01 before
    insert or update on hr.requests
    for each row
declare
    v_sysdate date := sysdate;
begin
    if inserting then
        :new.request_id := requests_seq.nextval;
        :new.created := v_sysdate;
    end if;

    :new.updated := v_sysdate;
end requests_trg_01;
/

alter trigger hr.requests_trg_01 enable;


-- sqlcl_snapshot {"hash":"837265ccd2b5df16410542cbce4bedf2cc13c276","type":"TRIGGER","name":"REQUESTS_TRG_01","schemaName":"HR","sxml":""}