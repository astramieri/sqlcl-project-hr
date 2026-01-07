-- liquibase formatted sql
-- changeset HR:1767786267922 stripComments:false  logicalFilePath:ticket-1\hr\procedures\insert_log.sql
-- sqlcl_snapshot src/database/hr/procedures/insert_log.sql:null:154fa943d7ba4dd14a5355910bc525962e3eb3c8:create

create or replace procedure hr.insert_log (
    p_message in varchar2
) is
    pragma autonomous_transaction;
begin
    insert into log ( log_message ) values ( p_message );

    commit;
exception
    when others then
        rollback;
        raise;
end insert_log;
/

