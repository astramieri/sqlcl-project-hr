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


-- sqlcl_snapshot {"hash":"154fa943d7ba4dd14a5355910bc525962e3eb3c8","type":"PROCEDURE","name":"INSERT_LOG","schemaName":"HR","sxml":""}