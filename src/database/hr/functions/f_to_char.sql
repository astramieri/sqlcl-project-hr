create or replace function hr.f_to_char (
    p_number in number
) return varchar2 as
begin
    return to_char(p_number);
end f_to_char;
/


-- sqlcl_snapshot {"hash":"9b13d3fb07ee41667aec57b3c18396b7449977b0","type":"FUNCTION","name":"F_TO_CHAR","schemaName":"HR","sxml":""}