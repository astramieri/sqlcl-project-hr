-- liquibase formatted sql
-- changeset HR:1767786274279 stripComments:false  logicalFilePath:ticket-1\hr\triggers\users_trg_01.sql
-- sqlcl_snapshot src/database/hr/triggers/users_trg_01.sql:null:a53e19269f4fded4fff0a8badeb843c349abd14c:create

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

