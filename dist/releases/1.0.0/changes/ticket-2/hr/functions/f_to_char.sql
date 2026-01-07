-- liquibase formatted sql
-- changeset HR:1767794570698 stripComments:false  logicalFilePath:ticket-2\hr\functions\f_to_char.sql
-- sqlcl_snapshot src/database/hr/functions/f_to_char.sql:null:9b13d3fb07ee41667aec57b3c18396b7449977b0:create

create or replace function hr.f_to_char (
    p_number in number
) return varchar2 as
begin
    return to_char(p_number);
end f_to_char;
/

