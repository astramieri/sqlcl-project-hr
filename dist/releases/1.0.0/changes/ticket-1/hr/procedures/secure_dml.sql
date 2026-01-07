-- liquibase formatted sql
-- changeset HR:1767786268025 stripComments:false  logicalFilePath:ticket-1\hr\procedures\secure_dml.sql
-- sqlcl_snapshot src/database/hr/procedures/secure_dml.sql:null:83ef4dc6f5a9980a931022ed0280c4382ed1757f:create

create or replace procedure hr.secure_dml is
begin
    if to_char(sysdate, 'HH24:MI') not between '08:00' and '18:00'
       or to_char(sysdate, 'DY') in ( 'SAT', 'SUN' ) then
        raise_application_error(-20205, 'You may only make changes during normal office hours');
    end if;
end secure_dml;
/

