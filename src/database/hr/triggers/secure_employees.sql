create or replace editionable trigger hr.secure_employees before
    insert or update or delete on hr.employees
begin
    secure_dml;
end secure_employees;
/

alter trigger hr.secure_employees disable;


-- sqlcl_snapshot {"hash":"7a710cc02eef66a9e02cabd5966acd897b78f2c7","type":"TRIGGER","name":"SECURE_EMPLOYEES","schemaName":"HR","sxml":""}