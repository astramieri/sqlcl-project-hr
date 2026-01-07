-- liquibase formatted sql
-- changeset HR:1767786273674 stripComments:false  logicalFilePath:ticket-1\hr\triggers\requests_trg_01.sql
-- sqlcl_snapshot src/database/hr/triggers/requests_trg_01.sql:null:cea549efe6b333dfe833ca8a1f05f88e29967ad7:create

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

