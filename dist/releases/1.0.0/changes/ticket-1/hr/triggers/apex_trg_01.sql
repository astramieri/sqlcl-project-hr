-- liquibase formatted sql
-- changeset HR:1767786273424 stripComments:false  logicalFilePath:ticket-1\hr\triggers\apex_trg_01.sql
-- sqlcl_snapshot src/database/hr/triggers/apex_trg_01.sql:null:5735a5fb30c75c3254098fa6b70b52aa7bc3a53a:create

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

